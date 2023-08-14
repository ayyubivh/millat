import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/home/bloc/db/prayer_tracker_db_functions.dart';
import 'package:millat/resources/home/bloc/models/home_models/event_of_the_month_model/event_of_the_month_model.dart';
import 'package:millat/resources/home/bloc/models/home_models/top_offers_model/top_offers_model.dart';
import 'package:millat/resources/home/bloc/service/home_services.dart';
import 'package:millat/utils/string_constants.dart';

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
  }

  _fetchLargeDisountsBanner(
      FetchLargeDisountsBanner event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await homeServices.fetchLargeDiscountsBanner();
      emit(state.copyWith(largeDiscountModel: data, isLoading: false));
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
      final data = await PrayerTrackerDB.instance.getAllPrayerTracker();

      if (data.isNotEmpty) {
        final now = DateTime.now();

        if (now.isAfter(data[0].date)) {
          emit(state.copyWith(
            prayerTracker: data,
            prayerTrackerDhuhr: false,
            prayerTrackerAsr: false,
            prayerTrackerFajr: false,
            prayerTrackerMagrib: false,
            prayerTrackerIsha: false,
          ));
        } else {
          emit(state.copyWith(
            prayerTracker: data,
            prayerTrackerDhuhr: data[0].dhuhr,
            prayerTrackerAsr: data[0].asr,
            prayerTrackerFajr: data[0].fajr,
            prayerTrackerMagrib: data[0].magrib,
            prayerTrackerIsha: data[0].isha,
          ));
        }
        print(
            'Here are all prayer states: date ${data[0].date} asr: ${state.prayerTrackerAsr} dhuhr:${state.prayerTrackerDhuhr} magrib:${state.prayerTrackerMagrib}');
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
      AddPrayerToPrayerTracker event, Emitter<HomeState> emit) {
    try {
      switch (event.namazName) {
        case Appstrings.fajr:
          emit(state.copyWith(
              prayerTrackerFajr:
                  state.prayerTrackerFajr == true ? false : true));
          break;
        case Appstrings.dhuhr:
          emit(state.copyWith(
              prayerTrackerDhuhr:
                  state.prayerTrackerDhuhr == true ? false : true));
          break;
        case Appstrings.asr:
          emit(state.copyWith(
              prayerTrackerAsr: state.prayerTrackerAsr == true ? false : true));
          break;
        case Appstrings.magrib:
          emit(state.copyWith(
              prayerTrackerMagrib:
                  state.prayerTrackerMagrib == true ? false : true));
          break;
        case Appstrings.isha:
          emit(state.copyWith(
              prayerTrackerIsha:
                  state.prayerTrackerIsha == true ? false : true));
          break;
        default:
      }

      final data = PrayerTrackerModel(
        fajr: state.prayerTrackerFajr,
        dhuhr: state.prayerTrackerDhuhr,
        asr: state.prayerTrackerAsr,
        magrib: state.prayerTrackerMagrib,
        isha: state.prayerTrackerIsha,
        date: DateTime.now(),
      );

      PrayerTrackerDB.instance.addCollection(data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
