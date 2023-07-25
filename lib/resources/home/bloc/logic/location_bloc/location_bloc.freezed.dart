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
    required TResult Function() loadMoreCities,
    required TResult Function(String query) searchCities,
    required TResult Function() changeLocationOnToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentLocation,
    TResult? Function(String location)? changeLocation,
    TResult? Function()? fetchCities,
    TResult? Function()? loadMoreCities,
    TResult? Function(String query)? searchCities,
    TResult? Function()? changeLocationOnToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentLocation,
    TResult Function(String location)? changeLocation,
    TResult Function()? fetchCities,
    TResult Function()? loadMoreCities,
    TResult Function(String query)? searchCities,
    TResult Function()? changeLocationOnToggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCurrentLocation value) fetchCurrentLocation,
    required TResult Function(ChangeLocation value) changeLocation,
    required TResult Function(FetchCities value) fetchCities,
    required TResult Function(LoadMoreCities value) loadMoreCities,
    required TResult Function(SearchCities value) searchCities,
    required TResult Function(ChangeLocationOnToggle value)
        changeLocationOnToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult? Function(ChangeLocation value)? changeLocation,
    TResult? Function(FetchCities value)? fetchCities,
    TResult? Function(LoadMoreCities value)? loadMoreCities,
    TResult? Function(SearchCities value)? searchCities,
    TResult? Function(ChangeLocationOnToggle value)? changeLocationOnToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult Function(ChangeLocation value)? changeLocation,
    TResult Function(FetchCities value)? fetchCities,
    TResult Function(LoadMoreCities value)? loadMoreCities,
    TResult Function(SearchCities value)? searchCities,
    TResult Function(ChangeLocationOnToggle value)? changeLocationOnToggle,
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

