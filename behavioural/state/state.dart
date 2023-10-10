import 'document.dart';

// Interface

abstract class State {
  final Document document;

  State({required this.document});

  void publish();
  void render();
}
