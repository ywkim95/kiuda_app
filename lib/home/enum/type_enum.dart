// ignore_for_file: constant_identifier_names

enum TypeEnum {
  SENSOR(name: 'SENSOR'),
  CONTROLLER(name: 'CONTROLLER');

  final String name;
  const TypeEnum({
    required this.name,
  });

  String toJson() => name;

  static TypeEnum fromJson(String json) {
    return TypeEnum.values.firstWhere(
      (element) => element.name == json,
      orElse: () => throw ArgumentError('Invalid TypeEnum'),
    );
  }
}
