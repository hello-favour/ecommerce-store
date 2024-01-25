import 'package:get_storage/get_storage.dart';

class AppLocalStorage {
  static final AppLocalStorage _instance = AppLocalStorage._internal();
  factory AppLocalStorage() {
    return _instance;
  }

  AppLocalStorage._internal();
  final _storage = GetStorage();

  //GENERATE METHOD TO SAVE DATA
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //GENERATE METHOD TO READ DATA
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  //GENERATE METHOD TO REMOVE DATA
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  //CLEAR ALL DATA IN STORAGE
  Future<void> clearAll(String key) async {
    await _storage.erase();
  }
}
