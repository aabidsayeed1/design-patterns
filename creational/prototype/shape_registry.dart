import 'dart:collection';

import 'shape_prototype.dart';
import 'shapes/shapes.dart';

enum ShapeOptions { bigRedCircle, mediumGreenRectangle }

class ShapeRegistry {
  Map<ShapeOptions, Shape> _registry = HashMap();

  ShapeRegistry() {
    Circle circle = Circle(x: 10, y: 20, color: "green", radius: 10);

    Rectangle rectangle =
        Rectangle(x: 10, y: 20, color: "green", width: 8, height: 5);

    put(ShapeOptions.bigRedCircle, circle);
    put(ShapeOptions.mediumGreenRectangle, rectangle);
  }

  Shape put(ShapeOptions key, Shape shape) {
    _registry[key] = shape;
    return shape;
  }

  Shape? get(ShapeOptions key) {
    final shape = _registry[key];
    return shape != null ? shape.clone() : null;
  }
}
