import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:intl/intl.dart';
import 'package:millat/resources/home/bloc/service/namaz_timing_service.dart';
import 'package:millat/resources/home/bloc/service/notification_service.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/namaz_methods/namaz_mthods_model.dart';
import '../../models/prayer_timing_models/prayer_timing_model.dart';

part 'namaz_timing_event.dart';
part 'namaz_timing_state.dart';
part 'namaz_timing_bloc.freezed.dart';

class NamazTimingBloc extends Bloc<NamazTimingEvent, NamazTimingState> {
  final NamazTimingService namazTimingService = NamazTimingService();
  final NotificationService notificationService = NotificationService();

  NamazTimingBloc() : super(NamazTimingState.initial()) {
    on<FetchPrayerTiming>(_fetchPrayerTiming);
    on<PrayerTimingEvent>(_prayerTimingEvent);

    on<ChangeArtCalcMethod>(_changeArtCalcMethod);
    on<FetchNamazMethods>(_fetchNamazMethods);
    on<ChangeNamazMethods>(_changeNamaMethods);
    on<ChangeSchoolEvent>(_changeSchoolEvent);
    on<ChangeHighLatitudeMethod>(_changeHighLatitudeMethod);
    on<OnNotiyOnOffEvent>(_onNotiyOnOffEvent);
    on<ChangeIndex>(_changeIndex);

    on<AddAutoDetectValToLocalStorage>(_addAutoDetectValToLocalStorage);
    on<GetAutoDetetectLocationFromLocalStorage>(
        _getAutoDetetectLocationFromLocalStorage);
    on<AddAutomaticSettingToLocalStorage>(_addAutomaticSettingToLocalStorage);
    on<GetAutomaticSettingsFromLocalStorage>(
        _getAutomaticSettingsFromLocalStorage);
    on<AddShowimsakValToLocalStorage>(_addShowimsakValToLocalStorage);
    on<GetShowimskValFromLocalStorage>(_getShowimskValFromLocalStorage);
    on<AddCalculationMethodToLocalStorage>(_addCalculationMethodToLocalStorage);
    on<GetCalculationMethodFromStorage>(_getCalculationMethodFromStorage);
    on<AddAsrCalculationMethodToLocalStorage>(
        _addAsrCalculationMethodToLocalStorage);
    on<GetAsrCalculationMethodFromStorage>(_getAsrCalculationMethodFromStorage);
    on<AddHighLatitudeMethodsToLocalStorage>(
        _addHighLatitudeMethodsToLocalStorage);
    on<GetHighLatitudeMethodsToLocalStorage>(
        _getHighLatitudeMethodsToLocalStorage);
    on<FetchNamazTimingNotificationsFromLocalStorage>(
        _fetchNamazTimingNotificationsFromLocalStorage);
  }

