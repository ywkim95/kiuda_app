import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/common/dio/dio.dart';
import 'package:podo_darae_lab/common/model/cursor_pagination_model.dart';
import 'package:podo_darae_lab/common/model/pagination_params.dart';
import 'package:podo_darae_lab/common/repository/base_pagination_repository.dart';
import 'package:podo_darae_lab/notification/model/notification_model.dart';
import 'package:retrofit/retrofit.dart';

part 'notification_repository.g.dart';

final notificationRepositoryProvider =
    Provider.family<NotificationRepository, String>((ref, roomId) {
  final dio = ref.watch(dioProvider);

  return NotificationRepository(dio,
      baseUrl: 'http://$ip/notifications/$roomId');
});

@RestApi()
abstract class NotificationRepository
    implements IBasePaginationRepository<NotificationModel> {
  factory NotificationRepository(Dio dio, {String baseUrl}) =
      _NotificationRepository;
  @override
  @GET('/')
  @Headers({'accessToken': 'true'})
  Future<CursorPagination<NotificationModel>> paginate({
    @Queries() PaginationParams? paginationParams = const PaginationParams(),
  });
}
//