import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:millat/resources/home/bloc/service/locatio_service.dart';

import '../../models/cities_models/cities_model.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final LocationService locationService = LocationService();
  LocationBloc() : super(LocationState.initial()) {
    on<FetchCurrentLocation>(_fetchCurrentLocation);
    on<FetchCities>(_fetchCities);
    on<SearchCities>(_searchCities);
    on<ChangeLocation>(_changeLocation);
    on<ChangeLocationOnToggle>(_changeLocationOnToggle);
  }
  Future<void> _fetchCities(
      FetchCities event, Emitter<LocationState> emit) async {
    try {
      final data = await locationService.fetchCities();
      final List<CountryData> cities = data!.data.toList();
      emit(state.copyWith(
          citiesModel: data, cities: cities, searchCities: cities));
      // print('cities on the bloc $data');
    } catch (e, stackTrace) {
      if (kDebugMode) {
        print('Error fetching cities: $e');
        print('Stack trace: $stackTrace');
      }
      emit(state.copyWith(
        errorMessage: 'An error occurred while fetching cities.',
      ));
    }
  }

  FutureOr<void> _searchCities(
      SearchCities event, Emitter<LocationState> emit) async {
    final query = event.query.toLowerCase();

    if (query.isEmpty) {
      emit(state.copyWith(searchCities: state.cities));
      print('empty query cities ${state.cities}');
    } else {
      final searchResults = state.searchCities
          .map((countryData) => CountryData(
                iso3: countryData.iso3,
                iso2: countryData.iso2,
                country: countryData.country,
                cities: countryData.cities
                    .where((city) => city.toLowerCase().contains(query))
                    .toList(),
              ))
          .where((countryData) => countryData.cities.isNotEmpty)
          .toList();

      emit(state.copyWith(searchCities: searchResults));
    }
  }

  FutureOr<void> _fetchCurrentLocation(
      FetchCurrentLocation event, Emitter<LocationState> emit) async {
    try {
      bool servicePermission = false;
      LocationPermission permission;
      Position currentLocation;

      servicePermission = await Geolocator.isLocationServiceEnabled();
      if (!servicePermission) {
        emit(state.copyWith(errorMessage: 'Location service is disabled'));
        return null;
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          emit(state.copyWith(errorMessage: 'Location permission denied'));
          return null;
        }
      }

      currentLocation = await Geolocator.getCurrentPosition();

      String currentAddress = await getAddress(
        currentLocation.latitude,
        currentLocation.longitude,
      );

      emit(state.copyWith(
          currentLocaion: currentAddress, location: currentAddress));
      print('Current address: $currentAddress');
    } catch (e) {
      emit(state.copyWith(errorMessage: 'Error fetching location'));
      print('Error fetching location: $e');
    }
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

  FutureOr<void> _changeLocation(
      ChangeLocation event, Emitter<LocationState> emit) {
    try {
      emit(state.copyWith(currentLocaion: event.location));
    } catch (e) {
      throw Exception(e);
    }
  }

  FutureOr<void> _changeLocationOnToggle(
      ChangeLocationOnToggle event, Emitter<LocationState> emit) {
    emit(state.copyWith(currentLocaion: state.location));
  }
}
