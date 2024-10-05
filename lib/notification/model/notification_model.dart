import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/common/model/model_with_id.dart';
import 'package:podo_darae_lab/notification/enum/notify_type_enum.dart';

part 'notification_model.g.dart';
part 'notification_model.freezed.dart';

@freezed
class NotificationModel with _$NotificationModel implements IModelWithId {
  const factory NotificationModel({
    required int id,
    required bool checkFlag,
    required String checkDate,
    required String title,
    required String message,
    required NotifyTypeEnum notiType,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
