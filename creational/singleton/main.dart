import 'singleton.dart';

void main() {
  final database1 = DatabaseConnection.instance;
  final database2 = DatabaseConnection.instance;

  print('\ndatabase1 = database2 ? ${database1 == database2} \n');

  database1.executeQuery('SELECT * FROM customers');
  database2.executeQuery(
      'INSERT INTO orders (product, quantity) VALUES ("Widget", 10)');
}
