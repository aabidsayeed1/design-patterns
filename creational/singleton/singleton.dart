class DatabaseConnection {
  static DatabaseConnection? _instance;

  DatabaseConnection._();

  static DatabaseConnection get instance {
    if (_instance == null) {
      print('Initializing the database connection...');
      _instance = DatabaseConnection._();
    }
    return _instance!;
  }

  void executeQuery(String sql) {
    print('Executing query: $sql');
  }
}
