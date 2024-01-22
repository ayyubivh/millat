// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  MessageResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'result') MessageResult? result});

  $MessageResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

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
              as MessageResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $MessageResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'result') MessageResult? result});

  @override
  $MessageResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$NotificationModelImpl(
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
              as MessageResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationModelImpl implements _NotificationModel {
  _$NotificationModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'error') this.error,
      @JsonKey(name: 'result') this.result});

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'error')
  final String? error;
  @override
  @JsonKey(name: 'result')
  final MessageResult? result;

  @override
  String toString() {
    return 'NotificationModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
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
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel implements NotificationModel {
  factory _NotificationModel(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'error') final String? error,
          @JsonKey(name: 'result') final MessageResult? result}) =
      _$NotificationModelImpl;

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(name: 'result')
  MessageResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageResult _$MessageResultFromJson(Map<String, dynamic> json) {
  return _MessageResult.fromJson(json);
}

/// @nodoc
mixin _$MessageResult {
  @JsonKey(name: 'data')
  List<MessageData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageResultCopyWith<MessageResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageResultCopyWith<$Res> {
  factory $MessageResultCopyWith(
          MessageResult value, $Res Function(MessageResult) then) =
      _$MessageResultCopyWithImpl<$Res, MessageResult>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<MessageData>? data});
}

/// @nodoc
class _$MessageResultCopyWithImpl<$Res, $Val extends MessageResult>
    implements $MessageResultCopyWith<$Res> {
  _$MessageResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MessageData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageResultImplCopyWith<$Res>
    implements $MessageResultCopyWith<$Res> {
  factory _$$MessageResultImplCopyWith(
          _$MessageResultImpl value, $Res Function(_$MessageResultImpl) then) =
      __$$MessageResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<MessageData>? data});
}

/// @nodoc
class __$$MessageResultImplCopyWithImpl<$Res>
    extends _$MessageResultCopyWithImpl<$Res, _$MessageResultImpl>
    implements _$$MessageResultImplCopyWith<$Res> {
  __$$MessageResultImplCopyWithImpl(
      _$MessageResultImpl _value, $Res Function(_$MessageResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$MessageResultImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MessageData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageResultImpl implements _MessageResult {
  _$MessageResultImpl({@JsonKey(name: 'data') final List<MessageData>? data})
      : _data = data;

  factory _$MessageResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageResultImplFromJson(json);

  final List<MessageData>? _data;
  @override
  @JsonKey(name: 'data')
  List<MessageData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MessageResult(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageResultImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageResultImplCopyWith<_$MessageResultImpl> get copyWith =>
      __$$MessageResultImplCopyWithImpl<_$MessageResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageResultImplToJson(
      this,
    );
  }
}

abstract class _MessageResult implements MessageResult {
  factory _MessageResult(
          {@JsonKey(name: 'data') final List<MessageData>? data}) =
      _$MessageResultImpl;

  factory _MessageResult.fromJson(Map<String, dynamic> json) =
      _$MessageResultImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<MessageData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$MessageResultImplCopyWith<_$MessageResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageData _$MessageDataFromJson(Map<String, dynamic> json) {
  return _MessageData.fromJson(json);
}

/// @nodoc
mixin _$MessageData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'sendAt')
  String? get sendAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'userIds')
  List<String>? get userIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'isReadByUser')
  List<String>? get isReadByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageDataCopyWith<MessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDataCopyWith<$Res> {
  factory $MessageDataCopyWith(
          MessageData value, $Res Function(MessageData) then) =
      _$MessageDataCopyWithImpl<$Res, MessageData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'sendAt') String? sendAt,
      @JsonKey(name: 'userIds') List<String>? userIds,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'isReadByUser') List<String>? isReadByUser,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$MessageDataCopyWithImpl<$Res, $Val extends MessageData>
    implements $MessageDataCopyWith<$Res> {
  _$MessageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? sendAt = freezed,
    Object? userIds = freezed,
    Object? description = freezed,
    Object? isReadByUser = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? url = freezed,
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
      sendAt: freezed == sendAt
          ? _value.sendAt
          : sendAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userIds: freezed == userIds
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isReadByUser: freezed == isReadByUser
          ? _value.isReadByUser
          : isReadByUser // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageDataImplCopyWith<$Res>
    implements $MessageDataCopyWith<$Res> {
  factory _$$MessageDataImplCopyWith(
          _$MessageDataImpl value, $Res Function(_$MessageDataImpl) then) =
      __$$MessageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'sendAt') String? sendAt,
      @JsonKey(name: 'userIds') List<String>? userIds,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'isReadByUser') List<String>? isReadByUser,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$$MessageDataImplCopyWithImpl<$Res>
    extends _$MessageDataCopyWithImpl<$Res, _$MessageDataImpl>
    implements _$$MessageDataImplCopyWith<$Res> {
  __$$MessageDataImplCopyWithImpl(
      _$MessageDataImpl _value, $Res Function(_$MessageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? sendAt = freezed,
    Object? userIds = freezed,
    Object? description = freezed,
    Object? isReadByUser = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? url = freezed,
  }) {
    return _then(_$MessageDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAt: freezed == sendAt
          ? _value.sendAt
          : sendAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userIds: freezed == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isReadByUser: freezed == isReadByUser
          ? _value._isReadByUser
          : isReadByUser // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageDataImpl implements _MessageData {
  _$MessageDataImpl(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'sendAt') this.sendAt,
      @JsonKey(name: 'userIds') final List<String>? userIds,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'isReadByUser') final List<String>? isReadByUser,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt,
      @JsonKey(name: 'url') this.url})
      : _userIds = userIds,
        _isReadByUser = isReadByUser;

  factory _$MessageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageDataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'sendAt')
  final String? sendAt;
  final List<String>? _userIds;
  @override
  @JsonKey(name: 'userIds')
  List<String>? get userIds {
    final value = _userIds;
    if (value == null) return null;
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'description')
  final String? description;
  final List<String>? _isReadByUser;
  @override
  @JsonKey(name: 'isReadByUser')
  List<String>? get isReadByUser {
    final value = _isReadByUser;
    if (value == null) return null;
    if (_isReadByUser is EqualUnmodifiableListView) return _isReadByUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'MessageData(id: $id, title: $title, sendAt: $sendAt, userIds: $userIds, description: $description, isReadByUser: $isReadByUser, createdAt: $createdAt, updatedAt: $updatedAt, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sendAt, sendAt) || other.sendAt == sendAt) &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._isReadByUser, _isReadByUser) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      sendAt,
      const DeepCollectionEquality().hash(_userIds),
      description,
      const DeepCollectionEquality().hash(_isReadByUser),
      createdAt,
      updatedAt,
      url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDataImplCopyWith<_$MessageDataImpl> get copyWith =>
      __$$MessageDataImplCopyWithImpl<_$MessageDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageDataImplToJson(
      this,
    );
  }
}

abstract class _MessageData implements MessageData {
  factory _MessageData(
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'sendAt') final String? sendAt,
      @JsonKey(name: 'userIds') final List<String>? userIds,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'isReadByUser') final List<String>? isReadByUser,
      @JsonKey(name: 'createdAt') final String? createdAt,
      @JsonKey(name: 'updatedAt') final String? updatedAt,
      @JsonKey(name: 'url') final String? url}) = _$MessageDataImpl;

  factory _MessageData.fromJson(Map<String, dynamic> json) =
      _$MessageDataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'sendAt')
  String? get sendAt;
  @override
  @JsonKey(name: 'userIds')
  List<String>? get userIds;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'isReadByUser')
  List<String>? get isReadByUser;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$MessageDataImplCopyWith<_$MessageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
