// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'prayer_timing_model.g.dart';
part 'prayer_timing_model.freezed.dart';

@freezed
class PrayerModel with _$PrayerModel {
  factory PrayerModel({
    required int code,
    required String status,
    required PrayerData data,
  }) = _PrayerModel;

  factory PrayerModel.fromJson(Map<String, dynamic> json) =>
      _$PrayerModelFromJson(json);
}

@freezed
class PrayerData with _$PrayerData {
  factory PrayerData({
    required PrayerTimings timings,
    required PrayerDate date,
    required PrayerMeta meta,
  }) = _PrayerData;

  factory PrayerData.fromJson(Map<String, dynamic> json) =>
      _$PrayerDataFromJson(json);
}

@freezed
class PrayerTimings with _$PrayerTimings {
  factory PrayerTimings({
    @JsonKey(name: 'Fajr') String? fajr,
    @JsonKey(name: 'Sunrise') String? sunrise,
    @JsonKey(name: 'Dhuhr') String? dhuhr,
    @JsonKey(name: 'Asr') String? asr,
    @JsonKey(name: 'Sunset') String? sunset,
    @JsonKey(name: 'Maghrib') String? maghrib,
    @JsonKey(name: 'Isha') String? isha,
    @JsonKey(name: 'Imsak') String? imsak,
    @JsonKey(name: 'Midnight') String? midnight,
    @JsonKey(name: 'Firstthird') String? firstthird,
    @JsonKey(name: 'Lastthird') String? lastthird,
  }) = _PrayerTimings;

  factory PrayerTimings.fromJson(Map<String, dynamic> json) =>
      _$PrayerTimingsFromJson(json);
}

@freezed
class PrayerDate with _$PrayerDate {
  factory PrayerDate({
    required String readable,
    required String timestamp,
    required HijriDate hijri,
    required GregorianDate gregorian,
  }) = _PrayerDate;

  factory PrayerDate.fromJson(Map<String, dynamic> json) =>
      _$PrayerDateFromJson(json);
}

@freezed
class HijriDate with _$HijriDate {
  factory HijriDate({
    required String date,
    required String format,
    required String day,
    required HijriWeekday weekday,
    required HijriMonth month,
    required String year,
    required Designation designation,
    required List<String> holidays,
  }) = _HijriDate;

  factory HijriDate.fromJson(Map<String, dynamic> json) =>
      _$HijriDateFromJson(json);
}

@freezed
class GregorianDate with _$GregorianDate {
  factory GregorianDate({
    required String date,
    required String format,
    required String day,
    required GregorianWeekday weekday,
    required GregorianMonth month,
    required String year,
    required Designation designation,
  }) = _GregorianDate;

  factory GregorianDate.fromJson(Map<String, dynamic> json) =>
      _$GregorianDateFromJson(json);
}

@freezed
class HijriWeekday with _$HijriWeekday {
  factory HijriWeekday({
    required String? en,
    required String? ar,
  }) = _HijriWeekday;

  factory HijriWeekday.fromJson(Map<String, dynamic> json) =>
      _$HijriWeekdayFromJson(json);
}

@freezed
class GregorianWeekday with _$GregorianWeekday {
  factory GregorianWeekday({
    required String? en,
  }) = _GregorianWeekday;

  factory GregorianWeekday.fromJson(Map<String, dynamic> json) =>
      _$GregorianWeekdayFromJson(json);
}

@freezed
class HijriMonth with _$HijriMonth {
  factory HijriMonth({
    required int? number,
    required String? en,
    required String? ar,
  }) = _HijriMonth;

  factory HijriMonth.fromJson(Map<String, dynamic> json) =>
      _$HijriMonthFromJson(json);
}

@freezed
class GregorianMonth with _$GregorianMonth {
  factory GregorianMonth({
    required int? number,
    required String? en,
    required String? ar,
  }) = _GregorianMonth;

  factory GregorianMonth.fromJson(Map<String, dynamic> json) =>
      _$GregorianMonthFromJson(json);
}

@freezed
class Designation with _$Designation {
  factory Designation({
    required String abbreviated,
    required String expanded,
  }) = _Designation;

  factory Designation.fromJson(Map<String, dynamic> json) =>
      _$DesignationFromJson(json);
}

@freezed
class PrayerMeta with _$PrayerMeta {
  factory PrayerMeta({
    required double latitude,
    required double longitude,
    required String timezone,
    required Method method,
    @JsonKey(name: 'latitudeAdjustmentMethod')
    required String latitudeAdjustmentMethod,
    @JsonKey(name: 'midnightMode') required String midnightMode,
    required String school,
    required Offset offset,
  }) = _PrayerMeta;

  factory PrayerMeta.fromJson(Map<String, dynamic> json) =>
      _$PrayerMetaFromJson(json);
}

@freezed
class Method with _$Method {
  factory Method({
    required int id,
    required String name,
    required MethodParams params,
    required MethodLocation location,
  }) = _Method;

  factory Method.fromJson(Map<String, dynamic> json) => _$MethodFromJson(json);
}

@freezed
class MethodParams with _$MethodParams {
  factory MethodParams({
    @JsonKey(name: 'Fajr') required dynamic fajr,
    @JsonKey(name: 'Isha') required dynamic isha,
    @JsonKey(name: "shafaq") dynamic shafaq,
  }) = _MethodParams;

  factory MethodParams.fromJson(Map<String, dynamic> json) =>
      _$MethodParamsFromJson(json);
}

@freezed
class MethodLocation with _$MethodLocation {
  factory MethodLocation({
    required double latitude,
    required double longitude,
  }) = _MethodLocation;

  factory MethodLocation.fromJson(Map<String, dynamic> json) =>
      _$MethodLocationFromJson(json);
}

@freezed
class Offset with _$Offset {
  factory Offset({
    @JsonKey(name: 'Imsak') required int imsak,
    @JsonKey(name: 'Fajr') required int fajr,
    @JsonKey(name: 'Sunrise') required int sunrise,
    @JsonKey(name: 'Dhuhr') required int dhuhr,
    @JsonKey(name: 'Asr') required int asr,
    @JsonKey(name: 'Maghrib') required int maghrib,
    @JsonKey(name: 'Sunset') required int sunset,
    @JsonKey(name: 'Isha') required int isha,
    @JsonKey(name: 'Midnight') required int midnight,
  }) = _Offset;

  factory Offset.fromJson(Map<String, dynamic> json) => _$OffsetFromJson(json);
}
