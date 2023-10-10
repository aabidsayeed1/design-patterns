import 'publisher.dart';
import 'subscriber.dart';

void main() {
  final shop = Shop();

  final customer1 = Customer('Customer 1');
  final customer2 = Customer('Customer 2');
  final customer3 = Customer('Customer 3');

  shop.subscribe(customer1);
  shop.subscribe(customer2);
  shop.subscribe(customer3);

  shop.addProduct('New iPhone Model');

  shop.unsubscribe(customer2);

  shop.addProduct('Latest Android Phone');
}
