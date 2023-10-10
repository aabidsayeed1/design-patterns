import 'subscriber.dart';

// Interface

abstract class Publisher {
  void subscribe(Subscriber subscriber);
  void unsubscribe(Subscriber subscriber);
  void notifySubscribers(String productName);
}

// Concrete Publisher

class Shop implements Publisher {
  final List<Subscriber> _subscribers = [];

  @override
  void subscribe(Subscriber subscriber) => _subscribers.add(subscriber);

  @override
  void unsubscribe(Subscriber subscriber) => _subscribers.remove(subscriber);

  @override
  void notifySubscribers(String productName) {
    for (final subscriber in _subscribers) {
      subscriber.update(productName);
    }
  }

  void addProduct(String productName) {
    print('New product added to the shop: $productName');
    notifySubscribers(productName);
  }
}