  _fetchPrayerTiming(
      FetchPrayerTiming event, Emitter<NamazTimingState> emit) async {
    try {
      final data = await namazTimingService.fetchPrayerTime(
        context: event.context,
        date: state.urlDate,
        school: state.school,
        method: state.method,
        highLatMethodVal: state.highLatMethodVal,
      );
      final address = state.prayerModel?.data.meta.method.location;
      final currentAddress = await _getAddress(
        address?.latitude ?? 0,
        address?.longitude ?? 0,
      );

      final dateDay = data.data.date.hijri.day;
      final dateMonth = data.data.date.hijri.month.en;
      final dateYear = data.data.date.hijri.year;
      final method = data.data.meta.method;
      final methodId = method.id;
      final methodaName = method.name;
      emit(state.copyWith(
        prayerModel: data,
        methodPlace: currentAddress,
        arabicDate: "$dateDay $dateMonth $dateYear",
        method: methodId,
        namazMethodName: methodaName,
      ));
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  FutureOr<void> _changeSchoolEvent(
      ChangeSchoolEvent event, Emitter<NamazTimingState> emit) async {
    try {
      final data = await namazTimingService.fetchPrayerTime(
          context: event.context,
          date: state.urlDate,
          school: event.school,
          method: state.method,
          highLatMethodVal: state.highLatMethodVal);
      emit(state.copyWith(prayerModel: data, school: event.school));
    } catch (e) {
      print('error occured when fetch ${e.toString()}');
      throw Exception(e);
    }
  }

  Future<void> _changeHighLatitudeMethod(
      ChangeHighLatitudeMethod event, Emitter<NamazTimingState> emit) async {
    // emit(state.copyWith(
    //   isHighLatMethodVal: event.boolValue,
    // ));
    try {
      final data = await namazTimingService.fetchPrayerTime(
        context: event.context,
        date: state.urlDate,
        school: state.school,
        method: state.method,
        highLatMethodVal: event.numValue,
      );

      emit(state.copyWith(
        prayerModel: data,
        highLatMethodVal: event.numValue,
      ));
      // print(
      //     'high late method datas ${data.data.meta.latitudeAdjustmentMethod}');
    } catch (e) {
      print('error occurred on the change high Latitude Method $e');
      throw Exception(e);
    }
  }

  FutureOr<void> _changeArtCalcMethod(
      ChangeArtCalcMethod event, Emitter<NamazTimingState> emit) {
    emit(state.copyWith(isArtCalcMehod: state.school == 1 ? true : false));
  }

  FutureOr<void> _fetchNamazMethods(
      FetchNamazMethods event, Emitter<NamazTimingState> emit) async {
    try {
      final data = await namazTimingService.fetchPrayerMethods();
      final sortedMethods = data.data!.values.toList()
        ..sort((a, b) => a.id!.compareTo(b.id!));

      emit(state.copyWith(
          namazMethodsModel: sortedMethods,
          namazMethodName: data.data!.values.first.name!));
    } catch (e) {
      print('error occured on the bloc of fetch namaz methods $e');
      throw Exception(e);
    }
  }

  Future<void> _changeNamaMethods(
      ChangeNamazMethods event, Emitter<NamazTimingState> emit) async {
    try {
      final data = await namazTimingService.fetchPrayerTime(
          context: event.context,
          date: state.urlDate,
          school: state.school,
          method: event.method,
          highLatMethodVal: state.highLatMethodVal);
      emit(state.copyWith(
        prayerModel: data,
        method: event.method,
        namazMethodName: data.data.meta.method.name,
      ));
    } catch (e) {
      print('error on the change methods on the bloc ${e.toString()}');
      throw Exception(e);
    }
  }

  Future<String> _getAddress(double latitude, double longitude) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude, longitude);
      if (placemarks.isNotEmpty) {
        Placemark placemark = placemarks[0];
        // String address = placemark.thoroughfare ?? '';
        // String locality = placemark.locality ?? '';
        // String subAdministrativeArea = placemark.subAdministrativeArea ?? '';
        String administrativeArea = placemark.administrativeArea ?? '';
        String country = placemark.country ?? '';

        String currentAddress = '$administrativeArea, $country';
        return currentAddress;
      }
    } catch (e) {
      debugPrint('Error: $e');
    }

