enum Sky {
  sunny(ko: '맑음', number: 1),
  cloudy(ko: '구름', number: 3),
  rainy(ko: '흐림', number: 4);

  final String ko;
  final int number;

  const Sky({
    required this.ko,
    required this.number,
  });
}
