import 'color.dart';
import 'shape.dart';

void main() {
  final red = RedColor();
  final blue = BlueColor();

  final redCircle = Circle(color: red);
  final blueSquare = Square(color: blue);

  redCircle.draw();
  blueSquare.draw();
}
