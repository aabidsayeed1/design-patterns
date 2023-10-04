// Abstraction
import 'color.dart';

abstract class Shape {
  Color color;

  Shape({required this.color});

  void draw();
}

// Refined Abstraction
class Circle extends Shape {
  Circle(Color color) : super(color: color);

  @override
  void draw() {
    print("Drawing a Circle with ${color.fill()} color.");
  }
}

class Square extends Shape {
  Square(Color color) : super(color: color);

  @override
  void draw() {
    print("Drawing a Square with ${color.fill()} color.");
  }
}