    return '';
  }

  void scheduleInitialNamazTimingNotification(
      DateTime upcomingNamazTime, String namazTimeName) {
    NotificationService().scheduleNotification(
      scheduledNotificationDateTime: upcomingNamazTime,
      title: 'Namaz Reminder',
      body: namazTimeName,
      isNotificationOn: true,
    );
  }

  _prayerTimingEvent(PrayerTimingEvent event, Emitter<NamazTimingState> emit) {
    final prayerTimings = state.prayerModel?.data.timings;

    if (prayerTimings != null) {
      final currentNamaz = getCurrentNamaz(prayerTimings);
      final currentNamazTime = getNamazTime(prayerTimings, currentNamaz);
      setNamazTimeNotification(prayerTimings);
      emit(state.copyWith(
          currentNamaz: {'name': currentNamaz, 'time': currentNamazTime}));

      final upcomingNamaz = getUpcomingNamaz(prayerTimings, currentNamaz);
      final upcomingNamazTime = getNamazTime(prayerTimings, upcomingNamaz);
      emit(state.copyWith(
          upcomingNamaz: {'name': upcomingNamaz, 'time': upcomingNamazTime}));
    }
  }

  String getCurrentNamaz(PrayerTimings prayerTimings) {
    final currentTime = DateTime.now();
    final fajrTime = parseTime(prayerTimings.fajr!);
    final sunriseTime = parseTime(prayerTimings.sunrise!);
    final dhuhrTime = parseTime(prayerTimings.dhuhr!);
    final asrTime = parseTime(prayerTimings.asr!);
    final maghribTime = parseTime(prayerTimings.maghrib!);
    final ishaTime = parseTime(prayerTimings.isha!);

    if (currentTime.isBefore(fajrTime)) {
      return 'Isha';
    } else if (currentTime.isBefore(sunriseTime)) {
      return 'Fajr';
    } else if (currentTime.isBefore(dhuhrTime)) {
      return 'Sunrise';
    } else if (currentTime.isBefore(asrTime)) {
      return 'Dhuhr';
    } else if (currentTime.isBefore(maghribTime)) {
      return 'Asr';
    } else if (currentTime.isBefore(ishaTime)) {
      return 'Maghrib';
    } else {
      return 'Isha';
    }
  }

  setNamazTimeNotification(PrayerTimings prayerTimings) {
    if (prayerTimings.asr != null && state.notifyAsr == true) {
      scheduleInitialNamazTimingNotification(
          formatTime(prayerTimings.asr!), 'Asr');
    }
    if (prayerTimings.dhuhr != null && state.notifyDhuhr == true) {
      scheduleInitialNamazTimingNotification(
          formatTime(prayerTimings.dhuhr!), 'Dhuhr');
    }
    if (prayerTimings.fajr != null && state.notifyFajr == true) {
      scheduleInitialNamazTimingNotification(
          formatTime(prayerTimings.fajr!), 'Fajr');
    }
    if (prayerTimings.isha != null && state.notifyIsha == true) {
      scheduleInitialNamazTimingNotification(
          formatTime(prayerTimings.isha!), 'Isha');
    }
    if (prayerTimings.maghrib != null && state.notifyMagrib == true) {
      scheduleInitialNamazTimingNotification(
          formatTime(prayerTimings.maghrib!), 'Maghrib');
    }
    if (prayerTimings.sunrise != null && state.notifySunrise == true) {
      scheduleInitialNamazTimingNotification(
          formatTime(prayerTimings.sunrise!), 'Sunrise');
    }
    if (prayerTimings.imsak != null && state.notifyQiyam == true) {
      scheduleInitialNamazTimingNotification(
          formatTime(prayerTimings.imsak!), 'Qiyam');
    }
  }

  DateTime formatTime(String time) {
    var parsedCurrentNamazTime = DateFormat('HH:mm').parse(time);
    var now = DateTime.now();

    DateTime scheduledDateTime = DateTime(now.year, now.month, now.day,
        parsedCurrentNamazTime.hour, parsedCurrentNamazTime.minute);
    return scheduledDateTime;
  }

  String getUpcomingNamaz(PrayerTimings prayerTimings, String currentNamaz) {
    switch (currentNamaz) {
      case 'Isha':
        return 'Fajr';
      case 'Fajr':
        return 'Sunrise';
      case 'Sunrise':
        return 'Dhuhr';
      case 'Dhuhr':
        return 'Asr';
      case 'Asr':
        return 'Maghrib';
      case 'Maghrib':
        return 'Isha';
      default:
        return 'No upcoming namaz';
    }
  }

  String getNamazTime(PrayerTimings prayerTimings, String namazName) {
    switch (namazName) {
      case 'Fajr':
        return prayerTimings.fajr!;
      case 'Sunrise':
        return prayerTimings.sunrise!;
      case 'Dhuhr':
        return prayerTimings.dhuhr!;
      case 'Asr':
        return prayerTimings.asr!;
      case 'Maghrib':
        return prayerTimings.maghrib!;
      case 'Isha':
        return prayerTimings.isha!;
      default:
        return '';
    }
  }

  DateTime parseTime(String timeString) {
    final components = timeString.split(':');
    final hour = int.parse(components[0]);
    final minute = int.parse(components[1]);
    return DateTime(DateTime.now().year, DateTime.now().month,
        DateTime.now().day, hour, minute);
  }

  _fetchNamazTimingNotificationsFromLocalStorage(
      FetchNamazTimingNotificationsFromLocalStorage event,
      Emitter<NamazTimingState> emit) async {
    final notifyFajr =
        await _getBoolFromSharedPreferences(Appstrings.fajr, nullVal: true);
    final notifySunrise =
        await _getBoolFromSharedPreferences(Appstrings.sunrise, nullVal: true);
    final notifyDhuhr =
        await _getBoolFromSharedPreferences(Appstrings.dhuhr, nullVal: true);
    final notifyAsr =
        await _getBoolFromSharedPreferences(Appstrings.asr, nullVal: true);
    final notifyMagrib =
        await _getBoolFromSharedPreferences(Appstrings.magrib, nullVal: true);
    final notifyIsha =
        await _getBoolFromSharedPreferences(Appstrings.isha, nullVal: true);
    final notifyQiyam =
        await _getBoolFromSharedPreferences(Appstrings.qiyam, nullVal: true);

    emit(state.copyWith(
      notifyFajr: notifyFajr,
      notifySunrise: notifySunrise,
      notifyDhuhr: notifyDhuhr,
      notifyAsr: notifyAsr,
      notifyMagrib: notifyMagrib,
      notifyIsha: notifyIsha,
      notifyQiyam: notifyQiyam,
    ));
  }

  FutureOr<void> _onNotiyOnOffEvent(
      OnNotiyOnOffEvent event, Emitter<NamazTimingState> emit) async {
    switch (event.index) {
      case 0:
        final updatedFajrNotify = !state.notifyFajr;
        // print(updatedFajrNotify);
        emit(state.copyWith(notifyFajr: updatedFajrNotify));
        _saveBoolToSharedPreferences(Appstrings.fajr, updatedFajrNotify);
        break;
      case 1:
        final updatedSunriseNotify = !state.notifySunrise;
        emit(state.copyWith(notifySunrise: updatedSunriseNotify));
        _saveBoolToSharedPreferences(Appstrings.sunrise, updatedSunriseNotify);
        break;
      case 2:
        final updatedDhuhrNotify = !state.notifyDhuhr;
        emit(state.copyWith(notifyDhuhr: updatedDhuhrNotify));
        _saveBoolToSharedPreferences(Appstrings.dhuhr, updatedDhuhrNotify);
        break;
      case 3:
        final updatedAsrNotify = !state.notifyAsr;
        emit(state.copyWith(notifyAsr: updatedAsrNotify));
        _saveBoolToSharedPreferences(Appstrings.asr, updatedAsrNotify);
        break;
      case 4:
        final updatedMagribNotify = !state.notifyMagrib;
        emit(state.copyWith(notifyMagrib: updatedMagribNotify));
        _saveBoolToSharedPreferences(Appstrings.magrib, updatedMagribNotify);
        break;
      case 5:
        final updatedIshaNotify = !state.notifyIsha;
        emit(state.copyWith(notifyIsha: updatedIshaNotify));
        _saveBoolToSharedPreferences(Appstrings.isha, updatedIshaNotify);
        break;
      case 6:
        final updatedQiyamNotify = !state.notifyQiyam;
        emit(state.copyWith(notifyQiyam: updatedQiyamNotify));
        _saveBoolToSharedPreferences(Appstrings.qiyam, updatedQiyamNotify);
        break;
      default:
    }
  }

  _changeIndex(ChangeIndex event, Emitter<NamazTimingState> emit) {
    emit(state.copyWith(index: event.index));
  }

  _addAutoDetectValToLocalStorage(event, Emitter<NamazTimingState> emit) {
    emit(state.copyWith(autoDetectLocationDb: event.value));

    _saveBoolToSharedPreferences(Appstrings.autoDetectLocationKey, event.value);
  }

  _getAutoDetetectLocationFromLocalStorage(
      GetAutoDetetectLocationFromLocalStorage event,
      Emitter<NamazTimingState> emit) async {
    try {
      final val = await _getBoolFromSharedPreferences(
          Appstrings.autoDetectLocationKey,
          nullVal: true);
      emit(state.copyWith(autoDetectLocationDb: val));
    } catch (e) {
      throw Exception(e);
    }
  }

  _addAutomaticSettingToLocalStorage(
      AddAutomaticSettingToLocalStorage event, Emitter<NamazTimingState> emit) {
    emit(state.copyWith(automaticSettingsDb: event.value));

    _saveBoolToSharedPreferences(Appstrings.autoMaticSettingsKey, event.value);
  }

  _getAutomaticSettingsFromLocalStorage(
      GetAutomaticSettingsFromLocalStorage event,
      Emitter<NamazTimingState> emit) async {
    try {
      final val = await _getBoolFromSharedPreferences(
          Appstrings.autoMaticSettingsKey,
          nullVal: true);
      emit(state.copyWith(automaticSettingsDb: val));
    } catch (e) {
      throw Exception(e);
    }
  }

  _addShowimsakValToLocalStorage(
      AddShowimsakValToLocalStorage event, Emitter<NamazTimingState> emit) {
    emit(state.copyWith(showImsak: event.value));

    _saveBoolToSharedPreferences(Appstrings.showImsakKey, event.value);
  }

  _getShowimskValFromLocalStorage(GetShowimskValFromLocalStorage event,
      Emitter<NamazTimingState> emit) async {
    try {
      final val = await _getBoolFromSharedPreferences(Appstrings.showImsakKey,
          nullVal: false);
      emit(state.copyWith(
        showImsak: val,
      ));
    } catch (e) {
      throw Exception(e);
    }
  }

  _addCalculationMethodToLocalStorage(AddCalculationMethodToLocalStorage event,
      Emitter<NamazTimingState> emit) {
    _saveIntToSharedPreferences(Appstrings.calculationMethodKey, event.value);
  }

  _getCalculationMethodFromStorage(GetCalculationMethodFromStorage event,
      Emitter<NamazTimingState> emit) async {
    try {
      final val = await _getIntFromSharedPreferences(
          Appstrings.calculationMethodKey, 1);
      emit(state.copyWith(method: val));
    } catch (e) {
      throw Exception(e);
    }
  }

  _addAsrCalculationMethodToLocalStorage(
      AddAsrCalculationMethodToLocalStorage event,
      Emitter<NamazTimingState> emit) {
    emit(state.copyWith(school: event.value));
    _saveIntToSharedPreferences(
        Appstrings.asrCalculationMethodKey, event.value);
  }

  _getAsrCalculationMethodFromStorage(GetAsrCalculationMethodFromStorage event,
      Emitter<NamazTimingState> emit) async {
    try {
      final val = await _getIntFromSharedPreferences(
          Appstrings.asrCalculationMethodKey, 0);
      emit(state.copyWith(school: val));
    } catch (e) {
      throw Exception(e);
    }
  }

  _addHighLatitudeMethodsToLocalStorage(
      AddHighLatitudeMethodsToLocalStorage event,
      Emitter<NamazTimingState> emit) {
    emit(state.copyWith(highLatMethodVal: event.value));
    _saveIntToSharedPreferences(Appstrings.highLatitudeMethodsKey, event.value);
  }

  _getHighLatitudeMethodsToLocalStorage(
      GetHighLatitudeMethodsToLocalStorage event,
      Emitter<NamazTimingState> emit) async {
    try {
      final val = await _getIntFromSharedPreferences(
          Appstrings.highLatitudeMethodsKey, 0);
      emit(state.copyWith(highLatMethodVal: val));
    } catch (e) {
      throw Exception(e);
    }
  }

  // reusable method for adding and gettin from localstorage
  Future<void> _saveIntToSharedPreferences(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(key, value);
  }

  Future<int> _getIntFromSharedPreferences(String key, int nullVal) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final value = prefs.getInt(key);
    return value ?? nullVal;
  }

  Future<void> _saveBoolToSharedPreferences(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  Future<bool> _getBoolFromSharedPreferences(String key,
      {bool nullVal = false}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final value = prefs.getBool(key);
    return value ?? nullVal;
  }
}
