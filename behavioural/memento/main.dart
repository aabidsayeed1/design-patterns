import 'history.dart';
import 'text_editor.dart';

void main() {
  final textEditor = TextEditor('Hello, ');
  final history = TextEditorHistory(textEditor);

  print('Initial content: $textEditor');

  history.save();

  textEditor.type('world!');
  print('Modified content: $textEditor');

  history.save();

  textEditor.type(' Have a nice day.');
  print('New content: $textEditor');

  history.undo();
  print('After undo: $textEditor');

  history.undo();
  print('After undo: $textEditor');

  history.undo();
}
