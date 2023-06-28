// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentLocation,
    required TResult Function(String location) changeLocation,
    required TResult Function() fetchCities,
    required TResult Function(String query) searchCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentLocation,
    TResult? Function(String location)? changeLocation,
    TResult? Function()? fetchCities,
    TResult? Function(String query)? searchCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentLocation,
    TResult Function(String location)? changeLocation,
    TResult Function()? fetchCities,
    TResult Function(String query)? searchCities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCurrentLocation value) fetchCurrentLocation,
    required TResult Function(ChangeLocation value) changeLocation,
    required TResult Function(FetchCities value) fetchCities,
    required TResult Function(SearchCities value) searchCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult? Function(ChangeLocation value)? changeLocation,
    TResult? Function(FetchCities value)? fetchCities,
    TResult? Function(SearchCities value)? searchCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult Function(ChangeLocation value)? changeLocation,
    TResult Function(FetchCities value)? fetchCities,
    TResult Function(SearchCities value)? searchCities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res, LocationEvent>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchCurrentLocationCopyWith<$Res> {
  factory _$$FetchCurrentLocationCopyWith(_$FetchCurrentLocation value,
          $Res Function(_$FetchCurrentLocation) then) =
      __$$FetchCurrentLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCurrentLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$FetchCurrentLocation>
    implements _$$FetchCurrentLocationCopyWith<$Res> {
  __$$FetchCurrentLocationCopyWithImpl(_$FetchCurrentLocation _value,
      $Res Function(_$FetchCurrentLocation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCurrentLocation implements FetchCurrentLocation {
  const _$FetchCurrentLocation();

  @override
  String toString() {
    return 'LocationEvent.fetchCurrentLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCurrentLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentLocation,
    required TResult Function(String location) changeLocation,
    required TResult Function() fetchCities,
    required TResult Function(String query) searchCities,
  }) {
    return fetchCurrentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentLocation,
    TResult? Function(String location)? changeLocation,
    TResult? Function()? fetchCities,
    TResult? Function(String query)? searchCities,
  }) {
    return fetchCurrentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentLocation,
    TResult Function(String location)? changeLocation,
    TResult Function()? fetchCities,
    TResult Function(String query)? searchCities,
    required TResult orElse(),
  }) {
    if (fetchCurrentLocation != null) {
      return fetchCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCurrentLocation value) fetchCurrentLocation,
    required TResult Function(ChangeLocation value) changeLocation,
    required TResult Function(FetchCities value) fetchCities,
    required TResult Function(SearchCities value) searchCities,
  }) {
    return fetchCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult? Function(ChangeLocation value)? changeLocation,
    TResult? Function(FetchCities value)? fetchCities,
    TResult? Function(SearchCities value)? searchCities,
  }) {
    return fetchCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult Function(ChangeLocation value)? changeLocation,
    TResult Function(FetchCities value)? fetchCities,
    TResult Function(SearchCities value)? searchCities,
    required TResult orElse(),
  }) {
    if (fetchCurrentLocation != null) {
      return fetchCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class FetchCurrentLocation implements LocationEvent {
  const factory FetchCurrentLocation() = _$FetchCurrentLocation;
}

/// @nodoc
abstract class _$$ChangeLocationCopyWith<$Res> {
  factory _$$ChangeLocationCopyWith(
          _$ChangeLocation value, $Res Function(_$ChangeLocation) then) =
      __$$ChangeLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({String location});
}

/// @nodoc
class __$$ChangeLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$ChangeLocation>
    implements _$$ChangeLocationCopyWith<$Res> {
  __$$ChangeLocationCopyWithImpl(
      _$ChangeLocation _value, $Res Function(_$ChangeLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$ChangeLocation(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeLocation implements ChangeLocation {
  const _$ChangeLocation({required this.location});

  @override
  final String location;

  @override
  String toString() {
    return 'LocationEvent.changeLocation(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLocation &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLocationCopyWith<_$ChangeLocation> get copyWith =>
      __$$ChangeLocationCopyWithImpl<_$ChangeLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentLocation,
    required TResult Function(String location) changeLocation,
    required TResult Function() fetchCities,
    required TResult Function(String query) searchCities,
  }) {
    return changeLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentLocation,
    TResult? Function(String location)? changeLocation,
    TResult? Function()? fetchCities,
    TResult? Function(String query)? searchCities,
  }) {
    return changeLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentLocation,
    TResult Function(String location)? changeLocation,
    TResult Function()? fetchCities,
    TResult Function(String query)? searchCities,
    required TResult orElse(),
  }) {
    if (changeLocation != null) {
      return changeLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCurrentLocation value) fetchCurrentLocation,
    required TResult Function(ChangeLocation value) changeLocation,
    required TResult Function(FetchCities value) fetchCities,
    required TResult Function(SearchCities value) searchCities,
  }) {
    return changeLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult? Function(ChangeLocation value)? changeLocation,
    TResult? Function(FetchCities value)? fetchCities,
    TResult? Function(SearchCities value)? searchCities,
  }) {
    return changeLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult Function(ChangeLocation value)? changeLocation,
    TResult Function(FetchCities value)? fetchCities,
    TResult Function(SearchCities value)? searchCities,
    required TResult orElse(),
  }) {
    if (changeLocation != null) {
      return changeLocation(this);
    }
    return orElse();
  }
}

