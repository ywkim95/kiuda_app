import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:podo_darae_lab/home/model/temp_result_data_model.dart';
import 'package:podo_darae_lab/home/repository/temp_result_data_repository.dart';

final tempResultDataProvider =
    StateNotifierProvider<TempResultDataStateNotifier, TempResultDataModel?>(
        (ref) => TempResultDataStateNotifier(ref: ref));

class TempResultDataStateNotifier extends StateNotifier<TempResultDataModel?> {
  TempResultDataStateNotifier({required this.ref}) : super(null);

  Ref ref;

  Future<void> getTempResultData({
    required String deviceId,
    String timeUnit = 'hour',
    String? startDate,
    String? endDate,
  }) async {
    DateTime now = DateTime.now();

    startDate ??= DateFormat("yyyy-MM-dd'T'HH:mm:ss'+09:00'")
        .format(now.subtract(const Duration(days: 1)));
    endDate ??= DateFormat("yyyy-MM-dd'T'HH:mm:ss'+09:00'").format(now);

    print('startDate: $startDate, endDate: $endDate');
    final resp =
        await ref.read(tempResultDataRepositoryProvider).getTempResultData(
              deviceId: deviceId,
              timeUnit: timeUnit,
              endDate: endDate,
              startDate: startDate,
            );
    state = resp;
  }
}
