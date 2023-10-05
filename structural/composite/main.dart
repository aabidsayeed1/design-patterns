import 'box.dart';
import 'product.dart';

void main() {
  final product1 = Product(name: 'Laptop', price: 800);
  final product2 = Product(name: 'Phone', price: 600);

  final box1 = Box();
  box1.add(product1);
  box1.add(product2);

  final product3 = Product(name: 'Tablet', price: 300);
  final product4 = Product(name: 'Headphones', price: 100);

  final box2 = Box();
  box2.add(product3);
  box2.add(product4);
  box2.add(box1);

  final totalCost = box2.cost;

  print('Total Cost of the Box: \$$totalCost');
}
