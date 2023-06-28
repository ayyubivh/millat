import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:intl/intl.dart';
import 'package:millat/resources/home/bloc/service/namaz_timing_service.dart';

import '../../models/prayer_timing_models/prayer_timing_model.dart';

part 'namaz_timing_event.dart';
part 'namaz_timing_state.dart';
part 'namaz_timing_bloc.freezed.dart';

class NamazTimingBloc extends Bloc<NamazTimingEvent, NamazTimingState> {
  final NamazTimingService namazTimingService = NamazTimingService();
  NamazTimingBloc() : super(NamazTimingState.initial()) {
    on<FetchPrayerTiming>(_fetchPrayerTiming);
    // on<PrayerTimingEvent>(_prayerTimingEvent);
    on<ShowImsakEvent>(_showImsakEvent);
    on<ChangeArtCalcMethod>(_changeArtCalcMethod);
  }

  _fetchPrayerTiming(
      FetchPrayerTiming event, Emitter<NamazTimingState> emit) async {
    try {
      final data = await namazTimingService.fetchPrayerTime(
          date: state.urlDate, school: state.school, method: state.method);
      final address = state.prayerModel?.data.meta.method.location;
      final currentAddress = await getAddress(
        address?.latitude ?? 0,
        address?.longitude ?? 0,
      );

      emit(state.copyWith(prayerModel: data, methodPlace: currentAddress));
      print('data on the bloc method 0 ${currentAddress}');
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
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

  Future<String> getAddress(double latitude, double longitude) async {
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
      print('Error: $e');
    }

    return '';
  }
  // _prayerTimingEvent(PrayerTimingEvent event, Emitter<NamazTimingState> emit) {
  //   if (state.prayerModel?.today != null) {
  //     final prayerTimings = state.prayerModel!.today;

  //     final currentNamaz = getCurrentNamaz(prayerTimings as dynamic);
  //     print('Current time on the bloc: $currentNamaz');
  //     emit(state.copyWith(currentNamaz: currentNamaz));

  //     final upcomingNamaz = getUpcomingNamaz(prayerTimings as dynamic);
  //     print('Upcoming time on the bloc: $upcomingNamaz');
  //     emit(state.copyWith(upcomingNamaz: upcomingNamaz));
  //   }
  // }

//   dynamic getCurrentNamaz(PrayerTimings prayerTimings) {
//     final currentTime = DateTime.now();
//     if (currentTime.hour < int.parse(prayerTimings.fajr.split(':')[0])) {
//       return {
//         'Isha': prayerTimings.isha,
//       };
//     } else if (currentTime.hour <
//         int.parse(prayerTimings.dhuhr.split(':')[0])) {
//       return {
//         'Fajr': prayerTimings.fajr,
//       };
//     } else if (currentTime.hour < int.parse(prayerTimings.asr.split(':')[0])) {
//       return {
//         'Dhuhr': prayerTimings.dhuhr,
//       };
//     } else if (currentTime.hour <
//         int.parse(prayerTimings.maghrib.split(':')[0])) {
//       return {
//         'Asr': prayerTimings.asr,
//       };
//     } else if (currentTime.hour < int.parse(prayerTimings.isha.split(':')[0])) {
//       return {
//         'Magrib': prayerTimings.maghrib,
//       };
//     } else {
//       return null;
//     }
//   }
// }

// dynamic getUpcomingNamaz(
//   PrayerTimings prayerTimings,
// ) {
//   final currentTime = DateTime.now();
//   print(
//       'currentTime here on the bloc ${currentTime.hour} fajr time ${int.parse(prayerTimings.fajr.split(':')[0])}');

//   if (currentTime.hour < int.parse(prayerTimings.fajr.split(':')[0])) {
//     return {
//       'Fajr': prayerTimings.fajr,
//     };
//   } else if (currentTime.hour < int.parse(prayerTimings.dhuhr.split(':')[0])) {
//     return {
//       'Dhuhr': prayerTimings.dhuhr,
//     };
//   } else if (currentTime.hour < int.parse(prayerTimings.asr.split(':')[0])) {
//     return {
//       'Asr': prayerTimings.asr,
//     };
//   } else if (currentTime.hour < int.parse(prayerTimings.asr.split(':')[0])) {
//     return {
//       'Maghrib': prayerTimings.maghrib,
//     };
//   } else if (currentTime.hour < int.parse(prayerTimings.isha.split(':')[0])) {
//     return {
//       'Isha': prayerTimings.isha,
//     };
//   } else {
//     return null;
//   }
}
