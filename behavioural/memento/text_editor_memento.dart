class TextEditorMemento {
  TextEditorMemento(this._content) : this._date = DateTime.now();

  final String _content;
  final DateTime _date;

  String get content => _content;
  DateTime get date => _date;
}
