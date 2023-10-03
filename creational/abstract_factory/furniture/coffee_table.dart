part of 'furniture.dart';

abstract class CoffeeTable {
  void placeCoffee();
}

class ModernCoffeeTable implements CoffeeTable {
  @override
  void placeCoffee() {
    print('Placing coffee on a modern coffee table');
  }
}

class VictorianCoffeeTable implements CoffeeTable {
  @override
  void placeCoffee() {
    print('Placing coffee on a victorian coffee table');
  }
}

class ArtDecoCoffeeTable implements CoffeeTable {
  @override
  void placeCoffee() {
    print('Placing coffee on an art deco coffee table');
  }
}
