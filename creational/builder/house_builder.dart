part of 'main.dart';

abstract class HouseBuilder {
  void buildWalls();
  void buildDoors();
  void buildWindows(int windows);
  void buildRoof();

  void buildGarage();
  void buildPool();
  void buildGarden();
  void buildFancyStatues();

  House get result;
}

class ConcreteHouseBuilder implements HouseBuilder {
  House house;

  ConcreteHouseBuilder() : this.house = House();

  @override
  void buildWalls() => house.walls = "Concrete";
  @override
  void buildDoors() => house.doors = "Metal";
  @override
  void buildWindows(int windows) => house.windows = windows;
  @override
  void buildRoof() => house.roof = "Clay Tiles";

  @override
  void buildGarage() => house.garage = true;
  @override
  void buildPool() => house.pool = true;
  @override
  void buildGarden() => house.garden = true;
  @override
  void buildFancyStatues() => house.fancyStatues = true;

  @override
  House get result => house;
}

class WoodenHouseBuilder implements HouseBuilder {
  House house;

  WoodenHouseBuilder() : this.house = House();

  @override
  void buildWalls() => house.walls = "Wood";
  @override
  void buildDoors() => house.doors = "Wooden";
  @override
  void buildWindows(int windows) => house.windows = windows;
  @override
  void buildRoof() => house.roof = "Shingles";

  @override
  void buildGarage() => house.garage = true;
  @override
  void buildPool() => house.pool = true;
  @override
  void buildGarden() => house.garden = true;
  @override
  void buildFancyStatues() => house.fancyStatues = true;

  @override
  House get result => house;
}
