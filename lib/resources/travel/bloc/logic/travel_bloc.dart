import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:millat/resources/travel/bloc/models/travel_best_places_model.dart';
import 'package:millat/resources/travel/bloc/models/travel_popular_products_model.dart';
import 'package:millat/resources/travel/bloc/models/travel_product_by_cities_model.dart';
import 'package:millat/resources/travel/bloc/models/travel_products_model.dart';
import 'package:millat/resources/travel/bloc/models/travel_search_model.dart';
import 'package:millat/resources/travel/bloc/service/travel_services.dart';

import '../../../../enums/enumertations.dart';
import '../models/travel_cities_model.dart';
part 'travel_event.dart';
part 'travel_state.dart';
part 'travel_bloc.freezed.dart';

class TravelBloc extends Bloc<TravelEvent, TravelState> {
  final TravelServices travelServices = TravelServices();
  TravelBloc() : super(TravelState.initial()) {
    on<ChangeBannerIndex>(_changeBannerIndex);

    on<FetchTravelCities>(_fetchTravelCites);
    on<FetchProductByLocation>(_fetchProductByLocation);
    on<BookTravelEvent>(_bookTravelEvent);
    on<IncreaseGuestEvent>(_increaseGuestEvent);
    on<DecreaseGuestEvent>(_decreaseGuestEvent);
    on<SelectCountryEvent>(_selectCountryEvent);
    on<SaveSearchLocation>(_saveSearchLocation);
    on<ResetSearchData>(_resetSearchData);
    on<ShowCalendarEvent>(_showCalendarEvent);
    on<ChangeTravelTabIndex>(_changeTravelTabIndex);
    on<SelectDateRangeEvent>(_selectDateRangeEvent);
    on<FetchTravelSearchedProducts>(_fetchTravelSearchProduct);
    on<FetchTravelWishlistProducts>(_fetchWishlistProducts);
    on<AddTravelWishlist>(_addTravelWishlist);
    on<TravelBookingCompleted>(_travelBookingCompleted);
    on<FetchTravelHomeBannerPackages>(_fetchTravelHomeBannerPackages);
    on<FetchTravelPopularProducts>(_fetchTravelPopularProducts);
    on<FetchBestPlacesProducts>(_fetchTravelBestplacesProducts);
    on<FetchTravelSearchLocations>(_fetchTravelSearchLocations);
    on<FetchTravelProductsById>(_fetchTravelProductsById);
    on<PickMultipleImageEvent>(_pickMultipleImageEvent);
    on<FetchTravelProductsByCities>(_fetchTravelProductByCities);
  }

  _changeBannerIndex(ChangeBannerIndex event, Emitter<TravelState> emit) {
    emit(state.copyWith(index: event.index));
  }

