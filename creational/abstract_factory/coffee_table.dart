part of 'main.dart';

abstract class CoffeeTable {
  void placeCoffee();
}

class ModernCoffeeTable implements CoffeeTable {
  @override
  void placeCoffee() {
    print('Placing coffee on a modern coffe table');
  }
}

class VictorianCoffeeTable implements CoffeeTable {
  @override
  void placeCoffee() {
    print('Placing coffee on a victorian coffe table');
  }
}

class ArtDecoCoffeeTable implements CoffeeTable {
  @override
  void placeCoffee() {
    print('Placing coffee on an art deco coffe table');
  }
}
