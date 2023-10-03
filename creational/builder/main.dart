part 'house.dart';
part 'house_builder.dart';
part 'house_director.dart';

void main() {
  // builders
  HouseBuilder concreteBuilder = ConcreteHouseBuilder();
  HouseBuilder woodenBuilder = WoodenHouseBuilder();

  // directors
  HouseDirector director1 = HouseDirector(concreteBuilder);
  HouseDirector director2 = HouseDirector(woodenBuilder);

  // houses
  print("Concrete House:\n----");
  director1.buildSimpleHouse();
  House concreteHouse = concreteBuilder.result;
  concreteHouse.showHouseDetails();

  print("\nWooden House:\n----");
  director2.buildElegantMansion();
  House woodenHouse = woodenBuilder.result;
  woodenHouse.showHouseDetails();
}
