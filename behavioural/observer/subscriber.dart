// Interface

abstract class Subscriber {
  void update(String productName);
}

// Concrete class
class Customer implements Subscriber {
  final String name;

  Customer(this.name);

  @override
  void update(String productName) {
    print(
      '$name received a notification: $productName is now available in the shop.',
    );
  }
}
