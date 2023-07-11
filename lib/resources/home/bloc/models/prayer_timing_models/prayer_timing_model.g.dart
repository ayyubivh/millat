// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_timing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrayerModel _$$_PrayerModelFromJson(Map<String, dynamic> json) =>
    _$_PrayerModel(
      code: json['code'] as int,
      status: json['status'] as String,
      data: PrayerData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PrayerModelToJson(_$_PrayerModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

_$_PrayerData _$$_PrayerDataFromJson(Map<String, dynamic> json) =>
    _$_PrayerData(
      timings: PrayerTimings.fromJson(json['timings'] as Map<String, dynamic>),
      date: PrayerDate.fromJson(json['date'] as Map<String, dynamic>),
      meta: PrayerMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PrayerDataToJson(_$_PrayerData instance) =>
    <String, dynamic>{
      'timings': instance.timings,
      'date': instance.date,
      'meta': instance.meta,
    };

_$_PrayerTimings _$$_PrayerTimingsFromJson(Map<String, dynamic> json) =>
    _$_PrayerTimings(
      fajr: json['Fajr'] as String?,
      sunrise: json['Sunrise'] as String?,
      dhuhr: json['Dhuhr'] as String?,
      asr: json['Asr'] as String?,
      sunset: json['Sunset'] as String?,
      maghrib: json['Maghrib'] as String?,
      isha: json['Isha'] as String?,
      imsak: json['Imsak'] as String?,
      midnight: json['Midnight'] as String?,
      firstthird: json['Firstthird'] as String?,
      lastthird: json['Lastthird'] as String?,
    );

Map<String, dynamic> _$$_PrayerTimingsToJson(_$_PrayerTimings instance) =>
    <String, dynamic>{
      'Fajr': instance.fajr,
      'Sunrise': instance.sunrise,
      'Dhuhr': instance.dhuhr,
      'Asr': instance.asr,
      'Sunset': instance.sunset,
      'Maghrib': instance.maghrib,
      'Isha': instance.isha,
      'Imsak': instance.imsak,
      'Midnight': instance.midnight,
      'Firstthird': instance.firstthird,
      'Lastthird': instance.lastthird,
    };

_$_PrayerDate _$$_PrayerDateFromJson(Map<String, dynamic> json) =>
    _$_PrayerDate(
      readable: json['readable'] as String,
      timestamp: json['timestamp'] as String,
      hijri: HijriDate.fromJson(json['hijri'] as Map<String, dynamic>),
      gregorian:
          GregorianDate.fromJson(json['gregorian'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PrayerDateToJson(_$_PrayerDate instance) =>
    <String, dynamic>{
      'readable': instance.readable,
      'timestamp': instance.timestamp,
      'hijri': instance.hijri,
      'gregorian': instance.gregorian,
    };

_$_HijriDate _$$_HijriDateFromJson(Map<String, dynamic> json) => _$_HijriDate(
      date: json['date'] as String,
      format: json['format'] as String,
      day: json['day'] as String,
      weekday: HijriWeekday.fromJson(json['weekday'] as Map<String, dynamic>),
      month: HijriMonth.fromJson(json['month'] as Map<String, dynamic>),
      year: json['year'] as String,
      designation:
          Designation.fromJson(json['designation'] as Map<String, dynamic>),
      holidays:
          (json['holidays'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_HijriDateToJson(_$_HijriDate instance) =>
    <String, dynamic>{
      'date': instance.date,
      'format': instance.format,
      'day': instance.day,
      'weekday': instance.weekday,
      'month': instance.month,
      'year': instance.year,
      'designation': instance.designation,
      'holidays': instance.holidays,
    };

_$_GregorianDate _$$_GregorianDateFromJson(Map<String, dynamic> json) =>
    _$_GregorianDate(
      date: json['date'] as String,
      format: json['format'] as String,
      day: json['day'] as String,
      weekday:
          GregorianWeekday.fromJson(json['weekday'] as Map<String, dynamic>),
      month: GregorianMonth.fromJson(json['month'] as Map<String, dynamic>),
      year: json['year'] as String,
      designation:
          Designation.fromJson(json['designation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GregorianDateToJson(_$_GregorianDate instance) =>
    <String, dynamic>{
      'date': instance.date,
      'format': instance.format,
      'day': instance.day,
      'weekday': instance.weekday,
      'month': instance.month,
      'year': instance.year,
      'designation': instance.designation,
    };

_$_HijriWeekday _$$_HijriWeekdayFromJson(Map<String, dynamic> json) =>
    _$_HijriWeekday(
      en: json['en'] as String?,
      ar: json['ar'] as String?,
    );

Map<String, dynamic> _$$_HijriWeekdayToJson(_$_HijriWeekday instance) =>
    <String, dynamic>{
      'en': instance.en,
      'ar': instance.ar,
    };

_$_GregorianWeekday _$$_GregorianWeekdayFromJson(Map<String, dynamic> json) =>
    _$_GregorianWeekday(
      en: json['en'] as String?,
    );

Map<String, dynamic> _$$_GregorianWeekdayToJson(_$_GregorianWeekday instance) =>
    <String, dynamic>{
      'en': instance.en,
    };

_$_HijriMonth _$$_HijriMonthFromJson(Map<String, dynamic> json) =>
    _$_HijriMonth(
      number: json['number'] as int?,
      en: json['en'] as String?,
      ar: json['ar'] as String?,
    );

Map<String, dynamic> _$$_HijriMonthToJson(_$_HijriMonth instance) =>
    <String, dynamic>{
      'number': instance.number,
      'en': instance.en,
      'ar': instance.ar,
    };

_$_GregorianMonth _$$_GregorianMonthFromJson(Map<String, dynamic> json) =>
    _$_GregorianMonth(
      number: json['number'] as int?,
      en: json['en'] as String?,
      ar: json['ar'] as String?,
    );

Map<String, dynamic> _$$_GregorianMonthToJson(_$_GregorianMonth instance) =>
    <String, dynamic>{
      'number': instance.number,
      'en': instance.en,
      'ar': instance.ar,
    };

_$_Designation _$$_DesignationFromJson(Map<String, dynamic> json) =>
    _$_Designation(
      abbreviated: json['abbreviated'] as String,
      expanded: json['expanded'] as String,
    );

Map<String, dynamic> _$$_DesignationToJson(_$_Designation instance) =>
    <String, dynamic>{
      'abbreviated': instance.abbreviated,
      'expanded': instance.expanded,
    };

_$_PrayerMeta _$$_PrayerMetaFromJson(Map<String, dynamic> json) =>
    _$_PrayerMeta(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      timezone: json['timezone'] as String,
      method: Method.fromJson(json['method'] as Map<String, dynamic>),
      latitudeAdjustmentMethod: json['latitudeAdjustmentMethod'] as String,
      midnightMode: json['midnightMode'] as String,
      school: json['school'] as String,
      offset: Offset.fromJson(json['offset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PrayerMetaToJson(_$_PrayerMeta instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timezone': instance.timezone,
      'method': instance.method,
      'latitudeAdjustmentMethod': instance.latitudeAdjustmentMethod,
      'midnightMode': instance.midnightMode,
      'school': instance.school,
      'offset': instance.offset,
    };

_$_Method _$$_MethodFromJson(Map<String, dynamic> json) => _$_Method(
      id: json['id'] as int,
      name: json['name'] as String,
      params: MethodParams.fromJson(json['params'] as Map<String, dynamic>),
      location:
          MethodLocation.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MethodToJson(_$_Method instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'params': instance.params,
      'location': instance.location,
    };

_$_MethodParams _$$_MethodParamsFromJson(Map<String, dynamic> json) =>
    _$_MethodParams(
      fajr: json['Fajr'],
      isha: json['Isha'],
      shafaq: json['shafaq'],
    );

Map<String, dynamic> _$$_MethodParamsToJson(_$_MethodParams instance) =>
    <String, dynamic>{
      'Fajr': instance.fajr,
      'Isha': instance.isha,
      'shafaq': instance.shafaq,
    };

_$_MethodLocation _$$_MethodLocationFromJson(Map<String, dynamic> json) =>
    _$_MethodLocation(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MethodLocationToJson(_$_MethodLocation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$_Offset _$$_OffsetFromJson(Map<String, dynamic> json) => _$_Offset(
      imsak: json['Imsak'] as int,
      fajr: json['Fajr'] as int,
      sunrise: json['Sunrise'] as int,
      dhuhr: json['Dhuhr'] as int,
      asr: json['Asr'] as int,
      maghrib: json['Maghrib'] as int,
      sunset: json['Sunset'] as int,
      isha: json['Isha'] as int,
      midnight: json['Midnight'] as int,
    );

Map<String, dynamic> _$$_OffsetToJson(_$_Offset instance) => <String, dynamic>{
      'Imsak': instance.imsak,
      'Fajr': instance.fajr,
      'Sunrise': instance.sunrise,
      'Dhuhr': instance.dhuhr,
      'Asr': instance.asr,
      'Maghrib': instance.maghrib,
      'Sunset': instance.sunset,
      'Isha': instance.isha,
      'Midnight': instance.midnight,
    };
