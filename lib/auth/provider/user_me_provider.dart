import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:podo_darae_lab/auth/model/user_model.dart';
import 'package:podo_darae_lab/auth/provider/secure_storage_provider.dart';
import 'package:podo_darae_lab/auth/repository/auth_repository.dart';
import 'package:podo_darae_lab/auth/repository/user_me_repository.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/common/device/device_manager.dart';
import 'package:podo_darae_lab/common/fcm/fcm_manager.dart';
import 'package:podo_darae_lab/common/model/fcm_model.dart';
import 'package:podo_darae_lab/common/provider/room_id_provider.dart';
import 'package:podo_darae_lab/common/repository/fcm_repository.dart';
import 'package:podo_darae_lab/common/utilities/data_utillities.dart';
import 'package:podo_darae_lab/home/model/weather_model.dart';
import 'package:podo_darae_lab/home/provider/device_provider.dart';
import 'package:podo_darae_lab/home/provider/gateway_provider.dart';
import 'package:podo_darae_lab/home/provider/temp_socket_provider.dart';
import 'package:podo_darae_lab/home/weather/provider/weather_provider.dart';

final userMeProvider =
    StateNotifierProvider<UserMeStateNotifier, UserModelBase?>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  final userMeRepository = ref.watch(userMeRepositoryProvider);
  final storage = ref.watch(secureStorageProvider);
  final fcm = ref.watch(fcmRepositoryProvider);
  return UserMeStateNotifier(
    repository: userMeRepository,
    authRepository: authRepository,
    storage: storage,
    fcm: fcm,
    ref: ref,
  );
});

class UserMeStateNotifier extends StateNotifier<UserModelBase?> {
  final AuthRepository authRepository;
  final UserMeRepository repository;
  final FlutterSecureStorage storage;
  final FcmRepository fcm;
  Ref ref;
  Timer? _timer;
  UserMeStateNotifier(
      {required this.repository,
      required this.authRepository,
      required this.storage,
      required this.ref,
      required this.fcm})
      : super(UserModelLoading()) {
    getMe();
  }

  Future<void> getMe() async {
    final refreshToken = await storage.read(key: REFRESH_TOKEN_KEY);
    final accessToken = await storage.read(key: ACCESS_TOKEN_KEY);
    final autoLogin = await storage.read(key: AUTO_LOGIN);
    final expiredToken = await storage.read(key: EXPIRE_DATE);

    if (refreshToken == null || accessToken == null || autoLogin == null) {
      state = null;
      return;
    }
    if (autoLogin == 'true' && expiredToken != null) {
      final expiredDate = DateTime.parse(expiredToken);
      final now = DateTime.now();

      Duration diff = now.difference(expiredDate);

      /// expiredToken에 기록된 날짜가 오늘 날짜와 50일 이상 차이난다면
      /// 기존 expiredToken과 refreshToken을 새로 발급한다.
      /// 추가적으로 60일이 넘어갈경우 자동으로 로그아웃되게 처리한다.
      if (diff.inDays >= 60) {
        await logout();
        return;
      } else if (diff.inDays >= 50) {
        final resp = await authRepository.refreshToken();
        await storage.write(key: REFRESH_TOKEN_KEY, value: resp.refreshToken);
        await storage.write(key: EXPIRE_DATE, value: now.toIso8601String());
      }
    } else {
      state = null;
      return;
    }
    try {
      final resp = await repository.getMe();
      await Future.delayed(const Duration(milliseconds: 10));

      final newAccessToken = await storage.read(key: ACCESS_TOKEN_KEY);

      if (newAccessToken == null) {
        state = null;
        return;
      }

      await socketConnection(resp, newAccessToken);
      await fetchFirebaseToken();

      state = resp;

      Future.delayed(Duration.zero);

      await getWeatherData();
    } catch (e) {
      log(e.toString());
      state = UserModelError(message: '로그인에 실패했습니다.');
    }
  }

