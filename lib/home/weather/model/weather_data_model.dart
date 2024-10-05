import 'package:json_annotation/json_annotation.dart';
// 선언된 json_annotation의 값을 담아줄 파일
part 'weather_data_model.g.dart';

// abstract로 선언하여 provider에서 해당 클래스 및 자식 클래스들만 받도록 설정
abstract class WeatherDataModelBase {}

// Error일 경우
// WeatherDataModelBase를 상속받는다
class WeatherDataModelError extends WeatherDataModelBase {
  final String message;
  WeatherDataModelError({
    required this.message,
  });
}

// Loading일 경우
// WeatherDataModelBase를 상속받는다
class WeatherDataModelLoading extends WeatherDataModelBase {}

// json_annotation을 선언하여 model을 fromjson 및 tojson변환 로직을 자동으로 생성해준다.
// WeatherDataModelBase를 상속받는다
// Model인 경우
@JsonSerializable()
class WeatherDataModel extends WeatherDataModelBase {
  Response? response;

  WeatherDataModel({
    this.response,
  });
  // json_annotation으로 fromjson생성
  factory WeatherDataModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataModelFromJson(json);
  // json_annotation으로 tojson생성
  Map<String, dynamic> toJson() => _$WeatherDataModelToJson(this);
}

/// 아래는 하위 항목이므로 json_annotation반복
@JsonSerializable()
class Response {
  final Header header;
  Body? body;

  Response({required this.header, this.body});

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseToJson(this);
}

@JsonSerializable()
class Header {
  final String resultCode;
  final String resultMsg;

  Header({
    required this.resultCode,
    required this.resultMsg,
  });
  factory Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);
  Map<String, dynamic> toJson() => _$HeaderToJson(this);
}

@JsonSerializable()
class Body {
  final String dataType;
  final Items items;
  final int pageNo;
  final int numOfRows;
  final int totalCount;

  Body({
    required this.dataType,
    required this.items,
    required this.pageNo,
    required this.numOfRows,
    required this.totalCount,
  });

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
  Map<String, dynamic> toJson() => _$BodyToJson(this);
}

@JsonSerializable()
class Items {
  final List<Item> item;

  Items({
    required this.item,
  });

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}

@JsonSerializable()
class Item {
  final String baseDate;
  final String baseTime;
  final String category;
  final String fcstDate;
  final String fcstTime;
  final String fcstValue;
  final int nx;
  final int ny;

  Item({
    required this.baseDate,
    required this.baseTime,
    required this.category,
    required this.fcstDate,
    required this.fcstTime,
    required this.fcstValue,
    required this.nx,
    required this.ny,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
