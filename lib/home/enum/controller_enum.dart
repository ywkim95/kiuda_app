enum ControllerList {
  airBlower(name: '송풍기', number: 1),
  nutrientSupplyMachine(name: '양액공급기', number: 2),
  ceilingSwitch(name: '천장개폐기', number: 4),
  led(name: 'LED', number: 3);

  final String name;
  final int number;
  const ControllerList({
    required this.name,
    required this.number,
  });
}
