// interface

abstract class Memento {
  Memento() : this._date = DateTime.now();

  final DateTime _date;
  DateTime get date => _date;
}

// concrete implementation

class TextEditorMemento extends Memento {
  TextEditorMemento(this._content);

  final String _content;
  String get content => _content;
}
