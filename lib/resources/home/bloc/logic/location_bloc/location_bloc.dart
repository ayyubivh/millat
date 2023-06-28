import 'dart:async';

import 'package:bloc/bloc.dart';
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
  }
  FutureOr<void> _fetchCities(
      FetchCities event, Emitter<LocationState> emit) async {
    try {
      final data = await locationService.fetchCities();
      final List<StateData> cities = data?.data.states ?? [];

      emit(state.copyWith(
        citiesModel: data,
        cities: cities,
      ));
    } catch (e, stackTrace) {
      print('Error fetching cities: $e');
      print('Stack trace: $stackTrace');
      emit(state.copyWith(
          errorMessage: 'An error occurred while fetching cities.'));
    }
  }

  FutureOr<void> _searchCities(
      SearchCities event, Emitter<LocationState> emit) {
    final query = event.query.toLowerCase();
    if (query.isEmpty) {
      emit(state.copyWith(cities: state.cities));
    } else {
      final searchResults = state.cities.where((city) {
        return city.name!.toLowerCase().contains(query);
      }).toList();
      emit(state.copyWith(cities: searchResults));
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
        emit(state.copyWith(errorMessage: 'Service Disabled'));

        return;
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      currentLocation = await Geolocator.getCurrentPosition();

      String currentAddress = await getAddress(
        currentLocation.latitude,
        currentLocation.longitude,
      );

      emit(state.copyWith(currentLocaion: currentAddress));
    } catch (e) {
      throw Exception(e);
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
}
