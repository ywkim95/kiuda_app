// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SensorDataModelImpl _$$SensorDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SensorDataModelImpl(
      id: json['id'] as int,
      s1: (json['s1'] as num?)?.toDouble(),
      s2: (json['s2'] as num?)?.toDouble(),
      s3: (json['s3'] as num?)?.toDouble(),
      s4: (json['s4'] as num?)?.toDouble(),
      s5: (json['s5'] as num?)?.toDouble(),
      s6: (json['s6'] as num?)?.toDouble(),
      s7: (json['s7'] as num?)?.toDouble(),
      s8: (json['s8'] as num?)?.toDouble(),
      s9: (json['s9'] as num?)?.toDouble(),
      s10: (json['s10'] as num?)?.toDouble(),
      s11: (json['s11'] as num?)?.toDouble(),
      s12: (json['s12'] as num?)?.toDouble(),
      s13: (json['s13'] as num?)?.toDouble(),
      s14: (json['s14'] as num?)?.toDouble(),
      s15: (json['s15'] as num?)?.toDouble(),
      s16: (json['s16'] as num?)?.toDouble(),
      s17: (json['s17'] as num?)?.toDouble(),
      s18: (json['s18'] as num?)?.toDouble(),
      s19: (json['s19'] as num?)?.toDouble(),
      s20: (json['s20'] as num?)?.toDouble(),
      rssi: (json['rssi'] as num).toDouble(),
      sqn: (json['sqn'] as num).toDouble(),
      device: DeviceModel.fromJson(json['device'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SensorDataModelImplToJson(
        _$SensorDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      's1': instance.s1,
      's2': instance.s2,
      's3': instance.s3,
      's4': instance.s4,
      's5': instance.s5,
      's6': instance.s6,
      's7': instance.s7,
      's8': instance.s8,
      's9': instance.s9,
      's10': instance.s10,
      's11': instance.s11,
      's12': instance.s12,
      's13': instance.s13,
      's14': instance.s14,
      's15': instance.s15,
      's16': instance.s16,
      's17': instance.s17,
      's18': instance.s18,
      's19': instance.s19,
      's20': instance.s20,
      'rssi': instance.rssi,
      'sqn': instance.sqn,
      'device': instance.device,
    };
