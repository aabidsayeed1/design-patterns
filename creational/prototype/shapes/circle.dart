part of 'shapes.dart';

class Circle extends Shape {
  int x;
  int y;
  String color;
  double radius;

  Circle({
    required this.x,
    required this.y,
    required this.color,
    required this.radius,
  }) : super(x: x, y: y, color: color);

  Circle.copy(Circle circle)
      : x = circle.x,
        y = circle.y,
        color = circle.color,
        radius = circle.radius,
        super.copy(circle);

  @override
  Shape clone() {
    return Circle.copy(this);
  }

  @override
  bool equals(Object object) => super.equals(object) && object is Circle
      ? object.radius == radius
      : false;

  @override
  String toString() {
    return '${super.toString()}, radius: $radius';
  }
}
