// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'real_time_data_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RealTimeDataListModelImpl _$$RealTimeDataListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RealTimeDataListModelImpl(
      deviceList: (json['deviceList'] as List<dynamic>)
          .map((e) => RealTimeDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as bool,
    );

Map<String, dynamic> _$$RealTimeDataListModelImplToJson(
        _$RealTimeDataListModelImpl instance) =>
    <String, dynamic>{
      'deviceList': instance.deviceList,
      'status': instance.status,
    };
