// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_timing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrayerModelImpl _$$PrayerModelImplFromJson(Map<String, dynamic> json) =>
    _$PrayerModelImpl(
      code: json['code'] as int,
      status: json['status'] as String,
      data: PrayerData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrayerModelImplToJson(_$PrayerModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

_$PrayerDataImpl _$$PrayerDataImplFromJson(Map<String, dynamic> json) =>
    _$PrayerDataImpl(
      timings: PrayerTimings.fromJson(json['timings'] as Map<String, dynamic>),
      date: PrayerDate.fromJson(json['date'] as Map<String, dynamic>),
      meta: PrayerMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrayerDataImplToJson(_$PrayerDataImpl instance) =>
    <String, dynamic>{
      'timings': instance.timings,
      'date': instance.date,
      'meta': instance.meta,
    };

_$PrayerTimingsImpl _$$PrayerTimingsImplFromJson(Map<String, dynamic> json) =>
    _$PrayerTimingsImpl(
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

Map<String, dynamic> _$$PrayerTimingsImplToJson(_$PrayerTimingsImpl instance) =>
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

_$PrayerDateImpl _$$PrayerDateImplFromJson(Map<String, dynamic> json) =>
    _$PrayerDateImpl(
      readable: json['readable'] as String,
      timestamp: json['timestamp'] as String,
      hijri: HijriDate.fromJson(json['hijri'] as Map<String, dynamic>),
      gregorian:
          GregorianDate.fromJson(json['gregorian'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrayerDateImplToJson(_$PrayerDateImpl instance) =>
    <String, dynamic>{
      'readable': instance.readable,
      'timestamp': instance.timestamp,
      'hijri': instance.hijri,
      'gregorian': instance.gregorian,
    };

_$HijriDateImpl _$$HijriDateImplFromJson(Map<String, dynamic> json) =>
    _$HijriDateImpl(
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

Map<String, dynamic> _$$HijriDateImplToJson(_$HijriDateImpl instance) =>
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

_$GregorianDateImpl _$$GregorianDateImplFromJson(Map<String, dynamic> json) =>
    _$GregorianDateImpl(
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

Map<String, dynamic> _$$GregorianDateImplToJson(_$GregorianDateImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'format': instance.format,
      'day': instance.day,
      'weekday': instance.weekday,
      'month': instance.month,
      'year': instance.year,
      'designation': instance.designation,
    };

_$HijriWeekdayImpl _$$HijriWeekdayImplFromJson(Map<String, dynamic> json) =>
    _$HijriWeekdayImpl(
      en: json['en'] as String?,
      ar: json['ar'] as String?,
    );

Map<String, dynamic> _$$HijriWeekdayImplToJson(_$HijriWeekdayImpl instance) =>
    <String, dynamic>{
      'en': instance.en,
      'ar': instance.ar,
    };

_$GregorianWeekdayImpl _$$GregorianWeekdayImplFromJson(
        Map<String, dynamic> json) =>
    _$GregorianWeekdayImpl(
      en: json['en'] as String?,
    );

Map<String, dynamic> _$$GregorianWeekdayImplToJson(
        _$GregorianWeekdayImpl instance) =>
    <String, dynamic>{
      'en': instance.en,
    };

_$HijriMonthImpl _$$HijriMonthImplFromJson(Map<String, dynamic> json) =>
    _$HijriMonthImpl(
      number: json['number'] as int?,
      en: json['en'] as String?,
      ar: json['ar'] as String?,
    );

Map<String, dynamic> _$$HijriMonthImplToJson(_$HijriMonthImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'en': instance.en,
      'ar': instance.ar,
    };

_$GregorianMonthImpl _$$GregorianMonthImplFromJson(Map<String, dynamic> json) =>
    _$GregorianMonthImpl(
      number: json['number'] as int?,
      en: json['en'] as String?,
      ar: json['ar'] as String?,
    );

Map<String, dynamic> _$$GregorianMonthImplToJson(
        _$GregorianMonthImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'en': instance.en,
      'ar': instance.ar,
    };

_$DesignationImpl _$$DesignationImplFromJson(Map<String, dynamic> json) =>
    _$DesignationImpl(
      abbreviated: json['abbreviated'] as String,
      expanded: json['expanded'] as String,
    );

Map<String, dynamic> _$$DesignationImplToJson(_$DesignationImpl instance) =>
    <String, dynamic>{
      'abbreviated': instance.abbreviated,
      'expanded': instance.expanded,
    };

_$PrayerMetaImpl _$$PrayerMetaImplFromJson(Map<String, dynamic> json) =>
    _$PrayerMetaImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      timezone: json['timezone'] as String,
      method: Method.fromJson(json['method'] as Map<String, dynamic>),
      latitudeAdjustmentMethod: json['latitudeAdjustmentMethod'] as String,
      midnightMode: json['midnightMode'] as String,
      school: json['school'] as String,
      offset: Offset.fromJson(json['offset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrayerMetaImplToJson(_$PrayerMetaImpl instance) =>
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

_$MethodImpl _$$MethodImplFromJson(Map<String, dynamic> json) => _$MethodImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      params: MethodParams.fromJson(json['params'] as Map<String, dynamic>),
      location:
          MethodLocation.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MethodImplToJson(_$MethodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'params': instance.params,
      'location': instance.location,
    };

_$MethodParamsImpl _$$MethodParamsImplFromJson(Map<String, dynamic> json) =>
    _$MethodParamsImpl(
      fajr: json['Fajr'],
      isha: json['Isha'],
      shafaq: json['shafaq'],
    );

Map<String, dynamic> _$$MethodParamsImplToJson(_$MethodParamsImpl instance) =>
    <String, dynamic>{
      'Fajr': instance.fajr,
      'Isha': instance.isha,
      'shafaq': instance.shafaq,
    };

_$MethodLocationImpl _$$MethodLocationImplFromJson(Map<String, dynamic> json) =>
    _$MethodLocationImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$MethodLocationImplToJson(
        _$MethodLocationImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$OffsetImpl _$$OffsetImplFromJson(Map<String, dynamic> json) => _$OffsetImpl(
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

Map<String, dynamic> _$$OffsetImplToJson(_$OffsetImpl instance) =>
    <String, dynamic>{
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
