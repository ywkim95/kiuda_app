// ignore_for_file: constant_identifier_names

enum NotifyTypeEnum {
  WARNING(name: 'WARNING'),
  INFO(name: 'INFO');

  final String name;
  const NotifyTypeEnum({
    required this.name,
  });

  String toJson() => name;

  static NotifyTypeEnum fromJson(String json) {
    return NotifyTypeEnum.values.firstWhere(
      (element) => element.name == json,
      orElse: () => throw ArgumentError('Invalid NotifyTypeEnum'),
    );
  }
}
