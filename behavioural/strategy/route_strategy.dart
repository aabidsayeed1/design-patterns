// Strategy Interface

abstract class RouteStrategy {
  List<String> buildRoute(String origin, String destination);
}

// Concrete Strategies

class RoadStrategy implements RouteStrategy {
  @override
  List<String> buildRoute(String origin, String destination) {
    return ['Driving directions from $origin to $destination'];
  }
}

class WalkingStrategy implements RouteStrategy {
  @override
  List<String> buildRoute(String origin, String destination) {
    return ['Walking directions from $origin to $destination'];
  }
}

class PublicTransportStrategy implements RouteStrategy {
  @override
  List<String> buildRoute(String origin, String destination) {
    return ['Public transport directions from $origin to $destination'];
  }
}
