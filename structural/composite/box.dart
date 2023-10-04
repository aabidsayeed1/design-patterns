// Composite class
// boxes can contain products or other boxes

import 'packaging.dart';

class Box extends Packaging {
  final List<Packaging> items = [];

  void add(Packaging item) {
    items.add(item);
  }

  @override
  double get cost {
    double totalCost = 0;
    for (var item in items) {
      totalCost += item.cost;
    }
    return totalCost;
  }
}
