import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/home/model/real_time_data_model.dart';

part 'real_time_data_list_model.g.dart';
part 'real_time_data_list_model.freezed.dart';

abstract class RealTimeDataListModelBase {}

class RealTimeDataListModelLoading extends RealTimeDataListModelBase {}

class RealTimeDataListModelError extends RealTimeDataListModelBase {
  RealTimeDataListModelError({
    required this.message,
  });

  final String message;
}

@freezed
class RealTimeDataListModel extends RealTimeDataListModelBase
    with _$RealTimeDataListModel {
  const factory RealTimeDataListModel({
    required List<RealTimeDataModel> deviceList,
    required bool status,
  }) = _RealTimeDataListModel;

  factory RealTimeDataListModel.fromJson(Map<String, dynamic> json) =>
      _$RealTimeDataListModelFromJson(json);
}
