part of 'shapes.dart';

class Circle implements Shape {
  int x;
  int y;
  String color;
  int radius;

  Circle({
    required this.x,
    required this.y,
    required this.color,
    required this.radius,
  });

  Circle.copy(Circle circle)
      : x = circle.x,
        y = circle.y,
        color = circle.color,
        radius = circle.radius;

  @override
  Shape clone() {
    return Circle.copy(this);
  }
}
