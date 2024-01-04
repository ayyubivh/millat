// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_dua_bookmark_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DuaBookMarkModel _$DuaBookMarkModelFromJson(Map<String, dynamic> json) {
  return _DuaBookMarkModel.fromJson(json);
}

/// @nodoc
mixin _$DuaBookMarkModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  BookmarksData? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DuaBookMarkModelCopyWith<DuaBookMarkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuaBookMarkModelCopyWith<$Res> {
  factory $DuaBookMarkModelCopyWith(
          DuaBookMarkModel value, $Res Function(DuaBookMarkModel) then) =
      _$DuaBookMarkModelCopyWithImpl<$Res, DuaBookMarkModel>;
  @useResult
  $Res call({int status, String message, String? error, BookmarksData? result});

  $BookmarksDataCopyWith<$Res>? get result;
}

/// @nodoc
class _$DuaBookMarkModelCopyWithImpl<$Res, $Val extends DuaBookMarkModel>
    implements $DuaBookMarkModelCopyWith<$Res> {
  _$DuaBookMarkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as BookmarksData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookmarksDataCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $BookmarksDataCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DuaBookMarkModelImplCopyWith<$Res>
    implements $DuaBookMarkModelCopyWith<$Res> {
  factory _$$DuaBookMarkModelImplCopyWith(_$DuaBookMarkModelImpl value,
          $Res Function(_$DuaBookMarkModelImpl) then) =
      __$$DuaBookMarkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, String? error, BookmarksData? result});

  @override
  $BookmarksDataCopyWith<$Res>? get result;
}

