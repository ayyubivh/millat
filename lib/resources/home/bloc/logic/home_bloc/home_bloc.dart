import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/home/bloc/models/home_models/event_of_the_month_model/event_of_the_month_model.dart';
import 'package:millat/resources/home/bloc/models/home_models/top_offers_model/top_offers_model.dart';
import 'package:millat/resources/home/bloc/models/notification/get_notification_model.dart';
import 'package:millat/resources/home/bloc/service/home_services.dart';
import 'package:millat/resources/home/bloc/service/notification_service.dart';
import 'package:millat/utils/utils.dart';
import '../../../../../utils/string_constants.dart';
import '../../models/home_models/allah_says/allah_says_model.dart';
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
    on<FetchLargeDiscountsBanner>(_fetchLargeDisountsBanner);
    on<FetchTopOffersBanner>(_fetchTopOffersBanner);
    on<FetchBrandofTheDay>(_fetchBrandofTheDay);
    on<FetchHadithOfTheDay>(_fetchHadithOfTheDay);
    on<FetchEventOfTheMonth>(_fetchEventOfTheMonth);
    on<FetchPrayerTrackerEvent>(_fetchPrayerTrackerEvent);
    on<AddPrayerToPrayerTracker>(_addPrayerToPrayerTracker);
    on<ChangeIndexofAllaysaysBg>(_changeIndexofAllaysaysBg);
    on<ChangeHomeTabIndexEvent>(_changeHomeTabIndexEvent);
    on<RemoveDailyPrayerTrackerNamaz>(_removeDailyPrayerTrackerNamaz);
    on<ChangeTinterCardSwipeOption>(_changeTinterCardSwipeOption);
    on<ChangeCompassThemeEvent>(_changeCompassThemeEvent);
    on<ChangeCompassThemeIndex>(_changeCompassThemeIndex);
    on<FetchNotificationApi>(_fetchNotificationApi);
    on<AddMarkReadNotificationEvent>(_addMarkReadEvent);
    on<ChangeHomeBannerIndex>(_changeHomeBannerIndex);
    on<ChangeEventOfTheMonthIndex>(_changeEventOfMonthIndex);
    on<FetchAllahSays>(_fetchAllahSays);
    on<ChangeTranslationLanguageIndex>(_changeTranslationChangeIndex);
  }

  _fetchLargeDisountsBanner(
      FetchLargeDiscountsBanner event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await homeServices.fetchLargeDiscountsBanner();
      emit(state.copyWith(largeDiscountModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      throw Exception(e);
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
      final data = await homeServices.addDailyPrayerTracker(
          context: event.context,
          date: formattedDate,
          namazName: event.namazName);
      if (data['status'] == 200) {}
    } catch (e) {
      throw Exception(e);
    }
  }

  _removeDailyPrayerTrackerNamaz(
      RemoveDailyPrayerTrackerNamaz event, Emitter<HomeState> emit) async {
    try {
      DateTime now = DateTime.now();

      String formattedDate = DateFormat('dd-MM-yyyy').format(now);
      await homeServices.removeDailyPrayerTracker(
          context: event.context, date: formattedDate, namaz: event.namazName);
    } catch (e) {
      throw Exception(e);
    }
  }

  _changeIndexofAllaysaysBg(
      ChangeIndexofAllaysaysBg event, Emitter<HomeState> emit) {
    emit(state.copyWith(allaysBgindex: state.allaysBgindex + 1));
  }

  _changeHomeTabIndexEvent(
      ChangeHomeTabIndexEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(homeTabIndex: event.newIndex));
  }

  _changeTinterCardSwipeOption(
      ChangeTinterCardSwipeOption event, Emitter<HomeState> emit) {
    emit(state.copyWith(tinderCardSwipVal: event.value));
  }

  _changeCompassThemeEvent(
      ChangeCompassThemeEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(compassTheme: event.compassTheme));
  }

  _changeCompassThemeIndex(
      ChangeCompassThemeIndex event, Emitter<HomeState> emit) {
    emit(state.copyWith(compassThemeIndex: event.index));
  }

  _fetchNotificationApi(
      FetchNotificationApi event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await NotificationService().fetchNotficationApi(
        context: event.context,
      );
      emit(state.copyWith(notificationModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      throw Exception(e);
    }
  }

  _addMarkReadEvent(
      AddMarkReadNotificationEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      await NotificationService()
          .addReadMark(context: event.context, id: event.id);

      final updatedData =
          state.notificationModel?.result?.data?.map((notification) {
        if (notification.id == event.id) {
          return notification.copyWith(
            isReadByUser: [...notification.isReadByUser!, event.id],
          );
        }
        return notification;
      }).toList();

      final updatedNotificationModel = state.notificationModel?.copyWith(
        result: state.notificationModel?.result?.copyWith(
          data: updatedData,
        ),
      );

      emit(state.copyWith(
        isLoading: false,
        notificationModel: updatedNotificationModel,
      ));
    } catch (e) {
      emit(state.copyWith(isLoading: false));

      throw Exception(e);
    }
  }

  _changeHomeBannerIndex(ChangeHomeBannerIndex event, Emitter<HomeState> emit) {
    emit(state.copyWith(homeBannerIndex: event.index));
  }

  _changeEventOfMonthIndex(
      ChangeEventOfTheMonthIndex event, Emitter<HomeState> emit) {
    emit(state.copyWith(eventOfMonthIndex: event.index));
  }

  _fetchAllahSays(FetchAllahSays event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await homeServices.fetchAllahSaysApi();
      emit(state.copyWith(allaySaysModel: data, isLoading: false));
      print(state.allaySaysModel);
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      throw Exception(e);
    }
  }

  _changeTranslationChangeIndex(
      ChangeTranslationLanguageIndex event, Emitter<HomeState> emit) {
    emit(state.copyWith(translationLanguageIndex: event.index));
    print(state.translationLanguageIndex);
  }
}
