part 'chair.dart';
part 'coffee_table.dart';
part 'sofa.dart';

part 'furniture_factory.dart';

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
