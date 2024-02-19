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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$EventOfTheMonthModelImplCopyWith<$Res>
    implements $EventOfTheMonthModelCopyWith<$Res> {
  factory _$$EventOfTheMonthModelImplCopyWith(_$EventOfTheMonthModelImpl value,
          $Res Function(_$EventOfTheMonthModelImpl) then) =
      __$$EventOfTheMonthModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, EventResult? result});

  @override
  $EventResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$EventOfTheMonthModelImplCopyWithImpl<$Res>
    extends _$EventOfTheMonthModelCopyWithImpl<$Res, _$EventOfTheMonthModelImpl>
    implements _$$EventOfTheMonthModelImplCopyWith<$Res> {
  __$$EventOfTheMonthModelImplCopyWithImpl(_$EventOfTheMonthModelImpl _value,
      $Res Function(_$EventOfTheMonthModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$EventOfTheMonthModelImpl(
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
class _$EventOfTheMonthModelImpl implements _EventOfTheMonthModel {
  const _$EventOfTheMonthModelImpl(
      {this.status, this.message, this.error, this.result});

  factory _$EventOfTheMonthModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventOfTheMonthModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventOfTheMonthModelImpl &&
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
  _$$EventOfTheMonthModelImplCopyWith<_$EventOfTheMonthModelImpl>
      get copyWith =>
          __$$EventOfTheMonthModelImplCopyWithImpl<_$EventOfTheMonthModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventOfTheMonthModelImplToJson(
      this,
    );
  }
}

abstract class _EventOfTheMonthModel implements EventOfTheMonthModel {
  const factory _EventOfTheMonthModel(
      {final int? status,
      final String? message,
      final String? error,
      final EventResult? result}) = _$EventOfTheMonthModelImpl;

  factory _EventOfTheMonthModel.fromJson(Map<String, dynamic> json) =
      _$EventOfTheMonthModelImpl.fromJson;

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
  _$$EventOfTheMonthModelImplCopyWith<_$EventOfTheMonthModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$EventResultImplCopyWith<$Res>
    implements $EventResultCopyWith<$Res> {
  factory _$$EventResultImplCopyWith(
          _$EventResultImpl value, $Res Function(_$EventResultImpl) then) =
      __$$EventResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventItem>? event});
}

/// @nodoc
class __$$EventResultImplCopyWithImpl<$Res>
    extends _$EventResultCopyWithImpl<$Res, _$EventResultImpl>
    implements _$$EventResultImplCopyWith<$Res> {
  __$$EventResultImplCopyWithImpl(
      _$EventResultImpl _value, $Res Function(_$EventResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_$EventResultImpl(
      event: freezed == event
          ? _value._event
          : event // ignore: cast_nullable_to_non_nullable
              as List<EventItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventResultImpl implements _EventResult {
  const _$EventResultImpl({final List<EventItem>? event}) : _event = event;

  factory _$EventResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventResultImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventResultImpl &&
            const DeepCollectionEquality().equals(other._event, _event));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_event));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventResultImplCopyWith<_$EventResultImpl> get copyWith =>
      __$$EventResultImplCopyWithImpl<_$EventResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventResultImplToJson(
      this,
    );
  }
}

abstract class _EventResult implements EventResult {
  const factory _EventResult({final List<EventItem>? event}) =
      _$EventResultImpl;

  factory _EventResult.fromJson(Map<String, dynamic> json) =
      _$EventResultImpl.fromJson;

  @override
  List<EventItem>? get event;
  @override
  @JsonKey(ignore: true)
  _$$EventResultImplCopyWith<_$EventResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventItem _$EventItemFromJson(Map<String, dynamic> json) {
  return _EventItem.fromJson(json);
}

/// @nodoc
mixin _$EventItem {
  String? get id => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'routing')
  Routing? get routing => throw _privateConstructorUsedError;
  @JsonKey(name: 'startDate')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'endDate')
  String? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
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
      {String? id,
      List<String>? images,
      @JsonKey(name: 'routing') Routing? routing,
      @JsonKey(name: 'startDate') String? startDate,
      @JsonKey(name: 'endDate') String? endDate,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});

  $RoutingCopyWith<$Res>? get routing;
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
    Object? routing = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
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
      routing: freezed == routing
          ? _value.routing
          : routing // ignore: cast_nullable_to_non_nullable
              as Routing?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
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

  @override
  @pragma('vm:prefer-inline')
  $RoutingCopyWith<$Res>? get routing {
    if (_value.routing == null) {
      return null;
    }

    return $RoutingCopyWith<$Res>(_value.routing!, (value) {
      return _then(_value.copyWith(routing: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventItemImplCopyWith<$Res>
    implements $EventItemCopyWith<$Res> {
  factory _$$EventItemImplCopyWith(
          _$EventItemImpl value, $Res Function(_$EventItemImpl) then) =
      __$$EventItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      List<String>? images,
      @JsonKey(name: 'routing') Routing? routing,
      @JsonKey(name: 'startDate') String? startDate,
      @JsonKey(name: 'endDate') String? endDate,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});

  @override
  $RoutingCopyWith<$Res>? get routing;
}

/// @nodoc
class __$$EventItemImplCopyWithImpl<$Res>
    extends _$EventItemCopyWithImpl<$Res, _$EventItemImpl>
    implements _$$EventItemImplCopyWith<$Res> {
  __$$EventItemImplCopyWithImpl(
      _$EventItemImpl _value, $Res Function(_$EventItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? routing = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$EventItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      routing: freezed == routing
          ? _value.routing
          : routing // ignore: cast_nullable_to_non_nullable
              as Routing?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$EventItemImpl implements _EventItem {
  const _$EventItemImpl(
      {this.id,
      final List<String>? images,
      @JsonKey(name: 'routing') this.routing,
      @JsonKey(name: 'startDate') this.startDate,
      @JsonKey(name: 'endDate') this.endDate,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt})
      : _images = images;

  factory _$EventItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventItemImplFromJson(json);

  @override
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
  @JsonKey(name: 'routing')
  final Routing? routing;
  @override
  @JsonKey(name: 'startDate')
  final String? startDate;
  @override
  @JsonKey(name: 'endDate')
  final String? endDate;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @override
  String toString() {
    return 'EventItem(id: $id, images: $images, routing: $routing, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.routing, routing) || other.routing == routing) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_images),
      routing,
      startDate,
      endDate,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventItemImplCopyWith<_$EventItemImpl> get copyWith =>
      __$$EventItemImplCopyWithImpl<_$EventItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventItemImplToJson(
      this,
    );
  }
}

abstract class _EventItem implements EventItem {
  const factory _EventItem(
      {final String? id,
      final List<String>? images,
      @JsonKey(name: 'routing') final Routing? routing,
      @JsonKey(name: 'startDate') final String? startDate,
      @JsonKey(name: 'endDate') final String? endDate,
      @JsonKey(name: 'createdAt') final String? createdAt,
      @JsonKey(name: 'updatedAt') final String? updatedAt}) = _$EventItemImpl;

  factory _EventItem.fromJson(Map<String, dynamic> json) =
      _$EventItemImpl.fromJson;

  @override
  String? get id;
  @override
  List<String>? get images;
  @override
  @JsonKey(name: 'routing')
  Routing? get routing;
  @override
  @JsonKey(name: 'startDate')
  String? get startDate;
  @override
  @JsonKey(name: 'endDate')
  String? get endDate;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$EventItemImplCopyWith<_$EventItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Routing _$RoutingFromJson(Map<String, dynamic> json) {
  return _Routing.fromJson(json);
}

/// @nodoc
mixin _$Routing {
  @JsonKey(name: 'categoryId')
  CategoryId? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'subCategoryId')
  SubCategoryId? get subCategoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'itemTypeId')
  ItemTypeId? get itemTypeId => throw _privateConstructorUsedError;
  String? get route => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutingCopyWith<Routing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutingCopyWith<$Res> {
  factory $RoutingCopyWith(Routing value, $Res Function(Routing) then) =
      _$RoutingCopyWithImpl<$Res, Routing>;
  @useResult
  $Res call(
      {@JsonKey(name: 'categoryId') CategoryId? categoryId,
      @JsonKey(name: 'subCategoryId') SubCategoryId? subCategoryId,
      @JsonKey(name: 'itemTypeId') ItemTypeId? itemTypeId,
      String? route});

  $CategoryIdCopyWith<$Res>? get categoryId;
  $SubCategoryIdCopyWith<$Res>? get subCategoryId;
  $ItemTypeIdCopyWith<$Res>? get itemTypeId;
}

/// @nodoc
class _$RoutingCopyWithImpl<$Res, $Val extends Routing>
    implements $RoutingCopyWith<$Res> {
  _$RoutingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? subCategoryId = freezed,
    Object? itemTypeId = freezed,
    Object? route = freezed,
  }) {
    return _then(_value.copyWith(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as CategoryId?,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as SubCategoryId?,
      itemTypeId: freezed == itemTypeId
          ? _value.itemTypeId
          : itemTypeId // ignore: cast_nullable_to_non_nullable
              as ItemTypeId?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryIdCopyWith<$Res>? get categoryId {
    if (_value.categoryId == null) {
      return null;
    }

    return $CategoryIdCopyWith<$Res>(_value.categoryId!, (value) {
      return _then(_value.copyWith(categoryId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubCategoryIdCopyWith<$Res>? get subCategoryId {
    if (_value.subCategoryId == null) {
      return null;
    }

    return $SubCategoryIdCopyWith<$Res>(_value.subCategoryId!, (value) {
      return _then(_value.copyWith(subCategoryId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemTypeIdCopyWith<$Res>? get itemTypeId {
    if (_value.itemTypeId == null) {
      return null;
    }

    return $ItemTypeIdCopyWith<$Res>(_value.itemTypeId!, (value) {
      return _then(_value.copyWith(itemTypeId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoutingImplCopyWith<$Res> implements $RoutingCopyWith<$Res> {
  factory _$$RoutingImplCopyWith(
          _$RoutingImpl value, $Res Function(_$RoutingImpl) then) =
      __$$RoutingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'categoryId') CategoryId? categoryId,
      @JsonKey(name: 'subCategoryId') SubCategoryId? subCategoryId,
      @JsonKey(name: 'itemTypeId') ItemTypeId? itemTypeId,
      String? route});

  @override
  $CategoryIdCopyWith<$Res>? get categoryId;
  @override
  $SubCategoryIdCopyWith<$Res>? get subCategoryId;
  @override
  $ItemTypeIdCopyWith<$Res>? get itemTypeId;
}

/// @nodoc
class __$$RoutingImplCopyWithImpl<$Res>
    extends _$RoutingCopyWithImpl<$Res, _$RoutingImpl>
    implements _$$RoutingImplCopyWith<$Res> {
  __$$RoutingImplCopyWithImpl(
      _$RoutingImpl _value, $Res Function(_$RoutingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? subCategoryId = freezed,
    Object? itemTypeId = freezed,
    Object? route = freezed,
  }) {
    return _then(_$RoutingImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as CategoryId?,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as SubCategoryId?,
      itemTypeId: freezed == itemTypeId
          ? _value.itemTypeId
          : itemTypeId // ignore: cast_nullable_to_non_nullable
              as ItemTypeId?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutingImpl implements _Routing {
  const _$RoutingImpl(
      {@JsonKey(name: 'categoryId') this.categoryId,
      @JsonKey(name: 'subCategoryId') this.subCategoryId,
      @JsonKey(name: 'itemTypeId') this.itemTypeId,
      this.route});

  factory _$RoutingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutingImplFromJson(json);

  @override
  @JsonKey(name: 'categoryId')
  final CategoryId? categoryId;
  @override
  @JsonKey(name: 'subCategoryId')
  final SubCategoryId? subCategoryId;
  @override
  @JsonKey(name: 'itemTypeId')
  final ItemTypeId? itemTypeId;
  @override
  final String? route;

  @override
  String toString() {
    return 'Routing(categoryId: $categoryId, subCategoryId: $subCategoryId, itemTypeId: $itemTypeId, route: $route)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutingImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId) &&
            (identical(other.itemTypeId, itemTypeId) ||
                other.itemTypeId == itemTypeId) &&
            (identical(other.route, route) || other.route == route));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, categoryId, subCategoryId, itemTypeId, route);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutingImplCopyWith<_$RoutingImpl> get copyWith =>
      __$$RoutingImplCopyWithImpl<_$RoutingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutingImplToJson(
      this,
    );
  }
}

abstract class _Routing implements Routing {
  const factory _Routing(
      {@JsonKey(name: 'categoryId') final CategoryId? categoryId,
      @JsonKey(name: 'subCategoryId') final SubCategoryId? subCategoryId,
      @JsonKey(name: 'itemTypeId') final ItemTypeId? itemTypeId,
      final String? route}) = _$RoutingImpl;

  factory _Routing.fromJson(Map<String, dynamic> json) = _$RoutingImpl.fromJson;

  @override
  @JsonKey(name: 'categoryId')
  CategoryId? get categoryId;
  @override
  @JsonKey(name: 'subCategoryId')
  SubCategoryId? get subCategoryId;
  @override
  @JsonKey(name: 'itemTypeId')
  ItemTypeId? get itemTypeId;
  @override
  String? get route;
  @override
  @JsonKey(ignore: true)
  _$$RoutingImplCopyWith<_$RoutingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryId _$CategoryIdFromJson(Map<String, dynamic> json) {
  return _CategoryId.fromJson(json);
}

/// @nodoc
mixin _$CategoryId {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryIdCopyWith<CategoryId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryIdCopyWith<$Res> {
  factory $CategoryIdCopyWith(
          CategoryId value, $Res Function(CategoryId) then) =
      _$CategoryIdCopyWithImpl<$Res, CategoryId>;
  @useResult
  $Res call({String? id, String? title});
}

/// @nodoc
class _$CategoryIdCopyWithImpl<$Res, $Val extends CategoryId>
    implements $CategoryIdCopyWith<$Res> {
  _$CategoryIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryIdImplCopyWith<$Res>
    implements $CategoryIdCopyWith<$Res> {
  factory _$$CategoryIdImplCopyWith(
          _$CategoryIdImpl value, $Res Function(_$CategoryIdImpl) then) =
      __$$CategoryIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title});
}

/// @nodoc
class __$$CategoryIdImplCopyWithImpl<$Res>
    extends _$CategoryIdCopyWithImpl<$Res, _$CategoryIdImpl>
    implements _$$CategoryIdImplCopyWith<$Res> {
  __$$CategoryIdImplCopyWithImpl(
      _$CategoryIdImpl _value, $Res Function(_$CategoryIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$CategoryIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryIdImpl implements _CategoryId {
  const _$CategoryIdImpl({this.id, this.title});

  factory _$CategoryIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryIdImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'CategoryId(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryIdImplCopyWith<_$CategoryIdImpl> get copyWith =>
      __$$CategoryIdImplCopyWithImpl<_$CategoryIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryIdImplToJson(
      this,
    );
  }
}

abstract class _CategoryId implements CategoryId {
  const factory _CategoryId({final String? id, final String? title}) =
      _$CategoryIdImpl;

  factory _CategoryId.fromJson(Map<String, dynamic> json) =
      _$CategoryIdImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$CategoryIdImplCopyWith<_$CategoryIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubCategoryId _$SubCategoryIdFromJson(Map<String, dynamic> json) {
  return _SubCategoryId.fromJson(json);
}

/// @nodoc
mixin _$SubCategoryId {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubCategoryIdCopyWith<SubCategoryId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryIdCopyWith<$Res> {
  factory $SubCategoryIdCopyWith(
          SubCategoryId value, $Res Function(SubCategoryId) then) =
      _$SubCategoryIdCopyWithImpl<$Res, SubCategoryId>;
  @useResult
  $Res call({String? id, String? title});
}

/// @nodoc
class _$SubCategoryIdCopyWithImpl<$Res, $Val extends SubCategoryId>
    implements $SubCategoryIdCopyWith<$Res> {
  _$SubCategoryIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubCategoryIdImplCopyWith<$Res>
    implements $SubCategoryIdCopyWith<$Res> {
  factory _$$SubCategoryIdImplCopyWith(
          _$SubCategoryIdImpl value, $Res Function(_$SubCategoryIdImpl) then) =
      __$$SubCategoryIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title});
}

/// @nodoc
class __$$SubCategoryIdImplCopyWithImpl<$Res>
    extends _$SubCategoryIdCopyWithImpl<$Res, _$SubCategoryIdImpl>
    implements _$$SubCategoryIdImplCopyWith<$Res> {
  __$$SubCategoryIdImplCopyWithImpl(
      _$SubCategoryIdImpl _value, $Res Function(_$SubCategoryIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$SubCategoryIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubCategoryIdImpl implements _SubCategoryId {
  const _$SubCategoryIdImpl({this.id, this.title});

  factory _$SubCategoryIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryIdImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'SubCategoryId(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoryIdImplCopyWith<_$SubCategoryIdImpl> get copyWith =>
      __$$SubCategoryIdImplCopyWithImpl<_$SubCategoryIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubCategoryIdImplToJson(
      this,
    );
  }
}

abstract class _SubCategoryId implements SubCategoryId {
  const factory _SubCategoryId({final String? id, final String? title}) =
      _$SubCategoryIdImpl;

  factory _SubCategoryId.fromJson(Map<String, dynamic> json) =
      _$SubCategoryIdImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$SubCategoryIdImplCopyWith<_$SubCategoryIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemTypeId _$ItemTypeIdFromJson(Map<String, dynamic> json) {
  return _ItemTypeId.fromJson(json);
}

/// @nodoc
mixin _$ItemTypeId {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemTypeIdCopyWith<ItemTypeId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemTypeIdCopyWith<$Res> {
  factory $ItemTypeIdCopyWith(
          ItemTypeId value, $Res Function(ItemTypeId) then) =
      _$ItemTypeIdCopyWithImpl<$Res, ItemTypeId>;
  @useResult
  $Res call({String? id, String? title});
}

/// @nodoc
class _$ItemTypeIdCopyWithImpl<$Res, $Val extends ItemTypeId>
    implements $ItemTypeIdCopyWith<$Res> {
  _$ItemTypeIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemTypeIdImplCopyWith<$Res>
    implements $ItemTypeIdCopyWith<$Res> {
  factory _$$ItemTypeIdImplCopyWith(
          _$ItemTypeIdImpl value, $Res Function(_$ItemTypeIdImpl) then) =
      __$$ItemTypeIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title});
}

/// @nodoc
class __$$ItemTypeIdImplCopyWithImpl<$Res>
    extends _$ItemTypeIdCopyWithImpl<$Res, _$ItemTypeIdImpl>
    implements _$$ItemTypeIdImplCopyWith<$Res> {
  __$$ItemTypeIdImplCopyWithImpl(
      _$ItemTypeIdImpl _value, $Res Function(_$ItemTypeIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$ItemTypeIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemTypeIdImpl implements _ItemTypeId {
  const _$ItemTypeIdImpl({this.id, this.title});

  factory _$ItemTypeIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemTypeIdImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'ItemTypeId(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemTypeIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemTypeIdImplCopyWith<_$ItemTypeIdImpl> get copyWith =>
      __$$ItemTypeIdImplCopyWithImpl<_$ItemTypeIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemTypeIdImplToJson(
      this,
    );
  }
}

abstract class _ItemTypeId implements ItemTypeId {
  const factory _ItemTypeId({final String? id, final String? title}) =
      _$ItemTypeIdImpl;

  factory _ItemTypeId.fromJson(Map<String, dynamic> json) =
      _$ItemTypeIdImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$ItemTypeIdImplCopyWith<_$ItemTypeIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
