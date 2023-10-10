// Context

import 'route_strategy.dart';

class Navigator {
  RouteStrategy _routeStrategy;

  Navigator(this._routeStrategy);

  void setRouteStrategy(RouteStrategy strategy) => _routeStrategy = strategy;

  void planRoute(String origin, String destination) {
    final route = _routeStrategy.buildRoute(origin, destination);
    route.forEach((step) => print(step));
  }
}
