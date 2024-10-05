import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/common/dio/dio.dart';
import 'package:podo_darae_lab/common/model/fcm_req_model.dart';
import 'package:retrofit/retrofit.dart';

part 'fcm_repository.g.dart';

final fcmRepositoryProvider = Provider((ref) {
  final dio = ref.watch(dioProvider);
  return FcmRepository(dio, baseUrl: 'http://$ip/firebase');
});

@RestApi()
abstract class FcmRepository {
  factory FcmRepository(Dio dio, {String baseUrl}) = _FcmRepository;

  @POST('/')
  @Headers({
    'accessToken': 'true',
  })
  Future<FcmReqModel> setFirebaseToken(
    @Body() Map<String, dynamic> body,
  );

  @DELETE('/')
  @Headers({
    'accessToken': 'true',
  })
  Future<FcmReqModel> deleteFirebaseToken(
    @Body() Map<String, dynamic> body,
  );
}
