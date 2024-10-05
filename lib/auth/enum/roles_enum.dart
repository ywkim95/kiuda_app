// ignore_for_file: constant_identifier_names

enum Roles {
  ADMIN(name: 'ADMIN'),
  USER(name: 'USER');

  final String name;
  const Roles({
    required this.name,
  });

  // Enum을 문자열로 변환
  String toJson() => name;

  // 문자열을 Enum으로 변환
  static Roles fromJson(String json) {
    return Roles.values.firstWhere((element) => element.name == json,
        orElse: () => throw ArgumentError('Invalid Role'));
  }
}
