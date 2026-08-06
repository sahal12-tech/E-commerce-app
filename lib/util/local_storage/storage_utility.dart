import 'package:get_storage/get_storage.dart';

class ELocalStorage {
  static final ELocalStorage _instance = ELocalStorage._instance;
  factory ELocalStorage() {
    return _instance;
  }

  ELocalStorage.internal();

  final _storage = GetStorage();

  //Generic method to save data

  Future<void>saveData<E>(String key, E value) async {
    await _storage.write(key, value);
  }

  //generic method to read data

  E? readData<E> (String key) {
    return _storage.read <E> (key);
  }

  //Generic method to remove data

  Future<void>removeData(String key) async {
    await _storage.remove(key);
  }

  //clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }

}
