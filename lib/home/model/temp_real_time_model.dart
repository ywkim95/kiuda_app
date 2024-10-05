import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/home/model/temp_model.dart';

part 'temp_real_time_model.freezed.dart';
part 'temp_real_time_model.g.dart';

abstract class TempRealTimeModelBase {}

class TempRealTimeModelLoading extends TempRealTimeModelBase {}

class TempRealTimeModelError extends TempRealTimeModelBase {
  TempRealTimeModelError({
    required this.message,
  });

  final String message;
}

@freezed
class TempRealTimeModel extends TempRealTimeModelBase with _$TempRealTimeModel {
  const factory TempRealTimeModel({
    required TempModel data,
    required bool status,
  }) = _TempRealTimeModel;

  factory TempRealTimeModel.fromJson(Map<String, dynamic> json) =>
      _$TempRealTimeModelFromJson(json);
}
