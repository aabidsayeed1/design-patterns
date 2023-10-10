import 'navigator.dart';
import 'route_strategy.dart';

void main() {
  final navigationApp = Navigator(RoadStrategy());
  navigationApp.planRoute('Home', 'Work');

  navigationApp.setRouteStrategy(WalkingStrategy());
  navigationApp.planRoute('Park', 'Museum');

  navigationApp.setRouteStrategy(PublicTransportStrategy());
  navigationApp.planRoute('Park', 'Museum');
}
