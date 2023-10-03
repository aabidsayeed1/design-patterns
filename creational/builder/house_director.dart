import 'house_builder.dart';

class HouseDirector {
  HouseBuilder builder;

  HouseDirector(this.builder);

  void buildSimpleHouse() {
    builder.buildWalls();
    builder.buildDoors();
    builder.buildWindows(4);
    builder.buildRoof();
  }

  void buildRelaxingSummerRetreat() {
    builder.buildWalls();
    builder.buildDoors();
    builder.buildWindows(6);
    builder.buildRoof();
    builder.buildPool();
    builder.buildGarden();
  }

  void buildElegantMansion() {
    builder.buildWalls();
    builder.buildDoors();
    builder.buildWindows(8);
    builder.buildRoof();
    builder.buildGarage();
    builder.buildFancyStatues();
  }

  void buildGrandEstate() {
    builder.buildWalls();
    builder.buildDoors();
    builder.buildWindows(10);
    builder.buildRoof();
    builder.buildGarage();
    builder.buildPool();
    builder.buildGarden();
    builder.buildFancyStatues();
  }
}