  Future<void> socketConnection(UserModel resp, String accessToken) async {
    try {
      var roomId = await storage.read(key: ROOM_ID);
      log('userModel: $resp');
      if (roomId == null) {
        final gatewayList = resp.gateways
            .map((e) => '${e.countryId}${e.areaId}${e.gatewayId}')
            .toList();

        await storage.write(key: ROOM_ID, value: gatewayList.first);

        roomId = gatewayList.first;
      }

      // log('accessToken: $accessToken');

      // log('roomId:$roomId');
      ref.read(roomIdProvider.notifier).setRoomId(roomId);

      final gateway = resp.gateways.firstWhere(
          (e) => '${e.countryId}${e.areaId}${e.gatewayId}' == roomId);

      ref.read(gatewayProvider.notifier).setGateway(gateway);

      await ref.read(deviceProvider.notifier).getDeviceList(roomId);

      // ref
      //     .read(socketProvider.notifier)
      //     .connect(token: accessToken, roomId: roomId);
      ref
          .read(tempSocketProvider.notifier)
          .connect(token: accessToken, roomId: roomId);
    } catch (e, st) {
      log(e.toString());
      log(st.toString());
    }
  }

  Future<void> getWeatherData() async {
    try {
      await ref.read(weatherProvider.notifier).fetchWeather().then((value) {
        disposeTimer();
        _timer = Timer.periodic(
          const Duration(hours: 1),
          (timer) async {
            await ref.read(weatherProvider.notifier).fetchWeather();
          },
        );
      });
    } catch (e) {
      log('$e');
    }
  }

  Future<WeatherModel> fetchWeatherAddress(String address) async {
    try {
      final encodedAddress = Uri.encodeComponent(address);
      return await repository.getWeather(encodedAddress);
    } catch (e) {
      log(e.toString());
      throw Exception('주소정보 에러');
    }
  }

  Future<void> fetchFirebaseToken() async {
    final firebaseToken = await FcmManager.getToken();

    final clientInfo = await DeviceManager.initialize();

    if (firebaseToken != '' && clientInfo != '') {
      final model = FCMModel(token: firebaseToken, clientInfo: clientInfo);

      try {
        final success = await fcm.setFirebaseToken(model.toJson());
        if (success.message == '토큰 저장 실패') {
          DataUtillities.toast(message: '토큰 등록에 실패했습니다.');
        } else {
          print('토큰 등록에 성공했습니다.');
        }
      } catch (e) {
        log(e.toString());
      }
    }
  }

  void disposeTimer() {
    _timer?.cancel();
  }

  Future<UserModelBase> login({
    required String username,
    required String password,
    required bool autoLogin,
  }) async {
    try {
      if (username == '' || password == '') {
        DataUtillities.toast(message: '아이디 또는 비밀번호를 확인해주세요.');
        throw Exception();
      }

      state = UserModelLoading();

      final resp = await authRepository.login(
        username: username,
        password: password,
      );
      await storage.write(key: REFRESH_TOKEN_KEY, value: resp.refreshToken);
      await storage.write(key: ACCESS_TOKEN_KEY, value: resp.accessToken);

      if (autoLogin) {
        await storage.write(key: AUTO_LOGIN, value: autoLogin.toString());
        // refresh토큰의 만료기간을 체크하기 위한 날짜 저장
        await storage.write(
            key: EXPIRE_DATE, value: DateTime.now().toIso8601String());
      }

      final userResp = await repository.getMe();

      // 여기서 게이트웨이, 디바이스 정보를 가져와야한다.

      await socketConnection(userResp, resp.accessToken);

      await fetchFirebaseToken();

      state = userResp;

      Future.delayed(Duration.zero);

      await getWeatherData();

      return userResp;
    } catch (e) {
      state = UserModelError(message: '로그인에 실패했습니다.');

      return Future.value(state);
    }
  }

  Future<void> logout() async {
    state = null;

    final roomId = await storage.read(key: ROOM_ID);

    // ref.read(socketProvider.notifier).disconnect(roomId: roomId!);
    ref.read(tempSocketProvider.notifier).disconnect(roomId: roomId!);

    await deleteFirebaseToken(false);

    Future.wait([
      storage.delete(key: REFRESH_TOKEN_KEY),
      storage.delete(key: ACCESS_TOKEN_KEY),
      storage.delete(key: EXPIRE_DATE),
      storage.delete(key: AUTO_LOGIN),
      storage.delete(key: ROOM_ID),
    ]);
  }

  Future<void> deleteFirebaseToken(bool isTurnOff) async {
    await FcmManager.deleteToken();

    final firebaseToken = await FcmManager.getToken();

    final clientInfo = await DeviceManager.initialize();

    if (firebaseToken != '' && clientInfo != '') {
      final model = FCMModel(token: firebaseToken, clientInfo: clientInfo);
      final success = await fcm.deleteFirebaseToken(model.toJson());
      if (success.message == '토큰 삭제 성공' && isTurnOff == true) {
        DataUtillities.toast(message: '푸시알림 설정이 해제되었습니다.');
      }
    }
  }
}
