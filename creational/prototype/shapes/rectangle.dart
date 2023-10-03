part of 'shapes.dart';

class Rectangle extends Shape {
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
  }) : super(x: x, y: y, color: color);

  Rectangle.copy(Rectangle rectangle)
      : x = rectangle.x,
        y = rectangle.y,
        color = rectangle.color,
        width = rectangle.width,
        height = rectangle.height,
        super.copy(rectangle);

  @override
  Shape clone() {
    return Rectangle.copy(this);
  }

  @override
  bool equals(Object object) => super.equals(object) && object is Rectangle
      ? object.width == width && object.height == height
      : false;

  @override
  String toString() {
    return '${super.toString()}, width: $width, height: $height';
  }
}
