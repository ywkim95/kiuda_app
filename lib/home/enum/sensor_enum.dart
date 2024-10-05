enum SensorList {
  co2(name: 'CO₂', number: 1),
  indoorTemp(name: '실내온도', number: 2),
  microMediumTemp(name: '배지온도', number: 2),
  indoorHumidity(name: '실내습도', number: 5),
  solarRadiation(name: '일사량', number: 3),
  cumulativeSolarRadiation(name: '누적일사량', number: 8);

  final String name;
  final int number;
  const SensorList({
    required this.name,
    required this.number,
  });
}
