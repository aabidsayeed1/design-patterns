// Originator

import 'text_editor_memento.dart';

class TextEditor {
  TextEditor(this._content);

  String _content;
  String get content => _content;

  void type(String text) => _content += text;

  TextEditorMemento save() => TextEditorMemento(_content);

  void restore(TextEditorMemento memento) => _content = memento.content;

  @override
  String toString() => _content;
}
