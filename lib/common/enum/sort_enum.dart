// ignore_for_file: constant_identifier_names

enum SortEnum {
  ASC(name: 'ASC'),
  DESC(name: 'DESC');

  final String name;
  const SortEnum({
    required this.name,
  });

  // Enum을 문자열로 변환
  String toJson() => name;

  // 문자열을 Enum으로 변환
  static SortEnum fromJson(String json) {
    return SortEnum.values.firstWhere((element) => element.name == json,
        orElse: () => throw ArgumentError('Invalid SortEnum'));
  }
}
