// 선언된 ExcelProvider를 사용하기 위한 변수
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/home/weather/model/excel_data_model.dart';
import 'package:podo_darae_lab/home/weather/model/excel_list_model.dart';

final excelProvider = Provider<ExcelProvider>((ref) {
  return ExcelProvider();
});

// 일반적인 클래스로 선언한다.
// 저장된 region.json을 읽기만 할뿐 쓰거나 삭제, update가 필요없기 때문에
class ExcelProvider {
  ExcelProvider();
  // 스크린에 해당 지역에 맞는 이름을 보여주기 위해서 region을 선언
  String region = '지역 없음';

  Future<ExcelDataModel> getData({
    /// 농장의 지역코드(또는 시도, 시군구, 읍면동)을 받는다.
    /// * 현재는 강제로 수원 매탄2동의 주소를 받도록 설정해둠
    /// "province": "서울특별시",
    /// "city": "종로구",
    /// "village": "청운효자동",
    required String province,
    String? city,
    String? village,
  }) async {
    try {
      /// region.json(공공기관의 행정주소를 담은 excel을 json으로 변환(공개자료))를 읽어들인다.
      /// 읽은 자료를 map으로 변환 후 ExcelListModel로 변환한다.
      /// 변환한 자료 중 입력받은 regionCode와 일치하는 자료를 찾아 반환한다.
      var data = await rootBundle.loadString('assets/region.json');
      final Map<String, dynamic> jsondata = await jsonDecode(data);
      final ExcelListModel listData = ExcelListModel.fromJson(jsondata);
      final regionData = listData.items.firstWhere(
        (e) =>
            e.province == province &&
            (city == null || e.city == city) &&
            (village == null || e.village == village),
      );
      region = regionData.village ?? regionData.city ?? regionData.province;
      // log('regionData : ${regionData.toJson()}');
      return regionData;
    } catch (e, stack) {
      log(e.toString());
      log(stack.toString());
      throw Exception('엑셀정보를 불러오는데 실패했습니다.');
    }
  }
}
