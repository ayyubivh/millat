import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:millat/resources/home/bloc/models/home_models/event_of_the_month_model/event_of_the_month_model.dart';
import 'package:millat/resources/home/bloc/models/home_models/top_offers_model/top_offers_model.dart';
import 'package:millat/resources/home/bloc/service/home_services.dart';
import 'package:millat/utils/utils.dart';
import '../../../../../utils/string_constants.dart';
import '../../models/home_models/brand_of_the_day_model/brandofthe_day_model.dart';
import '../../models/home_models/hadit_of_the_day_model/hadit_oftheday_mode.dart';
import '../../models/home_models/large_discount_model/home_large_discounts_model.dart';
import '../../models/home_models/prayer_tracker_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeServices homeServices = HomeServices();
  HomeBloc() : super(HomeState.initial()) {
    on<FetchLargeDisountsBanner>(_fetchLargeDisountsBanner);
    on<FetchTopOffersBanner>(_fetchTopOffersBanner);
    on<FetchBrandofTheDay>(_fetchBrandofTheDay);
    on<FetchHadithOfTheDay>(_fetchHadithOfTheDay);
    on<FetchEventOfTheMonth>(_fetchEventOfTheMonth);
    on<FetchPrayerTrackerEvent>(_fetchPrayerTrackerEvent);
    on<AddPrayerToPrayerTracker>(_addPrayerToPrayerTracker);
    on<ChangeIndexofAllaysaysBg>(_changeIndexofAllaysaysBg);
  }

  _fetchLargeDisountsBanner(
      FetchLargeDisountsBanner event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await homeServices.fetchLargeDiscountsBanner();
      emit(state.copyWith(largeDiscountModel: data, isLoading: false));
      print("here large disocunt banner $data");
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _fetchTopOffersBanner(
      FetchTopOffersBanner event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await homeServices.fetchAllTopOfferBanner();
      emit(state.copyWith(topOffersModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _fetchBrandofTheDay(FetchBrandofTheDay event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await homeServices.fetchAllbrandOftheDay();
      emit(state.copyWith(brandOftheDayModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _fetchHadithOfTheDay(
      FetchHadithOfTheDay event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await homeServices.fetchHadithOftheDay();
      emit(state.copyWith(haditOfTheDayModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _fetchEventOfTheMonth(
      FetchEventOfTheMonth event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await homeServices.fetchEventOfTheMonth();
      emit(state.copyWith(eventOfTheMonthModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _fetchPrayerTrackerEvent(
      FetchPrayerTrackerEvent event, Emitter<HomeState> emit) async {
    try {
      final data = await homeServices.fetchDailyPrayerTracker(event.context,
          Utilities.formatDatePrayerTracker(event.date.toString()));

      emit(state.copyWith(
          dailyPrayerTrackerDate: Utilities.formatDate(event.date.toString())));
      final namaz = data.result.data?.namaz;

      if (data.result.data == null) {
        emit(state.copyWith(
          namazCompletedCount: 0,
          prayerTrackerFajr: false,
          prayerTrackerDhuhr: false,
          prayerTrackerAsr: false,
          prayerTrackerMagrib: false,
          prayerTrackerIsha: false,
        ));
      } else {
        emit(state.copyWith(
          namazCompletedCount: 0,
          prayerTrackerFajr: false,
          prayerTrackerDhuhr: false,
          prayerTrackerAsr: false,
          prayerTrackerMagrib: false,
          prayerTrackerIsha: false,
        ));

        for (var prayerTime in namaz!) {
          switch (prayerTime) {
            case Appstrings.fajr:
              emit(state.copyWith(
                prayerTrackerFajr: true,
                namazCompletedCount: state.namazCompletedCount + 1,
              ));
              break;
            case Appstrings.dhuhr:
              emit(state.copyWith(
                prayerTrackerDhuhr: true,
                namazCompletedCount: state.namazCompletedCount + 1,
              ));
              break;
            case Appstrings.asr:
              emit(state.copyWith(
                prayerTrackerAsr: true,
                namazCompletedCount: state.namazCompletedCount + 1,
              ));
              break;
            case Appstrings.magrib:
              emit(state.copyWith(
                prayerTrackerMagrib: true,
                namazCompletedCount: state.namazCompletedCount + 1,
              ));
              break;
            case Appstrings.isha:
              emit(state.copyWith(
                prayerTrackerIsha: true,
                namazCompletedCount: state.namazCompletedCount + 1,
              ));
              break;
          }
        }
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  bool isYesterday(DateTime dateTime) {
    final now = DateTime.now();
    final yesterday = DateTime(now.year, now.month, now.day - 1);
    return dateTime.isAfter(yesterday) && dateTime.isBefore(now);
  }

  _addPrayerToPrayerTracker(
      AddPrayerToPrayerTracker event, Emitter<HomeState> emit) async {
    try {
      DateTime now = DateTime.now();

      String formattedDate = DateFormat('dd-MM-yyyy').format(now);
      await homeServices.addDailyPrayerTracker(
          context: event.context,
          date: formattedDate,
          namazName: event.namazName);
      // switch (event.namazName) {
      //   case Appstrings.fajr:
      //     emit(state.copyWith(
      //         prayerTrackerFajr:
      //             state.prayerTrackerFajr == true ? false : true));
      //     break;
      //   case Appstrings.dhuhr:
      //     emit(state.copyWith(
      //         prayerTrackerDhuhr:
      //             state.prayerTrackerDhuhr == true ? false : true));
      //     break;
      //   case Appstrings.asr:
      //     emit(state.copyWith(
      //         prayerTrackerAsr: state.prayerTrackerAsr == true ? false : true));
      //     break;
      //   case Appstrings.magrib:
      //     emit(state.copyWith(
      //         prayerTrackerMagrib:
      //             state.prayerTrackerMagrib == true ? false : true));
      //     break;
      //   case Appstrings.isha:
      //     emit(state.copyWith(
      //         prayerTrackerIsha:
      //             state.prayerTrackerIsha == true ? false : true));
      //     break;
      //   default:
      // }
    } catch (e) {
      throw Exception(e);
    }
  }

  _changeIndexofAllaysaysBg(
      ChangeIndexofAllaysaysBg event, Emitter<HomeState> emit) {
    emit(state.copyWith(allaysBgindex: state.allaysBgindex + 1));
  }
}
