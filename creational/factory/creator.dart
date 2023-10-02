part of 'factory.dart';

abstract class LogisticsFactory {
  Logistics createLogistics();
}

class RoadLogisticsFactory implements LogisticsFactory {
  @override
  Logistics createLogistics() {
    return RoadLogistics();
  }
}

class SeaLogisticsFactory implements LogisticsFactory {
  @override
  Logistics createLogistics() {
    return SeaLogistics();
  }
}
