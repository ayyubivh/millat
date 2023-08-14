import 'package:hive/hive.dart';
import 'package:millat/utils/string_constants.dart';

import '../models/home_models/prayer_tracker_model.dart';

abstract class PrayerTrackerFunctions {
  Future<void> addCollection(PrayerTrackerModel obj);
  Future<List<PrayerTrackerModel>> getAllPrayerTracker();
}

class PrayerTrackerDB extends PrayerTrackerFunctions {
  PrayerTrackerDB._internal();
  static PrayerTrackerDB instance = PrayerTrackerDB._internal();
  factory PrayerTrackerDB() {
    return instance;
  }
  @override
  Future<List<PrayerTrackerModel>> getAllPrayerTracker() async {
    final _db =
        await Hive.openBox<PrayerTrackerModel>(Appstrings.prayerTrackerDb);
    return _db.values.toList();
  }

  @override
  Future<void> addCollection(PrayerTrackerModel obj) async {
    final db =
        await Hive.openBox<PrayerTrackerModel>(Appstrings.prayerTrackerDb);
    await db.put(1, obj);
  }
}
