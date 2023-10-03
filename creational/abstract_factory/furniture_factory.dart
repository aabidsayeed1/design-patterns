part of 'main.dart';

abstract class FurnitureFactory {
  Chair createChair();
  Sofa createSofa();
  CoffeeTable createCoffeeTable();
}

class ModernFurnitureFactory implements FurnitureFactory {
  @override
  Chair createChair() => ModernChair();
  @override
  Sofa createSofa() => ModernSofa();
  @override
  CoffeeTable createCoffeeTable() => ModernCoffeeTable();
}

class VictorianFurnitureFactory implements FurnitureFactory {
  @override
  Chair createChair() => VictorianChair();
  @override
  Sofa createSofa() => VictorianSofa();
  @override
  CoffeeTable createCoffeeTable() => VictorianCoffeeTable();
}

class ArtDecoFurnitureFactory implements FurnitureFactory {
  @override
  Chair createChair() => ArtDecoChair();
  @override
  CoffeeTable createCoffeeTable() => ArtDecoCoffeeTable();
  @override
  Sofa createSofa() => ArtDecoSofa();
}
