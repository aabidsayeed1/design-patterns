part of 'main.dart';

abstract class Shape {
  int x;
  int y;
  String color;

  Shape({required this.x, required this.y, required this.color});

  Shape clone();
}
