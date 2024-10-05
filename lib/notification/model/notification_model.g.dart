// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: json['id'] as int,
      checkFlag: json['checkFlag'] as bool,
      checkDate: json['checkDate'] as String,
      title: json['title'] as String,
      message: json['message'] as String,
      notiType: $enumDecode(_$NotifyTypeEnumEnumMap, json['notiType']),
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'checkFlag': instance.checkFlag,
      'checkDate': instance.checkDate,
      'title': instance.title,
      'message': instance.message,
      'notiType': instance.notiType,
    };

const _$NotifyTypeEnumEnumMap = {
  NotifyTypeEnum.WARNING: 'WARNING',
  NotifyTypeEnum.INFO: 'INFO',
};
