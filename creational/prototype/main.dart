import 'shape_prototype.dart';
import 'shape_registry.dart';
import 'shapes/shapes.dart';

void main() {
  print('Without Shape Registry\n');
  testWithoutUsingShapeRegistry();

  print('\n\nWith Shape Registry\n');
  testWithShapeRegistry();
}

void testWithShapeRegistry() {
  ShapeRegistry registry = ShapeRegistry();

  Shape? circle = registry.get(ShapeOptions.bigRedCircle);
  Shape? rectangle = registry.get(ShapeOptions.mediumGreenRectangle);

  Shape? anotherCircle = registry.get(ShapeOptions.bigRedCircle);
  Shape? anotherRectangle = registry.get(ShapeOptions.mediumGreenRectangle);

  print('circle: $circle');
  print('circleClone: $anotherCircle\n');

  print('rectangle: $rectangle');
  print('rectangleClone: $anotherRectangle\n');

  if (circle != null && anotherCircle != null)
    print('circle = circleClone ? ${circle.equals(anotherCircle)}');

  if (circle != null && anotherRectangle != null)
    print('circle = rectangleClone ? ${circle.equals(anotherRectangle)}');
}

void testWithoutUsingShapeRegistry() {
  Circle circle = Circle(x: 10, y: 20, color: "red", radius: 10);

  Rectangle rectangle =
      Rectangle(x: 10, y: 20, color: "green", width: 8, height: 5);

  Shape circleClone = circle.clone();
  Shape rectangleClone = rectangle.clone();

  print('circle: $circle');
  print('circleClone: $circleClone\n');

  print('rectangle: $rectangle');
  print('rectangleClone: $rectangleClone\n');

  print('circle = circleClone ? ${circle.equals(circleClone)}');
  print('circle = rectangleClone ? ${circle.equals(rectangleClone)}');
}
