// prototype
abstract class Shape {
  int x;
  int y;
  String color;

  Shape({required this.x, required this.y, required this.color});

  Shape.copy({required Shape source})
      : x = source.x,
        y = source.y,
        color = source.color;

  Shape clone();
}
