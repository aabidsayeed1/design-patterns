// Caretaker

import 'text_editor.dart';
import 'text_editor_memento.dart';

class TextEditorHistory {
  final List<Memento> _mementos = [];
  TextEditor textEditor;

  TextEditorHistory(this.textEditor);

  void save() => _mementos.add(textEditor.save());

  void undo() {
    if (_mementos.isNotEmpty) {
      final memento = _mementos.removeLast();
      textEditor.restore(memento);
    } else {
      print('End of undo history');
    }
  }
}
