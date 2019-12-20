class ShardPreferencesUtil {
  ShardPreferencesUtil._();

  static ShardPreferencesUtil _instance;

  static ShardPreferencesUtil getInstance() {
    if (_instance == null) {
      _instance = ShardPreferencesUtil._();
    }
    return _instance;
  }



}
