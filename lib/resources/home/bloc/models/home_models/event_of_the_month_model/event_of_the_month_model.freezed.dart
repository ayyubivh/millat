// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_of_the_month_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventOfTheMonthModel _$EventOfTheMonthModelFromJson(Map<String, dynamic> json) {
  return _EventOfTheMonthModel.fromJson(json);
}

/// @nodoc
mixin _$EventOfTheMonthModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  EventResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventOfTheMonthModelCopyWith<EventOfTheMonthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventOfTheMonthModelCopyWith<$Res> {
  factory $EventOfTheMonthModelCopyWith(EventOfTheMonthModel value,
          $Res Function(EventOfTheMonthModel) then) =
      _$EventOfTheMonthModelCopyWithImpl<$Res, EventOfTheMonthModel>;
  @useResult
  $Res call({int? status, String? message, String? error, EventResult? result});

  $EventResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$EventOfTheMonthModelCopyWithImpl<$Res,
        $Val extends EventOfTheMonthModel>
    implements $EventOfTheMonthModelCopyWith<$Res> {
  _$EventOfTheMonthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as EventResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $EventResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EventOfTheMonthModelCopyWith<$Res>
    implements $EventOfTheMonthModelCopyWith<$Res> {
  factory _$$_EventOfTheMonthModelCopyWith(_$_EventOfTheMonthModel value,
          $Res Function(_$_EventOfTheMonthModel) then) =
      __$$_EventOfTheMonthModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, EventResult? result});

  @override
  $EventResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_EventOfTheMonthModelCopyWithImpl<$Res>
    extends _$EventOfTheMonthModelCopyWithImpl<$Res, _$_EventOfTheMonthModel>
    implements _$$_EventOfTheMonthModelCopyWith<$Res> {
  __$$_EventOfTheMonthModelCopyWithImpl(_$_EventOfTheMonthModel _value,
      $Res Function(_$_EventOfTheMonthModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_EventOfTheMonthModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as EventResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventOfTheMonthModel implements _EventOfTheMonthModel {
  const _$_EventOfTheMonthModel(
      {this.status, this.message, this.error, this.result});

  factory _$_EventOfTheMonthModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventOfTheMonthModelFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final EventResult? result;

  @override
  String toString() {
    return 'EventOfTheMonthModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventOfTheMonthModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, error, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventOfTheMonthModelCopyWith<_$_EventOfTheMonthModel> get copyWith =>
      __$$_EventOfTheMonthModelCopyWithImpl<_$_EventOfTheMonthModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventOfTheMonthModelToJson(
      this,
    );
  }
}

abstract class _EventOfTheMonthModel implements EventOfTheMonthModel {
  const factory _EventOfTheMonthModel(
      {final int? status,
      final String? message,
      final String? error,
      final EventResult? result}) = _$_EventOfTheMonthModel;

  factory _EventOfTheMonthModel.fromJson(Map<String, dynamic> json) =
      _$_EventOfTheMonthModel.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  EventResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$_EventOfTheMonthModelCopyWith<_$_EventOfTheMonthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

EventResult _$EventResultFromJson(Map<String, dynamic> json) {
  return _EventResult.fromJson(json);
}

/// @nodoc
mixin _$EventResult {
  List<EventItem>? get event => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventResultCopyWith<EventResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventResultCopyWith<$Res> {
  factory $EventResultCopyWith(
          EventResult value, $Res Function(EventResult) then) =
      _$EventResultCopyWithImpl<$Res, EventResult>;
  @useResult
  $Res call({List<EventItem>? event});
}

/// @nodoc
class _$EventResultCopyWithImpl<$Res, $Val extends EventResult>
    implements $EventResultCopyWith<$Res> {
  _$EventResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_value.copyWith(
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as List<EventItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventResultCopyWith<$Res>
    implements $EventResultCopyWith<$Res> {
  factory _$$_EventResultCopyWith(
          _$_EventResult value, $Res Function(_$_EventResult) then) =
      __$$_EventResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventItem>? event});
}

/// @nodoc
class __$$_EventResultCopyWithImpl<$Res>
    extends _$EventResultCopyWithImpl<$Res, _$_EventResult>
    implements _$$_EventResultCopyWith<$Res> {
  __$$_EventResultCopyWithImpl(
      _$_EventResult _value, $Res Function(_$_EventResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_$_EventResult(
      event: freezed == event
          ? _value._event
          : event // ignore: cast_nullable_to_non_nullable
              as List<EventItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventResult implements _EventResult {
  const _$_EventResult({final List<EventItem>? event}) : _event = event;

  factory _$_EventResult.fromJson(Map<String, dynamic> json) =>
      _$$_EventResultFromJson(json);

  final List<EventItem>? _event;
  @override
  List<EventItem>? get event {
    final value = _event;
    if (value == null) return null;
    if (_event is EqualUnmodifiableListView) return _event;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EventResult(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventResult &&
            const DeepCollectionEquality().equals(other._event, _event));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_event));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventResultCopyWith<_$_EventResult> get copyWith =>
      __$$_EventResultCopyWithImpl<_$_EventResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventResultToJson(
      this,
    );
  }
}

abstract class _EventResult implements EventResult {
  const factory _EventResult({final List<EventItem>? event}) = _$_EventResult;

  factory _EventResult.fromJson(Map<String, dynamic> json) =
      _$_EventResult.fromJson;

  @override
  List<EventItem>? get event;
  @override
  @JsonKey(ignore: true)
  _$$_EventResultCopyWith<_$_EventResult> get copyWith =>
      throw _privateConstructorUsedError;
}

EventItem _$EventItemFromJson(Map<String, dynamic> json) {
  return _EventItem.fromJson(json);
}

/// @nodoc
mixin _$EventItem {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventItemCopyWith<EventItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventItemCopyWith<$Res> {
  factory $EventItemCopyWith(EventItem value, $Res Function(EventItem) then) =
      _$EventItemCopyWithImpl<$Res, EventItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      List<String>? images,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$EventItemCopyWithImpl<$Res, $Val extends EventItem>
    implements $EventItemCopyWith<$Res> {
  _$EventItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventItemCopyWith<$Res> implements $EventItemCopyWith<$Res> {
  factory _$$_EventItemCopyWith(
          _$_EventItem value, $Res Function(_$_EventItem) then) =
      __$$_EventItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      List<String>? images,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_EventItemCopyWithImpl<$Res>
    extends _$EventItemCopyWithImpl<$Res, _$_EventItem>
    implements _$$_EventItemCopyWith<$Res> {
  __$$_EventItemCopyWithImpl(
      _$_EventItem _value, $Res Function(_$_EventItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_EventItem(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventItem implements _EventItem {
  const _$_EventItem(
      {@JsonKey(name: "_id") this.id,
      final List<String>? images,
      this.createdAt,
      this.updatedAt})
      : _images = images;

  factory _$_EventItem.fromJson(Map<String, dynamic> json) =>
      _$$_EventItemFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'EventItem(id: $id, images: $images, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventItem &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_images), createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventItemCopyWith<_$_EventItem> get copyWith =>
      __$$_EventItemCopyWithImpl<_$_EventItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventItemToJson(
      this,
    );
  }
}

abstract class _EventItem implements EventItem {
  const factory _EventItem(
      {@JsonKey(name: "_id") final String? id,
      final List<String>? images,
      final String? createdAt,
      final String? updatedAt}) = _$_EventItem;

  factory _EventItem.fromJson(Map<String, dynamic> json) =
      _$_EventItem.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  List<String>? get images;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_EventItemCopyWith<_$_EventItem> get copyWith =>
      throw _privateConstructorUsedError;
}
