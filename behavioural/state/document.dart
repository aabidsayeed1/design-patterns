// Context

import 'state.dart';
import 'states/states.dart';

class Document {
  late State _state;

  Document() {
    _state = Draft(document: this);
  }

  void setState(State state) => _state = state;

  void publish() => _state.publish();
  void render() => _state.render();
}
