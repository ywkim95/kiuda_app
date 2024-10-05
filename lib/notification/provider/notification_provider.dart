import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/common/model/cursor_pagination_model.dart';
import 'package:podo_darae_lab/common/provider/pagination_provider.dart';
import 'package:podo_darae_lab/notification/model/notification_model.dart';
import 'package:podo_darae_lab/notification/repository/notification_repository.dart';

final notificationProvider = StateNotifierProvider.family<
    NotificationStateNotifier, CursorPaginationBase, String>((ref, roomId) {
  final repository = ref.watch(notificationRepositoryProvider(roomId));

  final notifier = NotificationStateNotifier(repository: repository);

  return notifier;
});

// List<NotificationModel>
class NotificationStateNotifier
    extends PaginationProvider<NotificationModel, NotificationRepository> {
  NotificationStateNotifier({required super.repository});
}
