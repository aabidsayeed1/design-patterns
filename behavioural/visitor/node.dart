import 'node_visitor.dart';

// Element interface
abstract class Node {
  void accept(NodeVisitor visitor);
  String getInfo();
}

// Concrete elements
class City implements Node {
  @override
  void accept(NodeVisitor visitor) => visitor.visitCity(this);

  @override
  String getInfo() => "City information";
}

class Industry implements Node {
  @override
  void accept(NodeVisitor visitor) => visitor.visitIndustry(this);

  @override
  String getInfo() => "Industry information";
}

class SightSeeing implements Node {
  @override
  void accept(NodeVisitor visitor) => visitor.visitSightSeeing(this);

  @override
  String getInfo() => "Sightseeing information";
}
