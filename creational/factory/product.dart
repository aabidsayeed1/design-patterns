abstract class Logistics {
  void deliverPackage();
}

class RoadLogistics implements Logistics {
  @override
  void deliverPackage() {
    print('Delivering package by road');
  }
}

class SeaLogistics implements Logistics {
  @override
  void deliverPackage() {
    print('Delivering package by sea');
  }
}
