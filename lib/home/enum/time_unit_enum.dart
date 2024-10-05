// ignore_for_file: constant_identifier_names

enum TimeUnitEnum {
  MINUTE(name: 'MINUTE'),
  DAILY(name: 'DAILY'),
  MONTHLY(name: 'MONTHLY');

  final String name;
  const TimeUnitEnum({
    required this.name,
  });

  String toJson() => name;

  static TimeUnitEnum fromJson(String json) {
    return TimeUnitEnum.values.firstWhere(
      (element) => element.name == json,
      orElse: () => throw ArgumentError('Invalid TimeUnitEnum'),
    );
  }
}