abstract class ChangeLocation implements LocationEvent {
  const factory ChangeLocation({required final String location}) =
      _$ChangeLocation;

  String get location;
  @JsonKey(ignore: true)
  _$$ChangeLocationCopyWith<_$ChangeLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCitiesCopyWith<$Res> {
  factory _$$FetchCitiesCopyWith(
          _$FetchCities value, $Res Function(_$FetchCities) then) =
      __$$FetchCitiesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCitiesCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$FetchCities>
    implements _$$FetchCitiesCopyWith<$Res> {
  __$$FetchCitiesCopyWithImpl(
      _$FetchCities _value, $Res Function(_$FetchCities) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCities implements FetchCities {
  const _$FetchCities();

  @override
  String toString() {
    return 'LocationEvent.fetchCities()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCities);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentLocation,
    required TResult Function(String location) changeLocation,
    required TResult Function() fetchCities,
    required TResult Function(String query) searchCities,
  }) {
    return fetchCities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentLocation,
    TResult? Function(String location)? changeLocation,
    TResult? Function()? fetchCities,
    TResult? Function(String query)? searchCities,
  }) {
    return fetchCities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentLocation,
    TResult Function(String location)? changeLocation,
    TResult Function()? fetchCities,
    TResult Function(String query)? searchCities,
    required TResult orElse(),
  }) {
    if (fetchCities != null) {
      return fetchCities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCurrentLocation value) fetchCurrentLocation,
    required TResult Function(ChangeLocation value) changeLocation,
    required TResult Function(FetchCities value) fetchCities,
    required TResult Function(SearchCities value) searchCities,
  }) {
    return fetchCities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult? Function(ChangeLocation value)? changeLocation,
    TResult? Function(FetchCities value)? fetchCities,
    TResult? Function(SearchCities value)? searchCities,
  }) {
    return fetchCities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult Function(ChangeLocation value)? changeLocation,
    TResult Function(FetchCities value)? fetchCities,
    TResult Function(SearchCities value)? searchCities,
    required TResult orElse(),
  }) {
    if (fetchCities != null) {
      return fetchCities(this);
    }
    return orElse();
  }
}

abstract class FetchCities implements LocationEvent {
  const factory FetchCities() = _$FetchCities;
}