class _$FetchCurrentLocation
    with DiagnosticableTreeMixin
    implements FetchCurrentLocation {
  const _$FetchCurrentLocation();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.fetchCurrentLocation()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'LocationEvent.fetchCurrentLocation'));
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
    required TResult Function() loadMoreCities,
    required TResult Function(String query) searchCities,
    required TResult Function() changeLocationOnToggle,
  }) {
    return fetchCurrentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentLocation,
    TResult? Function(String location)? changeLocation,
    TResult? Function()? fetchCities,
    TResult? Function()? loadMoreCities,
    TResult? Function(String query)? searchCities,
    TResult? Function()? changeLocationOnToggle,
  }) {
    return fetchCurrentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentLocation,
    TResult Function(String location)? changeLocation,
    TResult Function()? fetchCities,
    TResult Function()? loadMoreCities,
    TResult Function(String query)? searchCities,
    TResult Function()? changeLocationOnToggle,
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
    required TResult Function(LoadMoreCities value) loadMoreCities,
    required TResult Function(SearchCities value) searchCities,
    required TResult Function(ChangeLocationOnToggle value)
        changeLocationOnToggle,
  }) {
    return fetchCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult? Function(ChangeLocation value)? changeLocation,
    TResult? Function(FetchCities value)? fetchCities,
    TResult? Function(LoadMoreCities value)? loadMoreCities,
    TResult? Function(SearchCities value)? searchCities,
    TResult? Function(ChangeLocationOnToggle value)? changeLocationOnToggle,
  }) {
    return fetchCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult Function(ChangeLocation value)? changeLocation,
    TResult Function(FetchCities value)? fetchCities,
    TResult Function(LoadMoreCities value)? loadMoreCities,
    TResult Function(SearchCities value)? searchCities,
    TResult Function(ChangeLocationOnToggle value)? changeLocationOnToggle,
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

class _$ChangeLocation with DiagnosticableTreeMixin implements ChangeLocation {
  const _$ChangeLocation({required this.location});

  @override
  final String location;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.changeLocation(location: $location)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.changeLocation'))
      ..add(DiagnosticsProperty('location', location));
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
    required TResult Function() loadMoreCities,
    required TResult Function(String query) searchCities,
    required TResult Function() changeLocationOnToggle,
  }) {
    return changeLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentLocation,
    TResult? Function(String location)? changeLocation,
    TResult? Function()? fetchCities,
    TResult? Function()? loadMoreCities,
    TResult? Function(String query)? searchCities,
    TResult? Function()? changeLocationOnToggle,
  }) {
    return changeLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentLocation,
    TResult Function(String location)? changeLocation,
    TResult Function()? fetchCities,
    TResult Function()? loadMoreCities,
    TResult Function(String query)? searchCities,
    TResult Function()? changeLocationOnToggle,
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
    required TResult Function(LoadMoreCities value) loadMoreCities,
    required TResult Function(SearchCities value) searchCities,
    required TResult Function(ChangeLocationOnToggle value)
        changeLocationOnToggle,
  }) {
    return changeLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult? Function(ChangeLocation value)? changeLocation,
    TResult? Function(FetchCities value)? fetchCities,
    TResult? Function(LoadMoreCities value)? loadMoreCities,
    TResult? Function(SearchCities value)? searchCities,
    TResult? Function(ChangeLocationOnToggle value)? changeLocationOnToggle,
  }) {
    return changeLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult Function(ChangeLocation value)? changeLocation,
    TResult Function(FetchCities value)? fetchCities,
    TResult Function(LoadMoreCities value)? loadMoreCities,
    TResult Function(SearchCities value)? searchCities,
    TResult Function(ChangeLocationOnToggle value)? changeLocationOnToggle,
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

class _$FetchCities with DiagnosticableTreeMixin implements FetchCities {
  const _$FetchCities();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.fetchCities()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LocationEvent.fetchCities'));
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
    required TResult Function() loadMoreCities,
    required TResult Function(String query) searchCities,
    required TResult Function() changeLocationOnToggle,
  }) {
    return fetchCities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentLocation,
    TResult? Function(String location)? changeLocation,
    TResult? Function()? fetchCities,
    TResult? Function()? loadMoreCities,
    TResult? Function(String query)? searchCities,
    TResult? Function()? changeLocationOnToggle,
  }) {
    return fetchCities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentLocation,
    TResult Function(String location)? changeLocation,
    TResult Function()? fetchCities,
    TResult Function()? loadMoreCities,
    TResult Function(String query)? searchCities,
    TResult Function()? changeLocationOnToggle,
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
    required TResult Function(LoadMoreCities value) loadMoreCities,
    required TResult Function(SearchCities value) searchCities,
    required TResult Function(ChangeLocationOnToggle value)
        changeLocationOnToggle,
  }) {
    return fetchCities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult? Function(ChangeLocation value)? changeLocation,
    TResult? Function(FetchCities value)? fetchCities,
    TResult? Function(LoadMoreCities value)? loadMoreCities,
    TResult? Function(SearchCities value)? searchCities,
    TResult? Function(ChangeLocationOnToggle value)? changeLocationOnToggle,
  }) {
    return fetchCities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult Function(ChangeLocation value)? changeLocation,
    TResult Function(FetchCities value)? fetchCities,
    TResult Function(LoadMoreCities value)? loadMoreCities,
    TResult Function(SearchCities value)? searchCities,
    TResult Function(ChangeLocationOnToggle value)? changeLocationOnToggle,
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
abstract class _$$LoadMoreCitiesCopyWith<$Res> {
  factory _$$LoadMoreCitiesCopyWith(
          _$LoadMoreCities value, $Res Function(_$LoadMoreCities) then) =
      __$$LoadMoreCitiesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreCitiesCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LoadMoreCities>
    implements _$$LoadMoreCitiesCopyWith<$Res> {
  __$$LoadMoreCitiesCopyWithImpl(
      _$LoadMoreCities _value, $Res Function(_$LoadMoreCities) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreCities with DiagnosticableTreeMixin implements LoadMoreCities {
  const _$LoadMoreCities();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.loadMoreCities()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LocationEvent.loadMoreCities'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreCities);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentLocation,
    required TResult Function(String location) changeLocation,
    required TResult Function() fetchCities,
    required TResult Function() loadMoreCities,
    required TResult Function(String query) searchCities,
    required TResult Function() changeLocationOnToggle,
  }) {
    return loadMoreCities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentLocation,
    TResult? Function(String location)? changeLocation,
    TResult? Function()? fetchCities,
    TResult? Function()? loadMoreCities,
    TResult? Function(String query)? searchCities,
    TResult? Function()? changeLocationOnToggle,
  }) {
    return loadMoreCities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentLocation,
    TResult Function(String location)? changeLocation,
    TResult Function()? fetchCities,
    TResult Function()? loadMoreCities,
    TResult Function(String query)? searchCities,
    TResult Function()? changeLocationOnToggle,
    required TResult orElse(),
  }) {
    if (loadMoreCities != null) {
      return loadMoreCities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCurrentLocation value) fetchCurrentLocation,
    required TResult Function(ChangeLocation value) changeLocation,
    required TResult Function(FetchCities value) fetchCities,
    required TResult Function(LoadMoreCities value) loadMoreCities,
    required TResult Function(SearchCities value) searchCities,
    required TResult Function(ChangeLocationOnToggle value)
        changeLocationOnToggle,
  }) {
    return loadMoreCities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult? Function(ChangeLocation value)? changeLocation,
    TResult? Function(FetchCities value)? fetchCities,
    TResult? Function(LoadMoreCities value)? loadMoreCities,
    TResult? Function(SearchCities value)? searchCities,
    TResult? Function(ChangeLocationOnToggle value)? changeLocationOnToggle,
  }) {
    return loadMoreCities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult Function(ChangeLocation value)? changeLocation,
    TResult Function(FetchCities value)? fetchCities,
    TResult Function(LoadMoreCities value)? loadMoreCities,
    TResult Function(SearchCities value)? searchCities,
    TResult Function(ChangeLocationOnToggle value)? changeLocationOnToggle,
    required TResult orElse(),
  }) {
    if (loadMoreCities != null) {
      return loadMoreCities(this);
    }
    return orElse();
  }
}

