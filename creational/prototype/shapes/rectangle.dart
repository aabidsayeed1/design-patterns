part of 'shapes.dart';

class Rectangle implements Shape {
  int x;
  int y;
  String color;

  double width;
  double height;

  Rectangle({
    required this.x,
    required this.y,
    required this.color,
    required this.width,
    required this.height,
  });

  Rectangle.copy(Rectangle rectangle)
      : x = rectangle.x,
        y = rectangle.y,
        color = rectangle.color,
        width = rectangle.width,
        height = rectangle.height;

  @override
  Shape clone() {
    return Rectangle.copy(this);
  }
}
