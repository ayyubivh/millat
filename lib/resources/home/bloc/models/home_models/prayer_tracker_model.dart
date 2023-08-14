import 'package:hive/hive.dart';
part 'prayer_tracker_model.g.dart';

@HiveType(typeId: 2)
class PrayerTrackerModel {
  @HiveField(0)
  final bool fajr;
  @HiveField(1)
  final bool dhuhr;
  @HiveField(2)
  final bool asr;
  @HiveField(3)
  final bool magrib;
  @HiveField(4)
  final bool isha;
  @HiveField(5)
  final DateTime date;

  PrayerTrackerModel({
    required this.fajr,
    required this.dhuhr,
    required this.asr,
    required this.magrib,
    required this.isha,
    required this.date,
  });
}