abstract class LoadMoreCities implements LocationEvent {
  const factory LoadMoreCities() = _$LoadMoreCities;
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

class _$SearchCities with DiagnosticableTreeMixin implements SearchCities {
  const _$SearchCities({required this.query});

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.searchCities(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.searchCities'))
      ..add(DiagnosticsProperty('query', query));
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
    required TResult Function() loadMoreCities,
    required TResult Function(String query) searchCities,
    required TResult Function() changeLocationOnToggle,
  }) {
    return searchCities(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentLocation,
    TResult? Function(String location)? changeLocation,
    TResult? Function()? fetchCities,
    TResult? Function()? loadMoreCities,
    TResult? Function(String query)? searchCities,
    TResult? Function()? changeLocationOnToggle,
  }) {
    return searchCities?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentLocation,
    TResult Function(String location)? changeLocation,
    TResult Function()? fetchCities,
    TResult Function()? loadMoreCities,
    TResult Function(String query)? searchCities,
    TResult Function()? changeLocationOnToggle,
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
    required TResult Function(LoadMoreCities value) loadMoreCities,
    required TResult Function(SearchCities value) searchCities,
    required TResult Function(ChangeLocationOnToggle value)
        changeLocationOnToggle,
  }) {
    return searchCities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult? Function(ChangeLocation value)? changeLocation,
    TResult? Function(FetchCities value)? fetchCities,
    TResult? Function(LoadMoreCities value)? loadMoreCities,
    TResult? Function(SearchCities value)? searchCities,
    TResult? Function(ChangeLocationOnToggle value)? changeLocationOnToggle,
  }) {
    return searchCities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult Function(ChangeLocation value)? changeLocation,
    TResult Function(FetchCities value)? fetchCities,
    TResult Function(LoadMoreCities value)? loadMoreCities,
    TResult Function(SearchCities value)? searchCities,
    TResult Function(ChangeLocationOnToggle value)? changeLocationOnToggle,
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
abstract class _$$ChangeLocationOnToggleCopyWith<$Res> {
  factory _$$ChangeLocationOnToggleCopyWith(_$ChangeLocationOnToggle value,
          $Res Function(_$ChangeLocationOnToggle) then) =
      __$$ChangeLocationOnToggleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeLocationOnToggleCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$ChangeLocationOnToggle>
    implements _$$ChangeLocationOnToggleCopyWith<$Res> {
  __$$ChangeLocationOnToggleCopyWithImpl(_$ChangeLocationOnToggle _value,
      $Res Function(_$ChangeLocationOnToggle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeLocationOnToggle
    with DiagnosticableTreeMixin
    implements ChangeLocationOnToggle {
  const _$ChangeLocationOnToggle();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.changeLocationOnToggle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'LocationEvent.changeLocationOnToggle'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeLocationOnToggle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentLocation,
    required TResult Function(String location) changeLocation,
    required TResult Function() fetchCities,
    required TResult Function() loadMoreCities,
    required TResult Function(String query) searchCities,
    required TResult Function() changeLocationOnToggle,
  }) {
    return changeLocationOnToggle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentLocation,
    TResult? Function(String location)? changeLocation,
    TResult? Function()? fetchCities,
    TResult? Function()? loadMoreCities,
    TResult? Function(String query)? searchCities,
    TResult? Function()? changeLocationOnToggle,
  }) {
    return changeLocationOnToggle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentLocation,
    TResult Function(String location)? changeLocation,
    TResult Function()? fetchCities,
    TResult Function()? loadMoreCities,
    TResult Function(String query)? searchCities,
    TResult Function()? changeLocationOnToggle,
    required TResult orElse(),
  }) {
    if (changeLocationOnToggle != null) {
      return changeLocationOnToggle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCurrentLocation value) fetchCurrentLocation,
    required TResult Function(ChangeLocation value) changeLocation,
    required TResult Function(FetchCities value) fetchCities,
    required TResult Function(LoadMoreCities value) loadMoreCities,
    required TResult Function(SearchCities value) searchCities,
    required TResult Function(ChangeLocationOnToggle value)
        changeLocationOnToggle,
  }) {
    return changeLocationOnToggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult? Function(ChangeLocation value)? changeLocation,
    TResult? Function(FetchCities value)? fetchCities,
    TResult? Function(LoadMoreCities value)? loadMoreCities,
    TResult? Function(SearchCities value)? searchCities,
    TResult? Function(ChangeLocationOnToggle value)? changeLocationOnToggle,
  }) {
    return changeLocationOnToggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCurrentLocation value)? fetchCurrentLocation,
    TResult Function(ChangeLocation value)? changeLocation,
    TResult Function(FetchCities value)? fetchCities,
    TResult Function(LoadMoreCities value)? loadMoreCities,
    TResult Function(SearchCities value)? searchCities,
    TResult Function(ChangeLocationOnToggle value)? changeLocationOnToggle,
    required TResult orElse(),
  }) {
    if (changeLocationOnToggle != null) {
      return changeLocationOnToggle(this);
    }
    return orElse();
  }
}

