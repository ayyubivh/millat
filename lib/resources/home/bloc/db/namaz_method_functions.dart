import 'package:hive/hive.dart';

import '../../../../utils/string_constants.dart';
import '../models/namaz_methods/namaz_method_hive_models.dart';

abstract class NamazMethodDbFunctions {
  Future<void> addNamazMethode(NamazMethodDbModel obj);

  Future<List<NamazMethodDbModel>> getAllNamazMehods();
}

class NamazMethodDB extends NamazMethodDbFunctions {
  NamazMethodDB._internal();
  static NamazMethodDB instance = NamazMethodDB._internal();
  factory NamazMethodDB() {
    return instance;
  }
  @override
  Future<void> addNamazMethode(NamazMethodDbModel obj) async {
    final db =
        await Hive.openBox<NamazMethodDbModel>(Appstrings.prayerTrackerDb);
    await db.put(2, obj);
  }

  @override
  Future<List<NamazMethodDbModel>> getAllNamazMehods() async {
    final db = await Hive.openBox<NamazMethodDbModel>(Appstrings.namazMethodDb);
    return db.values.toList();
  }
}
