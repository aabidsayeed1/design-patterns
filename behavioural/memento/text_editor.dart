// Originator

import 'text_editor_memento.dart';

class TextEditor {
  TextEditor(this._content);

  String _content;
  String get content => _content;

  void type(String text) => _content += text;

  TextEditorMemento save() => TextEditorMemento(_content);

  void restore(Memento memento) {
    memento is TextEditorMemento
        ? _content = memento.content
        : print('unknown memento class');
  }

  @override
  String toString() => _content;
}
