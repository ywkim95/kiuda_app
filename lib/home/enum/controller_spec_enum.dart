// ignore_for_file: constant_identifier_names

enum ControllerSpecEnum {
  DIGITAL(name: 'DIGITAL'),
  SLIDER(name: 'SLIDER'),
  STEPSWITCH(name: 'STEPSWITCH');

  final String name;
  const ControllerSpecEnum({
    required this.name,
  });

  String toJson() => name;

  static ControllerSpecEnum fromJson(String json) {
    return ControllerSpecEnum.values.firstWhere(
      (element) => element.name == json,
      orElse: () => throw ArgumentError('Invalid ControllerSpecEnum'),
    );
  }
}
