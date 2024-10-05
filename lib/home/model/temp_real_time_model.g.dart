// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_real_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TempRealTimeModelImpl _$$TempRealTimeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TempRealTimeModelImpl(
      data: TempModel.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool,
    );

Map<String, dynamic> _$$TempRealTimeModelImplToJson(
        _$TempRealTimeModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };
