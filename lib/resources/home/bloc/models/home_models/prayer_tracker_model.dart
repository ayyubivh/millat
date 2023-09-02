// import 'package:hive/hive.dart';
// part 'prayer_tracker_model.g.dart';

// @HiveType(typeId: 2)
// class PrayerTrackerModel {
//   @HiveField(0)
//   final bool fajr;
//   @HiveField(1)
//   final bool dhuhr;
//   @HiveField(2)
//   final bool asr;
//   @HiveField(3)
//   final bool magrib;
//   @HiveField(4)
//   final bool isha;
//   @HiveField(5)
//   final DateTime date;

// ignore_for_file: invalid_annotation_target

//   PrayerTrackerModel({
//     required this.fajr,
//     required this.dhuhr,
//     required this.asr,
//     required this.magrib,
//     required this.isha,
//     required this.date,
//   });
// }
import 'package:freezed_annotation/freezed_annotation.dart';
part 'prayer_tracker_model.g.dart';
part 'prayer_tracker_model.freezed.dart';

@freezed
class PrayerTrackerModel with _$PrayerTrackerModel {
  const factory PrayerTrackerModel({
    required int status,
    required String message,
    required String error,
    required Result result,
  }) = _PrayerTrackerModel;

  factory PrayerTrackerModel.fromJson(Map<String, dynamic> json) =>
      _$PrayerTrackerModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required Data? data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: '_id') required String id,
    required String date,
    @JsonKey(name: 'userId') required String userId,
    @JsonKey(name: 'createdAt') required String createdAt,
    required List<String> namaz,
    @JsonKey(name: 'updatedAt') required String updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