/// @nodoc
class __$$DuaBookMarkModelImplCopyWithImpl<$Res>
    extends _$DuaBookMarkModelCopyWithImpl<$Res, _$DuaBookMarkModelImpl>
    implements _$$DuaBookMarkModelImplCopyWith<$Res> {
  __$$DuaBookMarkModelImplCopyWithImpl(_$DuaBookMarkModelImpl _value,
      $Res Function(_$DuaBookMarkModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$DuaBookMarkModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as BookmarksData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DuaBookMarkModelImpl implements _DuaBookMarkModel {
  const _$DuaBookMarkModelImpl(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$DuaBookMarkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DuaBookMarkModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final String? error;
  @override
  final BookmarksData? result;

  @override
  String toString() {
    return 'DuaBookMarkModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuaBookMarkModelImpl &&
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
  _$$DuaBookMarkModelImplCopyWith<_$DuaBookMarkModelImpl> get copyWith =>
      __$$DuaBookMarkModelImplCopyWithImpl<_$DuaBookMarkModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DuaBookMarkModelImplToJson(
      this,
    );
  }
}

abstract class _DuaBookMarkModel implements DuaBookMarkModel {
  const factory _DuaBookMarkModel(
      {required final int status,
      required final String message,
      required final String? error,
      required final BookmarksData? result}) = _$DuaBookMarkModelImpl;

  factory _DuaBookMarkModel.fromJson(Map<String, dynamic> json) =
      _$DuaBookMarkModelImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  String? get error;
  @override
  BookmarksData? get result;
  @override
  @JsonKey(ignore: true)
  _$$DuaBookMarkModelImplCopyWith<_$DuaBookMarkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookmarksData _$BookmarksDataFromJson(Map<String, dynamic> json) {
  return _BookmarksData.fromJson(json);
}

/// @nodoc
mixin _$BookmarksData {
  List<Bookmarks> get bookmarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarksDataCopyWith<BookmarksData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarksDataCopyWith<$Res> {
  factory $BookmarksDataCopyWith(
          BookmarksData value, $Res Function(BookmarksData) then) =
      _$BookmarksDataCopyWithImpl<$Res, BookmarksData>;
  @useResult
  $Res call({List<Bookmarks> bookmarks});
}

/// @nodoc
class _$BookmarksDataCopyWithImpl<$Res, $Val extends BookmarksData>
    implements $BookmarksDataCopyWith<$Res> {
  _$BookmarksDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarks = null,
  }) {
    return _then(_value.copyWith(
      bookmarks: null == bookmarks
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<Bookmarks>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarksDataImplCopyWith<$Res>
    implements $BookmarksDataCopyWith<$Res> {
  factory _$$BookmarksDataImplCopyWith(
          _$BookmarksDataImpl value, $Res Function(_$BookmarksDataImpl) then) =
      __$$BookmarksDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Bookmarks> bookmarks});
}

/// @nodoc
class __$$BookmarksDataImplCopyWithImpl<$Res>
    extends _$BookmarksDataCopyWithImpl<$Res, _$BookmarksDataImpl>
    implements _$$BookmarksDataImplCopyWith<$Res> {
  __$$BookmarksDataImplCopyWithImpl(
      _$BookmarksDataImpl _value, $Res Function(_$BookmarksDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarks = null,
  }) {
    return _then(_$BookmarksDataImpl(
      bookmarks: null == bookmarks
          ? _value._bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<Bookmarks>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarksDataImpl implements _BookmarksData {
  const _$BookmarksDataImpl({required final List<Bookmarks> bookmarks})
      : _bookmarks = bookmarks;

  factory _$BookmarksDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarksDataImplFromJson(json);

  final List<Bookmarks> _bookmarks;
  @override
  List<Bookmarks> get bookmarks {
    if (_bookmarks is EqualUnmodifiableListView) return _bookmarks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmarks);
  }

  @override
  String toString() {
    return 'BookmarksData(bookmarks: $bookmarks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarksDataImpl &&
            const DeepCollectionEquality()
                .equals(other._bookmarks, _bookmarks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bookmarks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarksDataImplCopyWith<_$BookmarksDataImpl> get copyWith =>
      __$$BookmarksDataImplCopyWithImpl<_$BookmarksDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarksDataImplToJson(
      this,
    );
  }
}

abstract class _BookmarksData implements BookmarksData {
  const factory _BookmarksData({required final List<Bookmarks> bookmarks}) =
      _$BookmarksDataImpl;

  factory _BookmarksData.fromJson(Map<String, dynamic> json) =
      _$BookmarksDataImpl.fromJson;

  @override
  List<Bookmarks> get bookmarks;
  @override
  @JsonKey(ignore: true)
  _$$BookmarksDataImplCopyWith<_$BookmarksDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Bookmarks _$BookmarksFromJson(Map<String, dynamic> json) {
  return _Bookmarks.fromJson(json);
}

/// @nodoc
mixin _$Bookmarks {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  List<Bookmark> get bookmarks => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarksCopyWith<Bookmarks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarksCopyWith<$Res> {
  factory $BookmarksCopyWith(Bookmarks value, $Res Function(Bookmarks) then) =
      _$BookmarksCopyWithImpl<$Res, Bookmarks>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String userId,
      List<Bookmark> bookmarks,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$BookmarksCopyWithImpl<$Res, $Val extends Bookmarks>
    implements $BookmarksCopyWith<$Res> {
  _$BookmarksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? bookmarks = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      bookmarks: null == bookmarks
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<Bookmark>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarksImplCopyWith<$Res>
    implements $BookmarksCopyWith<$Res> {
  factory _$$BookmarksImplCopyWith(
          _$BookmarksImpl value, $Res Function(_$BookmarksImpl) then) =
      __$$BookmarksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String userId,
      List<Bookmark> bookmarks,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$BookmarksImplCopyWithImpl<$Res>
    extends _$BookmarksCopyWithImpl<$Res, _$BookmarksImpl>
    implements _$$BookmarksImplCopyWith<$Res> {
  __$$BookmarksImplCopyWithImpl(
      _$BookmarksImpl _value, $Res Function(_$BookmarksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? bookmarks = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$BookmarksImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      bookmarks: null == bookmarks
          ? _value._bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<Bookmark>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarksImpl implements _Bookmarks {
  const _$BookmarksImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.userId,
      required final List<Bookmark> bookmarks,
      required this.createdAt,
      required this.updatedAt})
      : _bookmarks = bookmarks;

  factory _$BookmarksImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarksImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String userId;
  final List<Bookmark> _bookmarks;
  @override
  List<Bookmark> get bookmarks {
    if (_bookmarks is EqualUnmodifiableListView) return _bookmarks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmarks);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Bookmarks(id: $id, userId: $userId, bookmarks: $bookmarks, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarksImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._bookmarks, _bookmarks) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId,
      const DeepCollectionEquality().hash(_bookmarks), createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarksImplCopyWith<_$BookmarksImpl> get copyWith =>
      __$$BookmarksImplCopyWithImpl<_$BookmarksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarksImplToJson(
      this,
    );
  }
}

abstract class _Bookmarks implements Bookmarks {
  const factory _Bookmarks(
      {@JsonKey(name: "_id") required final String id,
      required final String userId,
      required final List<Bookmark> bookmarks,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$BookmarksImpl;

  factory _Bookmarks.fromJson(Map<String, dynamic> json) =
      _$BookmarksImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get userId;
  @override
  List<Bookmark> get bookmarks;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$BookmarksImplCopyWith<_$BookmarksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Bookmark _$BookmarkFromJson(Map<String, dynamic> json) {
  return _Bookmark.fromJson(json);
}

/// @nodoc
mixin _$Bookmark {
  String get duaId => throw _privateConstructorUsedError;
  DateTime get markedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarkCopyWith<Bookmark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkCopyWith<$Res> {
  factory $BookmarkCopyWith(Bookmark value, $Res Function(Bookmark) then) =
      _$BookmarkCopyWithImpl<$Res, Bookmark>;
  @useResult
  $Res call({String duaId, DateTime markedAt, @JsonKey(name: "_id") String id});
}

/// @nodoc
class _$BookmarkCopyWithImpl<$Res, $Val extends Bookmark>
    implements $BookmarkCopyWith<$Res> {
  _$BookmarkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duaId = null,
    Object? markedAt = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      duaId: null == duaId
          ? _value.duaId
          : duaId // ignore: cast_nullable_to_non_nullable
              as String,
      markedAt: null == markedAt
          ? _value.markedAt
          : markedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarkImplCopyWith<$Res>
    implements $BookmarkCopyWith<$Res> {
  factory _$$BookmarkImplCopyWith(
          _$BookmarkImpl value, $Res Function(_$BookmarkImpl) then) =
      __$$BookmarkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String duaId, DateTime markedAt, @JsonKey(name: "_id") String id});
}

/// @nodoc
class __$$BookmarkImplCopyWithImpl<$Res>
    extends _$BookmarkCopyWithImpl<$Res, _$BookmarkImpl>
    implements _$$BookmarkImplCopyWith<$Res> {
  __$$BookmarkImplCopyWithImpl(
      _$BookmarkImpl _value, $Res Function(_$BookmarkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duaId = null,
    Object? markedAt = null,
    Object? id = null,
  }) {
    return _then(_$BookmarkImpl(
      duaId: null == duaId
          ? _value.duaId
          : duaId // ignore: cast_nullable_to_non_nullable
              as String,
      markedAt: null == markedAt
          ? _value.markedAt
          : markedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarkImpl implements _Bookmark {
  const _$BookmarkImpl(
      {required this.duaId,
      required this.markedAt,
      @JsonKey(name: "_id") required this.id});

  factory _$BookmarkImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarkImplFromJson(json);

  @override
  final String duaId;
  @override
  final DateTime markedAt;
  @override
  @JsonKey(name: "_id")
  final String id;

  @override
  String toString() {
    return 'Bookmark(duaId: $duaId, markedAt: $markedAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkImpl &&
            (identical(other.duaId, duaId) || other.duaId == duaId) &&
            (identical(other.markedAt, markedAt) ||
                other.markedAt == markedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, duaId, markedAt, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkImplCopyWith<_$BookmarkImpl> get copyWith =>
      __$$BookmarkImplCopyWithImpl<_$BookmarkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarkImplToJson(
      this,
    );
  }
}

abstract class _Bookmark implements Bookmark {
  const factory _Bookmark(
      {required final String duaId,
      required final DateTime markedAt,
      @JsonKey(name: "_id") required final String id}) = _$BookmarkImpl;

  factory _Bookmark.fromJson(Map<String, dynamic> json) =
      _$BookmarkImpl.fromJson;

  @override
  String get duaId;
  @override
  DateTime get markedAt;
  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$BookmarkImplCopyWith<_$BookmarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
