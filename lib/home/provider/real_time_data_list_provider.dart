import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/home/model/real_time_data_list_model.dart';

final realTimeDataListProvider = StateNotifierProvider<
    RealTimeDataListStateNotifier,
    RealTimeDataListModelBase>((ref) => RealTimeDataListStateNotifier());

class RealTimeDataListStateNotifier
    extends StateNotifier<RealTimeDataListModelBase> {
  RealTimeDataListStateNotifier() : super(RealTimeDataListModelLoading());

  void receiveData({required RealTimeDataListModel model}) {
    try {
      state = model;
    } catch (e, stack) {
      // 나머지 에러 처리 및 state를 Error로 변경
      log(e.toString());
      log(stack.toString());
      state = RealTimeDataListModelError(
          message: '데이터를 받아오는데 실패하였습니다. \n 자동으로 갱신되니 잠시만 기다려 주세요.');
    }
  }
}