/// @nodoc
abstract class _$$SearchCitiesCopyWith<$Res> {
  factory _$$SearchCitiesCopyWith(
          _$SearchCities value, $Res Function(_$SearchCities) then) =
      __$$SearchCitiesCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchCitiesCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$SearchCities>
    implements _$$SearchCitiesCopyWith<$Res> {
  __$$SearchCitiesCopyWithImpl(
      _$SearchCities _value, $Res Function(_$SearchCities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchCities(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCities implements SearchCities {
  const _$SearchCities({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'LocationEvent.searchCities(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCities &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCitiesCopyWith<_$SearchCities> get copyWith =>
      __$$SearchCitiesCopyWithImpl<_$SearchCities>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentLocation,
    required TResult Function(String location) changeLocation,
    required TResult Function() fetchCities,
    required TResult Function(String query) searchCities,
  }) {
    return searchCities(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentLocation,
    TResult? Function(String location)? changeLocation,
    TResult? Function()? fetchCities,
    TResult? Function(String query)? searchCities,
  }) {
    return searchCities?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentLocation,
    TResult Function(String location)? changeLocation,
    TResult Function()? fetchCities,
    TResult Function(String query)? searchCities,
    required TResult orElse(),
  }) {
    if (searchCities != null) {
      return searchCities(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCurrentLocation value) fetchCurrentLocation,
    required TResult Function(ChangeLocation value) changeLocation,
    required TResult Function(FetchCities value) fetchCities,
    required TResult Function(SearchCities value) searchCities,
  }) {
    return searchCities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult? Function(ChangeLocation value)? changeLocation,
    TResult? Function(FetchCities value)? fetchCities,
    TResult? Function(SearchCities value)? searchCities,
  }) {
    return searchCities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult Function(ChangeLocation value)? changeLocation,
    TResult Function(FetchCities value)? fetchCities,
    TResult Function(SearchCities value)? searchCities,
    required TResult orElse(),
  }) {
    if (searchCities != null) {
      return searchCities(this);
    }
    return orElse();
  }
}

abstract class SearchCities implements LocationEvent {
  const factory SearchCities({required final String query}) = _$SearchCities;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchCitiesCopyWith<_$SearchCities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationState {
  String get currentLocaion => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get shortAddress => throw _privateConstructorUsedError;
  CitiesModel? get citiesModel => throw _privateConstructorUsedError;
  List<StateData> get cities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call(
      {String currentLocaion,
      String errorMessage,
      String shortAddress,
      CitiesModel? citiesModel,
      List<StateData> cities});

  $CitiesModelCopyWith<$Res>? get citiesModel;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocaion = null,
    Object? errorMessage = null,
    Object? shortAddress = null,
    Object? citiesModel = freezed,
    Object? cities = null,
  }) {
    return _then(_value.copyWith(
      currentLocaion: null == currentLocaion
          ? _value.currentLocaion
          : currentLocaion // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      shortAddress: null == shortAddress
          ? _value.shortAddress
          : shortAddress // ignore: cast_nullable_to_non_nullable
              as String,
      citiesModel: freezed == citiesModel
          ? _value.citiesModel
          : citiesModel // ignore: cast_nullable_to_non_nullable
              as CitiesModel?,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<StateData>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CitiesModelCopyWith<$Res>? get citiesModel {
    if (_value.citiesModel == null) {
      return null;
    }

    return $CitiesModelCopyWith<$Res>(_value.citiesModel!, (value) {
      return _then(_value.copyWith(citiesModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currentLocaion,
      String errorMessage,
      String shortAddress,
      CitiesModel? citiesModel,
      List<StateData> cities});

  @override
  $CitiesModelCopyWith<$Res>? get citiesModel;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocaion = null,
    Object? errorMessage = null,
    Object? shortAddress = null,
    Object? citiesModel = freezed,
    Object? cities = null,
  }) {
    return _then(_$_Initial(
      currentLocaion: null == currentLocaion
          ? _value.currentLocaion
          : currentLocaion // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      shortAddress: null == shortAddress
          ? _value.shortAddress
          : shortAddress // ignore: cast_nullable_to_non_nullable
              as String,
      citiesModel: freezed == citiesModel
          ? _value.citiesModel
          : citiesModel // ignore: cast_nullable_to_non_nullable
              as CitiesModel?,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<StateData>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.currentLocaion,
      required this.errorMessage,
      required this.shortAddress,
      required this.citiesModel,
      required final List<StateData> cities})
      : _cities = cities;

  @override
  final String currentLocaion;
  @override
  final String errorMessage;
  @override
  final String shortAddress;
  @override
  final CitiesModel? citiesModel;
  final List<StateData> _cities;
  @override
  List<StateData> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'LocationState(currentLocaion: $currentLocaion, errorMessage: $errorMessage, shortAddress: $shortAddress, citiesModel: $citiesModel, cities: $cities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.currentLocaion, currentLocaion) ||
                other.currentLocaion == currentLocaion) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.shortAddress, shortAddress) ||
                other.shortAddress == shortAddress) &&
            (identical(other.citiesModel, citiesModel) ||
                other.citiesModel == citiesModel) &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentLocaion, errorMessage,
      shortAddress, citiesModel, const DeepCollectionEquality().hash(_cities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements LocationState {
  const factory _Initial(
      {required final String currentLocaion,
      required final String errorMessage,
      required final String shortAddress,
      required final CitiesModel? citiesModel,
      required final List<StateData> cities}) = _$_Initial;

  @override
  String get currentLocaion;
  @override
  String get errorMessage;
  @override
  String get shortAddress;
  @override
  CitiesModel? get citiesModel;
  @override
  List<StateData> get cities;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
