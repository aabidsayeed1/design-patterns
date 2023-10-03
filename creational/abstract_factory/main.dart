import 'furniture_factory.dart';

void main() {
  final modernFactory = ModernFurnitureFactory();
  final victorianFactory = VictorianFurnitureFactory();
  final artDecoFactory = ArtDecoFurnitureFactory();

  final modernChair = modernFactory.createChair();
  final victorianSofa = victorianFactory.createSofa();
  final artDecoCoffeeTable = artDecoFactory.createCoffeeTable();

  modernChair.sitOn();
  victorianSofa.relaxOn();
  artDecoCoffeeTable.placeCoffee();
}
