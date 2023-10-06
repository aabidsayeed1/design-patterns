import 'application.dart';
import 'editor.dart';

abstract class Command {
  Application app;
  Editor editor;
  String? backup;

  Command({required this.app, required this.editor});

  void saveBackup() => backup = editor.text;

  void undo() => editor.text = backup ?? "";

  bool execute();
}
