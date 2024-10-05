import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/auth/model/login_response_model.dart';
import 'package:podo_darae_lab/auth/model/refresh_response_model.dart';
import 'package:podo_darae_lab/auth/model/token_response_model.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/common/dio/dio.dart';
import 'package:podo_darae_lab/common/utilities/data_utillities.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return AuthRepository(
    baseUrl: 'http://$ip/auth',
    dio: dio,
  );
});

class AuthRepository {
  final Dio dio;
  final String baseUrl;
  AuthRepository({
    required this.dio,
    required this.baseUrl,
  });

  Future<LoginResponseModel> login({
    required String username,
    required String password,
  }) async {
    try {
      final serialized = DataUtillities.plainToBase64('$username:$password');
      // log('Basic $serialized');
      final resp = await dio.post(
        '$baseUrl/login/email',
        options: Options(
          headers: {
            'Authorization': 'Basic $serialized',
          },
        ),
      );
      return LoginResponseModel.fromJson(resp.data);
    } catch (e) {
      DataUtillities.toast(message: '아이디 또는 비밀번호를 확인해주세요.');
      throw Exception();
    }
  }

  Future<TokenResponseModel> accessToken() async {
    final resp = await dio.post(
      '$baseUrl/token/access',
      options: Options(
        headers: {
          'refreshToken': 'true',
        },
      ),
    );
    return TokenResponseModel.fromJson(resp.data);
  }

  Future<RefreshResponseModel> refreshToken() async {
    final resp = await dio.post(
      '$baseUrl/token/refresh',
      options: Options(
        headers: {
          'refreshToken': 'true',
        },
      ),
    );
    return RefreshResponseModel.fromJson(resp.data);
  }
}
