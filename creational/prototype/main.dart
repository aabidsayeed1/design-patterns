import 'shape_prototype.dart';
import 'shapes/shapes.dart';

void main() {
  Circle circle = Circle(x: 10, y: 20, color: "red", radius: 10);

  Rectangle rectangle =
      Rectangle(x: 10, y: 20, color: "green", width: 8, height: 5);

  Shape circleClone = circle.clone();
  Shape rectangleClone = rectangle.clone();

  print('circle: $circleClone');
  print('circleClone: $circleClone\n');

  print('rectangle: $rectangleClone');
  print('rectangleClone: $rectangleClone\n');

  print('circle = circleClone ? ${circle.equals(circleClone)}');
  print('circle = rectangleClone ? ${circle.equals(rectangleClone)}');
}
