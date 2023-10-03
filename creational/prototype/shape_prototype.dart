abstract class Shape {
  int x;
  int y;
  String color;

  Shape({required this.x, required this.y, required this.color});

  Shape.copy(Shape shape)
      : x = shape.x,
        y = shape.y,
        color = shape.color;

  Shape clone();

  bool equals(Object object) => object is Shape
      ? object.x == x && object.y == y && object.color == color
      : false;

  @override
  String toString() {
    return 'x: $x, y: $y, colour: $color';
  }
}
