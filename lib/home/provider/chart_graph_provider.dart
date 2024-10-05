import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:podo_darae_lab/home/enum/time_unit_enum.dart';
import 'package:podo_darae_lab/home/model/result_data_model.dart';
import 'package:podo_darae_lab/home/repository/chart_graph_repository.dart';

final chartGraphProvider =
    StateNotifierProvider<ChartGraphStateNotifier, ResultDataModel?>(
        (ref) => ChartGraphStateNotifier(ref: ref));

class ChartGraphStateNotifier extends StateNotifier<ResultDataModel?> {
  ChartGraphStateNotifier({required this.ref}) : super(null);
  Ref ref;
  Future<void> getChartGraph({
    required String deviceId,
    TimeUnitEnum timeUnit = TimeUnitEnum.MINUTE,
    String? startDate,
    String? endDate,
  }) async {
    DateTime now = DateTime.now();

    startDate ??= DateFormat("yyyy-MM-dd'T'HH:mm:ss'+09:00'")
        .format(now.subtract(const Duration(days: 1)));
    endDate ??= DateFormat("yyyy-MM-dd'T'HH:mm:ss'+09:00'").format(now);

    final resp = await ref.read(chartGraphRepositoryProvider).getChartGraphData(
          deviceId: deviceId,
          timeUnit: timeUnit,
          endDate: endDate,
          startDate: startDate,
        );
    // log('$resp');
    state = resp;
  }
}
