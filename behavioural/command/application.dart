// invoker/sender

import 'command_interface.dart';
import 'commands/commands.dart';
import 'editor.dart';

class Application {
  String clipboard = "";
  CommandHistory history = CommandHistory();
  Editor editor;

  Application({required this.editor});

  UIButton? copyButton;
  UIButton? cutButton;
  UIButton? pasteButton;
  UIButton? undoButton;

  void createUI() {
    copyButton = UIButton(
      label: 'Copy',
      command: () => executeCommand(CopyCommand(app: this, editor: editor)),
    );

    cutButton = UIButton(
      label: 'Cut',
      command: () => executeCommand(CutCommand(app: this, editor: editor)),
    );

    pasteButton = UIButton(
      label: 'Paste',
      command: () => executeCommand(PasteCommand(app: this, editor: editor)),
    );

    undoButton = UIButton(
      label: 'Undo',
      command: () => executeCommand(UndoCommand(app: this, editor: editor)),
    );
  }

  void executeCommand(Command command) {
    if (command.execute()) history.push(command);
  }

  void undo() {
    Command? command = history.pop();
    if (command != null) command.undo();
  }
}

// simulated button class
class UIButton {
  UIButton({required this.label, required this.command});

  String label;
  Function() command;

  void pressButton() => command();
}

// stack for command history

class CommandHistory {
  final List<Command> history = [];

  void push(Command c) {
    history.add(c);
    print("Command $c pushed to history\n");
  }

  Command? pop() {
    if (history.isNotEmpty) {
      final command = history.removeLast();
      print("Command $command Popped from History");
      return command;
    } else {
      print("History is Empty");
      return null;
    }
  }
}
