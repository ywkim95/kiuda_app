// ignore_for_file: constant_identifier_names

enum PermissionEnum {
  NONE(name: 'NONE'),
  NORMAL(name: 'NORMAL'),
  PREMIUM(name: 'PREMIUM'),
  CUSTOM(name: 'CUSTOM');

  final String name;
  const PermissionEnum({
    required this.name,
  });

  String toJson() => name;

  static PermissionEnum fromJson(String json) {
    return PermissionEnum.values.firstWhere(
      (element) => element.name == json,
      orElse: () => throw ArgumentError('Invalid Permission'),
    );
  }
}
