import 'node.dart';

// Visitor Interface

abstract class NodeVisitor {
  void visitCity(City city);
  void visitIndustry(Industry industry);
  void visitSightSeeing(SightSeeing sightSeeing);
}

// Concrete Visitor

class XMLExportVisitor implements NodeVisitor {
  String xml = '';

  @override
  void visitCity(City city) {
    xml += '<City>\n  <!-- ${city.getInfo()} -->\n</City>\n';
  }

  @override
  void visitIndustry(Industry industry) {
    xml += '<Industry>\n  <!-- ${industry.getInfo()} -->\n</Industry>\n';
  }

  @override
  void visitSightSeeing(SightSeeing sightSeeing) {
    xml +=
        '<SightSeeing>\n  <!-- ${sightSeeing.getInfo()} -->\n</SightSeeing>\n';
  }
}
