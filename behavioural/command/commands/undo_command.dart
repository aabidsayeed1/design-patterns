part of 'commands.dart';

class UndoCommand extends Command {
  UndoCommand({required super.app, required super.editor});

  @override
  bool execute() {
    print('Executing UndoCommand: Undoing last operation');
    app.undo();
    return false;
  }
}