abstract class ChangeLocationOnToggle implements LocationEvent {
  const factory ChangeLocationOnToggle() = _$ChangeLocationOnToggle;
}

/// @nodoc
mixin _$LocationState {
  String get currentLocaion => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get shortAddress => throw _privateConstructorUsedError;
  CitiesModel? get citiesModel => throw _privateConstructorUsedError;
  List<CountryData> get cities => throw _privateConstructorUsedError;
  List<CountryData> get searchCities => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get itemsPerPage => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  List<List<String>> get loadedCities => throw _privateConstructorUsedError;
  bool get hasReachedEnd => throw _privateConstructorUsedError;
  bool get isPermissionDenied => throw _privateConstructorUsedError;

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
      List<CountryData> cities,
      List<CountryData> searchCities,
      int currentPage,
      int itemsPerPage,
      String location,
      bool isLoadingMore,
      List<List<String>> loadedCities,
      bool hasReachedEnd,
      bool isPermissionDenied});

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
    Object? searchCities = null,
    Object? currentPage = null,
    Object? itemsPerPage = null,
    Object? location = null,
    Object? isLoadingMore = null,
    Object? loadedCities = null,
    Object? hasReachedEnd = null,
    Object? isPermissionDenied = null,
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
              as List<CountryData>,
      searchCities: null == searchCities
          ? _value.searchCities
          : searchCities // ignore: cast_nullable_to_non_nullable
              as List<CountryData>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      loadedCities: null == loadedCities
          ? _value.loadedCities
          : loadedCities // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      isPermissionDenied: null == isPermissionDenied
          ? _value.isPermissionDenied
          : isPermissionDenied // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$_LocationStateCopyWith(
          _$_LocationState value, $Res Function(_$_LocationState) then) =
      __$$_LocationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currentLocaion,
      String errorMessage,
      String shortAddress,
      CitiesModel? citiesModel,
      List<CountryData> cities,
      List<CountryData> searchCities,
      int currentPage,
      int itemsPerPage,
      String location,
      bool isLoadingMore,
      List<List<String>> loadedCities,
      bool hasReachedEnd,
      bool isPermissionDenied});

  @override
  $CitiesModelCopyWith<$Res>? get citiesModel;
}

