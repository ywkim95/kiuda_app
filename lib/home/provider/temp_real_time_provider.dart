import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/home/model/temp_real_time_model.dart';

final tempRealTimeProvider =
    StateNotifierProvider<TempRealTimeStateNotifier, TempRealTimeModelBase>(
        (ref) => TempRealTimeStateNotifier());

class TempRealTimeStateNotifier extends StateNotifier<TempRealTimeModelBase> {
  TempRealTimeStateNotifier() : super(TempRealTimeModelLoading());

  void receiveData({required TempRealTimeModel model}) {
    try {
      state = model;
    } catch (e, stack) {
      print(e);
      print(stack);
      // 나머지 에러 처리 및 state를 Error로 변경
      state = TempRealTimeModelError(
          message: '데이터를 받아오는데 실패하였습니다. \n 자동으로 갱신되니 잠시만 기다려 주세요.');
    }
  }
}
