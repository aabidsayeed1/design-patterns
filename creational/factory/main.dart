import 'creator.dart';
import 'product.dart';

void main() {
  LogisticsFactory logisticsFactory = RoadLogisticsFactory();
  Logistics logistics = logisticsFactory.createLogistics();
  logistics.deliverPackage();

  LogisticsFactory logisticsFactory2 = SeaLogisticsFactory();
  Logistics logistics2 = logisticsFactory2.createLogistics();
  logistics2.deliverPackage();
}
