import 'node.dart';
import 'node_visitor.dart';

void main() {
  final nodes = [City(), Industry(), SightSeeing()];
  final xmlExportVisitor = XMLExportVisitor();

  for (final node in nodes) {
    node.accept(xmlExportVisitor);
  }

  print(xmlExportVisitor.xml);
}