/// @nodoc
class __$$_LocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_LocationState>
    implements _$$_LocationStateCopyWith<$Res> {
  __$$_LocationStateCopyWithImpl(
      _$_LocationState _value, $Res Function(_$_LocationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocaion = null,
    Object? errorMessage = null,
    Object? shortAddress = null,
    Object? citiesModel = freezed,
    Object? cities = null,
    Object? searchCities = null,
    Object? currentPage = null,
    Object? itemsPerPage = null,
    Object? location = null,
    Object? isLoadingMore = null,
    Object? loadedCities = null,
    Object? hasReachedEnd = null,
    Object? isPermissionDenied = null,
  }) {
    return _then(_$_LocationState(
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
              as List<CountryData>,
      searchCities: null == searchCities
          ? _value._searchCities
          : searchCities // ignore: cast_nullable_to_non_nullable
              as List<CountryData>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      loadedCities: null == loadedCities
          ? _value._loadedCities
          : loadedCities // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      isPermissionDenied: null == isPermissionDenied
          ? _value.isPermissionDenied
          : isPermissionDenied // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LocationState with DiagnosticableTreeMixin implements _LocationState {
  const _$_LocationState(
      {required this.currentLocaion,
      required this.errorMessage,
      required this.shortAddress,
      required this.citiesModel,
      required final List<CountryData> cities,
      required final List<CountryData> searchCities,
      required this.currentPage,
      required this.itemsPerPage,
      required this.location,
      required this.isLoadingMore,
      required final List<List<String>> loadedCities,
      required this.hasReachedEnd,
      required this.isPermissionDenied})
      : _cities = cities,
        _searchCities = searchCities,
        _loadedCities = loadedCities;

  @override
  final String currentLocaion;
  @override
  final String errorMessage;
  @override
  final String shortAddress;
  @override
  final CitiesModel? citiesModel;
  final List<CountryData> _cities;
  @override
  List<CountryData> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  final List<CountryData> _searchCities;
  @override
  List<CountryData> get searchCities {
    if (_searchCities is EqualUnmodifiableListView) return _searchCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchCities);
  }

  @override
  final int currentPage;
  @override
  final int itemsPerPage;
  @override
  final String location;
  @override
  final bool isLoadingMore;
  final List<List<String>> _loadedCities;
  @override
  List<List<String>> get loadedCities {
    if (_loadedCities is EqualUnmodifiableListView) return _loadedCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loadedCities);
  }

  @override
  final bool hasReachedEnd;
  @override
  final bool isPermissionDenied;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationState(currentLocaion: $currentLocaion, errorMessage: $errorMessage, shortAddress: $shortAddress, citiesModel: $citiesModel, cities: $cities, searchCities: $searchCities, currentPage: $currentPage, itemsPerPage: $itemsPerPage, location: $location, isLoadingMore: $isLoadingMore, loadedCities: $loadedCities, hasReachedEnd: $hasReachedEnd, isPermissionDenied: $isPermissionDenied)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationState'))
      ..add(DiagnosticsProperty('currentLocaion', currentLocaion))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('shortAddress', shortAddress))
      ..add(DiagnosticsProperty('citiesModel', citiesModel))
      ..add(DiagnosticsProperty('cities', cities))
      ..add(DiagnosticsProperty('searchCities', searchCities))
      ..add(DiagnosticsProperty('currentPage', currentPage))
      ..add(DiagnosticsProperty('itemsPerPage', itemsPerPage))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('isLoadingMore', isLoadingMore))
      ..add(DiagnosticsProperty('loadedCities', loadedCities))
      ..add(DiagnosticsProperty('hasReachedEnd', hasReachedEnd))
      ..add(DiagnosticsProperty('isPermissionDenied', isPermissionDenied));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationState &&
            (identical(other.currentLocaion, currentLocaion) ||
                other.currentLocaion == currentLocaion) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.shortAddress, shortAddress) ||
                other.shortAddress == shortAddress) &&
            (identical(other.citiesModel, citiesModel) ||
                other.citiesModel == citiesModel) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality()
                .equals(other._searchCities, _searchCities) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            const DeepCollectionEquality()
                .equals(other._loadedCities, _loadedCities) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd) &&
            (identical(other.isPermissionDenied, isPermissionDenied) ||
                other.isPermissionDenied == isPermissionDenied));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentLocaion,
      errorMessage,
      shortAddress,
      citiesModel,
      const DeepCollectionEquality().hash(_cities),
      const DeepCollectionEquality().hash(_searchCities),
      currentPage,
      itemsPerPage,
      location,
      isLoadingMore,
      const DeepCollectionEquality().hash(_loadedCities),
      hasReachedEnd,
      isPermissionDenied);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationStateCopyWith<_$_LocationState> get copyWith =>
      __$$_LocationStateCopyWithImpl<_$_LocationState>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {required final String currentLocaion,
      required final String errorMessage,
      required final String shortAddress,
      required final CitiesModel? citiesModel,
      required final List<CountryData> cities,
      required final List<CountryData> searchCities,
      required final int currentPage,
      required final int itemsPerPage,
      required final String location,
      required final bool isLoadingMore,
      required final List<List<String>> loadedCities,
      required final bool hasReachedEnd,
      required final bool isPermissionDenied}) = _$_LocationState;

  @override
  String get currentLocaion;
  @override
  String get errorMessage;
  @override
  String get shortAddress;
  @override
  CitiesModel? get citiesModel;
  @override
  List<CountryData> get cities;
  @override
  List<CountryData> get searchCities;
  @override
  int get currentPage;
  @override
  int get itemsPerPage;
  @override
  String get location;
  @override
  bool get isLoadingMore;
  @override
  List<List<String>> get loadedCities;
  @override
  bool get hasReachedEnd;
  @override
  bool get isPermissionDenied;
  @override
  @JsonKey(ignore: true)
  _$$_LocationStateCopyWith<_$_LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