  _fetchTravelPopularProducts(
      FetchTravelPopularProducts event, Emitter<TravelState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await travelServices.fetchPopularProducts();
      emit(state.copyWith(travelPopularProductsModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));

      throw Exception(e);
    }
  }

  _fetchTravelCites(FetchTravelCities event, Emitter<TravelState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await travelServices.fetchCities();
      emit(state.copyWith(travelCitiesModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));

      throw Exception(e);
    }
  }

  _fetchTravelProductsById(
      FetchTravelProductsById event, Emitter<TravelState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await travelServices.fetchProductsById(id: event.id);
      emit(state.copyWith(singleProductModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));

      throw Exception(e);
    }
  }

  _fetchTravelSearchLocations(
      FetchTravelSearchLocations event, Emitter<TravelState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      if (event.searchquery != "" || event.searchquery.isNotEmpty) {
        final data = await travelServices.fetchTravelSearchLocations(
            searchQuery: event.searchquery);
        if (data.isEmpty) {
          emit(state.copyWith(
            travelSearchLocationModels: [],
            isLoading: false,
            searchSuccess: "No Cities found",
          ));
        } else {
          emit(state.copyWith(
              travelSearchLocationModels: data,
              isLoading: false,
              searchSuccess: ""));
        }
      } else {
        emit(state.copyWith(
            travelSearchLocationModels: [],
            isLoading: false,
            searchSuccess: "No Cities found"));
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  _fetchTravelBestplacesProducts(
      FetchBestPlacesProducts event, Emitter<TravelState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await travelServices.fetchBestPlaces();
      emit(state.copyWith(isLoading: false, travelBestPlacesModel: data));
    } catch (e) {
      throw Exception(e);
    }
  }

  _fetchProductByLocation(
      FetchProductByLocation event, Emitter<TravelState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await travelServices.fetchProductsByLocation(
          location: event.location);
      emit(state.copyWith(productByLocationModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));

      throw Exception(e);
    }
  }

  _bookTravelEvent(BookTravelEvent event, Emitter<TravelState> emit) async {
    emit(state.copyWith(bookingSuccess: false, isLoading: true));
    try {
      final data = await travelServices.travelBooking(
          name: event.name,
          email: event.email,
          phoneNumber: event.phoneNumber,
          guestNumber: state.numberOfGuest,
          passPortPhoto: event.passPortPhoto,
          country: event.country,
          productId: event.productId);
      if (data['status'] == true) {
        emit(state.copyWith(bookingSuccess: true, isLoading: false));
      }
    } catch (e) {
      emit(state.copyWith(bookingSuccess: false, isLoading: false));
      throw Exception(e);
    }
  }

  _increaseGuestEvent(IncreaseGuestEvent event, Emitter<TravelState> emit) {
    final newState = state.copyWith(numberOfGuest: state.numberOfGuest + 1);
    emit(newState);
  }

  _decreaseGuestEvent(DecreaseGuestEvent event, Emitter<TravelState> emit) {
    final newState = state.copyWith(numberOfGuest: state.numberOfGuest - 1);
    emit(newState);
  }

  _selectCountryEvent(SelectCountryEvent event, Emitter<TravelState> emit) {
    emit(state.copyWith(country: event.country));
  }

  _saveSearchLocation(SaveSearchLocation event, Emitter<TravelState> emit) {
    emit(state.copyWith(searchedLocation: event.location));
  }

  _resetSearchData(ResetSearchData event, Emitter<TravelState> emit) {
    emit(state.copyWith(searchedLocation: ""));
  }

  _showCalendarEvent(ShowCalendarEvent event, Emitter<TravelState> emit) {
    emit(state.copyWith(showCalendar: !state.showCalendar));
  }

  _changeTravelTabIndex(ChangeTravelTabIndex event, Emitter<TravelState> emit) {
    emit(state.copyWith(tabIndex: event.index));
  }

  _selectDateRangeEvent(SelectDateRangeEvent event, Emitter<TravelState> emit) {
    emit(state.copyWith(
        selectedStartDate: event.start,
        selectedEndDate: event.end,
        focusDay: event.focusedDay));
    if (state.selectedStartDate != null && state.selectedEndDate != null) {
      emit(state.copyWith(
          formattedDateRang: _formateDate(state.selectedStartDate!)));
    }
  }

  _fetchTravelSearchProduct(
      FetchTravelSearchedProducts event, Emitter<TravelState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await travelServices.fetchTravelSearchedProducts(
          country: event.country, location: event.location, date: event.date);
      emit(state.copyWith(searchProducts: data, isLoading: false));
      print("State of bloc ${state.searchProducts}");
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      throw Exception(e);
    }
  }

  _fetchWishlistProducts(
      FetchTravelWishlistProducts event, Emitter<TravelState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await travelServices.fetchTravelWishlist();
      final wishListItems = data.map((e) => e.id).toList();

      emit(state.copyWith(
          wishlistProducts: data,
          isLoading: false,
          travelWishlistItems: Set<String>.from(wishListItems)));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      throw Exception(e);
    }
  }

  _addTravelWishlist(AddTravelWishlist event, Emitter<TravelState> emit) async {
    try {
      await travelServices.addWishList(
          productId: event.productId, wishlistType: event.wishlistType);
      if (event.wishlistType == TravelWishlist.add) {
        final updatedWishlist = state.travelWishlistItems?.toSet() ?? {}
          ..add(event.productId);
        emit(state.copyWith(travelWishlistItems: updatedWishlist));
      } else {
        final updatedWishList = state.travelWishlistItems?.toSet() ?? {};
        updatedWishList.remove(event.productId);
        final newWishlist = state.wishlistProducts
            ?.where((element) => element.id != event.productId)
            .toList();
        emit(state.copyWith(
            travelWishlistItems: updatedWishList,
            wishlistProducts: newWishlist));
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  _travelBookingCompleted(
      TravelBookingCompleted event, Emitter<TravelState> emit) {
    emit(state.copyWith(bookingSuccess: false));
  }

  _fetchTravelHomeBannerPackages(
      FetchTravelHomeBannerPackages event, Emitter<TravelState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await travelServices.fetchTravelHomeBannerPackages();

      emit(state.copyWith(
        travelHomeBannerPackages: data,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(isLoading: false));

      throw Exception(e);
    }
  }

  FutureOr<void> _pickMultipleImageEvent(
      PickMultipleImageEvent event, Emitter<TravelState> emit) async {
    final data = await travelServices.pickImages();

    emit(state.copyWith(formImages: data));
  }

  _fetchTravelProductByCities(event, Emitter<TravelState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await travelServices.fetchProductsByCities(
          country: event.country, city: event.city);
      debugPrint("travel cities product in bloc: $data");

      emit(state.copyWith(travelProductsByCitiesModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      throw Exception(e);
    }
  }
}

_formateDate(DateTime date) {
  DateFormat dateFormat = DateFormat('E MMM dd yyyy');
  String formattedDate = dateFormat.format(date);
  return formattedDate;
}
