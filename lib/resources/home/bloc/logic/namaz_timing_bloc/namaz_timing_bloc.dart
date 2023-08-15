import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:intl/intl.dart';
import 'package:millat/resources/home/bloc/db/namaz_method_functions.dart';
import 'package:millat/resources/home/bloc/service/namaz_timing_service.dart';
import 'package:millat/resources/home/bloc/service/notification_service.dart';

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
    on<ShowImsakEvent>(_showImsakEvent);
    on<ChangeArtCalcMethod>(_changeArtCalcMethod);
    on<FetchNamazMethods>(_fetchNamazMethods);
    on<ChangeNamazMethods>(_changeNamaMethods);
    on<ChangeSchoolEvent>(_changeSchoolEvent);
    on<ChangeHighLatitudeMethod>(_changeHighLatitudeMethod);
    on<OnNotiyOnOffEvent>(_onNotiyOnOffEvent);
    on<ChangeIndex>(_changeIndex);
    on<FetchNamazMethodDb>(_fetchNamazMethodDb);
    on<AddNamazMethodDb>(_addNamazMethodDb);
  }

  _fetchPrayerTiming(
      FetchPrayerTiming event, Emitter<NamazTimingState> emit) async {
    try {
      final data = await namazTimingService.fetchPrayerTime(
          context: event.context,
          date: state.urlDate,
          school: state.school,
          method: state.method,
          highLatMethodVal: state.highLatMethodVal);
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
    emit(state.copyWith(
        isArtCalcMehod: state.isArtCalcMehod == false ? true : false));
  }

  FutureOr<void> _showImsakEvent(
      ShowImsakEvent event, Emitter<NamazTimingState> emit) {
    emit(
      state.copyWith(showImsak: state.showImsak == false ? true : false),
    );
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

    if (currentTime.isBefore(parseTime(prayerTimings.fajr!))) {
      return 'Isha';
    } else if (currentTime.isBefore(parseTime(prayerTimings.dhuhr!))) {
      return 'Fajr';
    } else if (currentTime.isBefore(parseTime(prayerTimings.asr!))) {
      return 'Dhuhr';
    } else if (currentTime.isBefore(parseTime(prayerTimings.maghrib!))) {
      return 'Asr';
    } else if (currentTime.isBefore(parseTime(prayerTimings.isha!))) {
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

  FutureOr<void> _onNotiyOnOffEvent(
      OnNotiyOnOffEvent event, Emitter<NamazTimingState> emit) {
    switch (event.index) {
      case 0:
        emit(state.copyWith(
            notifyFajr: state.notifyFajr == false ? true : false));
        break;
      case 1:
        emit(state.copyWith(
            notifySunrise: state.notifySunrise == false ? true : false));
        break;
      case 2:
        emit(state.copyWith(
            notifyDhuhr: state.notifyDhuhr == false ? true : false));
        break;
      case 3:
        emit(
            state.copyWith(notifyAsr: state.notifyAsr == false ? true : false));
        break;
      case 4:
        emit(state.copyWith(
            notifyMagrib: state.notifyMagrib == false ? true : false));
        break;
      case 5:
        emit(state.copyWith(
            notifyIsha: state.notifyIsha == false ? true : false));
        break;
      case 6:
        emit(state.copyWith(
            notifyQiyam: state.notifyQiyam == false ? true : false));
        break;
      default:
    }
  }

  _changeIndex(ChangeIndex event, Emitter<NamazTimingState> emit) {
    emit(state.copyWith(index: event.index));
  }

  _fetchNamazMethodDb(
      FetchNamazMethodDb event, Emitter<NamazTimingState> emit) async {
    try {
      final data = await NamazMethodDB.instance.getAllNamazMehods();
      if (data.isNotEmpty) {
        emit(state.copyWith(
          autoDetectLocationDb: data[0].autoDetectLocation,
          automaticSettingsDb: data[0].automaticSetting,
          calculationMethod: data[0].calculationMethod,
          asrCalculationMehod: data[0].asrCalculationMethod,
          highLatMethodVal: data[0].highLatitudeMethods,
          manualCorrections: data[0].manualCorrections,
          showImsak: data[0].showImsak,
        ));
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  _addNamazMethodDb(event, Emitter<NamazTimingState> emit) {}
}
