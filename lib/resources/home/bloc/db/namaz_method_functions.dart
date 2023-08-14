import '../models/namaz_methods/namaz_method_hive_models.dart';

abstract class NamazMethodDbFunctions {
  Future<void> addCollection(NamazMethodDbModel obj);

  Future<List<NamazMethodDbModel>> getAllPrayerTracker();
}

class NamazMethodDB extends NamazMethodDbFunctions {
  @override
  Future<void> addCollection(NamazMethodDbModel obj) {
    // TODO: implement addCollection
    throw UnimplementedError();
  }

  @override
  Future<List<NamazMethodDbModel>> getAllPrayerTracker() {
    // TODO: implement getAllPrayerTracker
    throw UnimplementedError();
  }
}
