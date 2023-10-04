// leaf

import 'packaging.dart';

class Product extends Packaging {
  final String name;
  final double price;

  Product({required this.name, required this.price});

  @override
  double get cost => price;
}
