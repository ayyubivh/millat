// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookmarkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String description, int id, String image, String? dbId)
        addCollection,
    required TResult Function(String img) saveImageEvent,
    required TResult Function(int id) saveQuranChapterId,
    required TResult Function(String nameValue) nameChanged,
    required TResult Function(String descriptionValue) descriptionChanged,
    required TResult Function(
            String name, String description, int id, String image, String dbId)
        editCollection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, int id, String image,
            String? dbId)?
        addCollection,
    TResult? Function(String img)? saveImageEvent,
    TResult? Function(int id)? saveQuranChapterId,
    TResult? Function(String nameValue)? nameChanged,
    TResult? Function(String descriptionValue)? descriptionChanged,
    TResult? Function(
            String name, String description, int id, String image, String dbId)?
        editCollection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, int id, String image,
            String? dbId)?
        addCollection,
    TResult Function(String img)? saveImageEvent,
    TResult Function(int id)? saveQuranChapterId,
    TResult Function(String nameValue)? nameChanged,
    TResult Function(String descriptionValue)? descriptionChanged,
    TResult Function(
            String name, String description, int id, String image, String dbId)?
        editCollection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCollection value) addCollection,
    required TResult Function(SaveImageEvent value) saveImageEvent,
    required TResult Function(SaveQuranChapterId value) saveQuranChapterId,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(EditCollection value) editCollection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCollection value)? addCollection,
    TResult? Function(SaveImageEvent value)? saveImageEvent,
    TResult? Function(SaveQuranChapterId value)? saveQuranChapterId,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(DescriptionChanged value)? descriptionChanged,
    TResult? Function(EditCollection value)? editCollection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCollection value)? addCollection,
    TResult Function(SaveImageEvent value)? saveImageEvent,
    TResult Function(SaveQuranChapterId value)? saveQuranChapterId,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(EditCollection value)? editCollection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkEventCopyWith<$Res> {
  factory $BookmarkEventCopyWith(
          BookmarkEvent value, $Res Function(BookmarkEvent) then) =
      _$BookmarkEventCopyWithImpl<$Res, BookmarkEvent>;
}

/// @nodoc
class _$BookmarkEventCopyWithImpl<$Res, $Val extends BookmarkEvent>
    implements $BookmarkEventCopyWith<$Res> {
  _$BookmarkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddCollectionCopyWith<$Res> {
  factory _$$AddCollectionCopyWith(
          _$AddCollection value, $Res Function(_$AddCollection) then) =
      __$$AddCollectionCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name, String description, int id, String image, String? dbId});
}

/// @nodoc
class __$$AddCollectionCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$AddCollection>
    implements _$$AddCollectionCopyWith<$Res> {
  __$$AddCollectionCopyWithImpl(
      _$AddCollection _value, $Res Function(_$AddCollection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? id = null,
    Object? image = null,
    Object? dbId = freezed,
  }) {
    return _then(_$AddCollection(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      dbId: freezed == dbId
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddCollection implements AddCollection {
  const _$AddCollection(
      {required this.name,
      required this.description,
      required this.id,
      required this.image,
      this.dbId});

  @override
  final String name;
  @override
  final String description;
  @override
  final int id;
  @override
  final String image;
  @override
  final String? dbId;

  @override
  String toString() {
    return 'BookmarkEvent.addCollection(name: $name, description: $description, id: $id, image: $image, dbId: $dbId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCollection &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.dbId, dbId) || other.dbId == dbId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, id, image, dbId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCollectionCopyWith<_$AddCollection> get copyWith =>
      __$$AddCollectionCopyWithImpl<_$AddCollection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String description, int id, String image, String? dbId)
        addCollection,
    required TResult Function(String img) saveImageEvent,
    required TResult Function(int id) saveQuranChapterId,
    required TResult Function(String nameValue) nameChanged,
    required TResult Function(String descriptionValue) descriptionChanged,
    required TResult Function(
            String name, String description, int id, String image, String dbId)
        editCollection,
  }) {
    return addCollection(name, description, id, image, dbId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, int id, String image,
            String? dbId)?
        addCollection,
    TResult? Function(String img)? saveImageEvent,
    TResult? Function(int id)? saveQuranChapterId,
    TResult? Function(String nameValue)? nameChanged,
    TResult? Function(String descriptionValue)? descriptionChanged,
    TResult? Function(
            String name, String description, int id, String image, String dbId)?
        editCollection,
  }) {
    return addCollection?.call(name, description, id, image, dbId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, int id, String image,
            String? dbId)?
        addCollection,
    TResult Function(String img)? saveImageEvent,
    TResult Function(int id)? saveQuranChapterId,
    TResult Function(String nameValue)? nameChanged,
    TResult Function(String descriptionValue)? descriptionChanged,
    TResult Function(
            String name, String description, int id, String image, String dbId)?
        editCollection,
    required TResult orElse(),
  }) {
    if (addCollection != null) {
      return addCollection(name, description, id, image, dbId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCollection value) addCollection,
    required TResult Function(SaveImageEvent value) saveImageEvent,
    required TResult Function(SaveQuranChapterId value) saveQuranChapterId,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(EditCollection value) editCollection,
  }) {
    return addCollection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCollection value)? addCollection,
    TResult? Function(SaveImageEvent value)? saveImageEvent,
    TResult? Function(SaveQuranChapterId value)? saveQuranChapterId,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(DescriptionChanged value)? descriptionChanged,
    TResult? Function(EditCollection value)? editCollection,
  }) {
    return addCollection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCollection value)? addCollection,
    TResult Function(SaveImageEvent value)? saveImageEvent,
    TResult Function(SaveQuranChapterId value)? saveQuranChapterId,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(EditCollection value)? editCollection,
    required TResult orElse(),
  }) {
    if (addCollection != null) {
      return addCollection(this);
    }
    return orElse();
  }
}

abstract class AddCollection implements BookmarkEvent {
  const factory AddCollection(
      {required final String name,
      required final String description,
      required final int id,
      required final String image,
      final String? dbId}) = _$AddCollection;

  String get name;
  String get description;
  int get id;
  String get image;
  String? get dbId;
  @JsonKey(ignore: true)
  _$$AddCollectionCopyWith<_$AddCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveImageEventCopyWith<$Res> {
  factory _$$SaveImageEventCopyWith(
          _$SaveImageEvent value, $Res Function(_$SaveImageEvent) then) =
      __$$SaveImageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String img});
}

/// @nodoc
class __$$SaveImageEventCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$SaveImageEvent>
    implements _$$SaveImageEventCopyWith<$Res> {
  __$$SaveImageEventCopyWithImpl(
      _$SaveImageEvent _value, $Res Function(_$SaveImageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = null,
  }) {
    return _then(_$SaveImageEvent(
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveImageEvent implements SaveImageEvent {
  const _$SaveImageEvent({required this.img});

  @override
  final String img;

  @override
  String toString() {
    return 'BookmarkEvent.saveImageEvent(img: $img)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveImageEvent &&
            (identical(other.img, img) || other.img == img));
  }

  @override
  int get hashCode => Object.hash(runtimeType, img);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveImageEventCopyWith<_$SaveImageEvent> get copyWith =>
      __$$SaveImageEventCopyWithImpl<_$SaveImageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String description, int id, String image, String? dbId)
        addCollection,
    required TResult Function(String img) saveImageEvent,
    required TResult Function(int id) saveQuranChapterId,
    required TResult Function(String nameValue) nameChanged,
    required TResult Function(String descriptionValue) descriptionChanged,
    required TResult Function(
            String name, String description, int id, String image, String dbId)
        editCollection,
  }) {
    return saveImageEvent(img);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, int id, String image,
            String? dbId)?
        addCollection,
    TResult? Function(String img)? saveImageEvent,
    TResult? Function(int id)? saveQuranChapterId,
    TResult? Function(String nameValue)? nameChanged,
    TResult? Function(String descriptionValue)? descriptionChanged,
    TResult? Function(
            String name, String description, int id, String image, String dbId)?
        editCollection,
  }) {
    return saveImageEvent?.call(img);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, int id, String image,
            String? dbId)?
        addCollection,
    TResult Function(String img)? saveImageEvent,
    TResult Function(int id)? saveQuranChapterId,
    TResult Function(String nameValue)? nameChanged,
    TResult Function(String descriptionValue)? descriptionChanged,
    TResult Function(
            String name, String description, int id, String image, String dbId)?
        editCollection,
    required TResult orElse(),
  }) {
    if (saveImageEvent != null) {
      return saveImageEvent(img);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCollection value) addCollection,
    required TResult Function(SaveImageEvent value) saveImageEvent,
    required TResult Function(SaveQuranChapterId value) saveQuranChapterId,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(EditCollection value) editCollection,
  }) {
    return saveImageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCollection value)? addCollection,
    TResult? Function(SaveImageEvent value)? saveImageEvent,
    TResult? Function(SaveQuranChapterId value)? saveQuranChapterId,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(DescriptionChanged value)? descriptionChanged,
    TResult? Function(EditCollection value)? editCollection,
  }) {
    return saveImageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCollection value)? addCollection,
    TResult Function(SaveImageEvent value)? saveImageEvent,
    TResult Function(SaveQuranChapterId value)? saveQuranChapterId,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(EditCollection value)? editCollection,
    required TResult orElse(),
  }) {
    if (saveImageEvent != null) {
      return saveImageEvent(this);
    }
    return orElse();
  }
}

abstract class SaveImageEvent implements BookmarkEvent {
  const factory SaveImageEvent({required final String img}) = _$SaveImageEvent;

  String get img;
  @JsonKey(ignore: true)
  _$$SaveImageEventCopyWith<_$SaveImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveQuranChapterIdCopyWith<$Res> {
  factory _$$SaveQuranChapterIdCopyWith(_$SaveQuranChapterId value,
          $Res Function(_$SaveQuranChapterId) then) =
      __$$SaveQuranChapterIdCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SaveQuranChapterIdCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$SaveQuranChapterId>
    implements _$$SaveQuranChapterIdCopyWith<$Res> {
  __$$SaveQuranChapterIdCopyWithImpl(
      _$SaveQuranChapterId _value, $Res Function(_$SaveQuranChapterId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SaveQuranChapterId(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SaveQuranChapterId implements SaveQuranChapterId {
  const _$SaveQuranChapterId({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'BookmarkEvent.saveQuranChapterId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveQuranChapterId &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveQuranChapterIdCopyWith<_$SaveQuranChapterId> get copyWith =>
      __$$SaveQuranChapterIdCopyWithImpl<_$SaveQuranChapterId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String description, int id, String image, String? dbId)
        addCollection,
    required TResult Function(String img) saveImageEvent,
    required TResult Function(int id) saveQuranChapterId,
    required TResult Function(String nameValue) nameChanged,
    required TResult Function(String descriptionValue) descriptionChanged,
    required TResult Function(
            String name, String description, int id, String image, String dbId)
        editCollection,
  }) {
    return saveQuranChapterId(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, int id, String image,
            String? dbId)?
        addCollection,
    TResult? Function(String img)? saveImageEvent,
    TResult? Function(int id)? saveQuranChapterId,
    TResult? Function(String nameValue)? nameChanged,
    TResult? Function(String descriptionValue)? descriptionChanged,
    TResult? Function(
            String name, String description, int id, String image, String dbId)?
        editCollection,
  }) {
    return saveQuranChapterId?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, int id, String image,
            String? dbId)?
        addCollection,
    TResult Function(String img)? saveImageEvent,
    TResult Function(int id)? saveQuranChapterId,
    TResult Function(String nameValue)? nameChanged,
    TResult Function(String descriptionValue)? descriptionChanged,
    TResult Function(
            String name, String description, int id, String image, String dbId)?
        editCollection,
    required TResult orElse(),
  }) {
    if (saveQuranChapterId != null) {
      return saveQuranChapterId(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCollection value) addCollection,
    required TResult Function(SaveImageEvent value) saveImageEvent,
    required TResult Function(SaveQuranChapterId value) saveQuranChapterId,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(EditCollection value) editCollection,
  }) {
    return saveQuranChapterId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCollection value)? addCollection,
    TResult? Function(SaveImageEvent value)? saveImageEvent,
    TResult? Function(SaveQuranChapterId value)? saveQuranChapterId,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(DescriptionChanged value)? descriptionChanged,
    TResult? Function(EditCollection value)? editCollection,
  }) {
    return saveQuranChapterId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCollection value)? addCollection,
    TResult Function(SaveImageEvent value)? saveImageEvent,
    TResult Function(SaveQuranChapterId value)? saveQuranChapterId,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(EditCollection value)? editCollection,
    required TResult orElse(),
  }) {
    if (saveQuranChapterId != null) {
      return saveQuranChapterId(this);
    }
    return orElse();
  }
}

abstract class SaveQuranChapterId implements BookmarkEvent {
  const factory SaveQuranChapterId({required final int id}) =
      _$SaveQuranChapterId;

  int get id;
  @JsonKey(ignore: true)
  _$$SaveQuranChapterIdCopyWith<_$SaveQuranChapterId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedCopyWith<$Res> {
  factory _$$NameChangedCopyWith(
          _$NameChanged value, $Res Function(_$NameChanged) then) =
      __$$NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameValue});
}

/// @nodoc
class __$$NameChangedCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$NameChanged>
    implements _$$NameChangedCopyWith<$Res> {
  __$$NameChangedCopyWithImpl(
      _$NameChanged _value, $Res Function(_$NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameValue = null,
  }) {
    return _then(_$NameChanged(
      nameValue: null == nameValue
          ? _value.nameValue
          : nameValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged({required this.nameValue});

  @override
  final String nameValue;

  @override
  String toString() {
    return 'BookmarkEvent.nameChanged(nameValue: $nameValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChanged &&
            (identical(other.nameValue, nameValue) ||
                other.nameValue == nameValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      __$$NameChangedCopyWithImpl<_$NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String description, int id, String image, String? dbId)
        addCollection,
    required TResult Function(String img) saveImageEvent,
    required TResult Function(int id) saveQuranChapterId,
    required TResult Function(String nameValue) nameChanged,
    required TResult Function(String descriptionValue) descriptionChanged,
    required TResult Function(
            String name, String description, int id, String image, String dbId)
        editCollection,
  }) {
    return nameChanged(nameValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, int id, String image,
            String? dbId)?
        addCollection,
    TResult? Function(String img)? saveImageEvent,
    TResult? Function(int id)? saveQuranChapterId,
    TResult? Function(String nameValue)? nameChanged,
    TResult? Function(String descriptionValue)? descriptionChanged,
    TResult? Function(
            String name, String description, int id, String image, String dbId)?
        editCollection,
  }) {
    return nameChanged?.call(nameValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, int id, String image,
            String? dbId)?
        addCollection,
    TResult Function(String img)? saveImageEvent,
    TResult Function(int id)? saveQuranChapterId,
    TResult Function(String nameValue)? nameChanged,
    TResult Function(String descriptionValue)? descriptionChanged,
    TResult Function(
            String name, String description, int id, String image, String dbId)?
        editCollection,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCollection value) addCollection,
    required TResult Function(SaveImageEvent value) saveImageEvent,
    required TResult Function(SaveQuranChapterId value) saveQuranChapterId,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(EditCollection value) editCollection,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCollection value)? addCollection,
    TResult? Function(SaveImageEvent value)? saveImageEvent,
    TResult? Function(SaveQuranChapterId value)? saveQuranChapterId,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(DescriptionChanged value)? descriptionChanged,
    TResult? Function(EditCollection value)? editCollection,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCollection value)? addCollection,
    TResult Function(SaveImageEvent value)? saveImageEvent,
    TResult Function(SaveQuranChapterId value)? saveQuranChapterId,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(EditCollection value)? editCollection,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements BookmarkEvent {
  const factory NameChanged({required final String nameValue}) = _$NameChanged;

  String get nameValue;
  @JsonKey(ignore: true)
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescriptionChangedCopyWith<$Res> {
  factory _$$DescriptionChangedCopyWith(_$DescriptionChanged value,
          $Res Function(_$DescriptionChanged) then) =
      __$$DescriptionChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String descriptionValue});
}

/// @nodoc
class __$$DescriptionChangedCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$DescriptionChanged>
    implements _$$DescriptionChangedCopyWith<$Res> {
  __$$DescriptionChangedCopyWithImpl(
      _$DescriptionChanged _value, $Res Function(_$DescriptionChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descriptionValue = null,
  }) {
    return _then(_$DescriptionChanged(
      descriptionValue: null == descriptionValue
          ? _value.descriptionValue
          : descriptionValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DescriptionChanged implements DescriptionChanged {
  const _$DescriptionChanged({required this.descriptionValue});

  @override
  final String descriptionValue;

  @override
  String toString() {
    return 'BookmarkEvent.descriptionChanged(descriptionValue: $descriptionValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionChanged &&
            (identical(other.descriptionValue, descriptionValue) ||
                other.descriptionValue == descriptionValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, descriptionValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionChangedCopyWith<_$DescriptionChanged> get copyWith =>
      __$$DescriptionChangedCopyWithImpl<_$DescriptionChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String description, int id, String image, String? dbId)
        addCollection,
    required TResult Function(String img) saveImageEvent,
    required TResult Function(int id) saveQuranChapterId,
    required TResult Function(String nameValue) nameChanged,
    required TResult Function(String descriptionValue) descriptionChanged,
    required TResult Function(
            String name, String description, int id, String image, String dbId)
        editCollection,
  }) {
    return descriptionChanged(descriptionValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, int id, String image,
            String? dbId)?
        addCollection,
    TResult? Function(String img)? saveImageEvent,
    TResult? Function(int id)? saveQuranChapterId,
    TResult? Function(String nameValue)? nameChanged,
    TResult? Function(String descriptionValue)? descriptionChanged,
    TResult? Function(
            String name, String description, int id, String image, String dbId)?
        editCollection,
  }) {
    return descriptionChanged?.call(descriptionValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, int id, String image,
            String? dbId)?
        addCollection,
    TResult Function(String img)? saveImageEvent,
    TResult Function(int id)? saveQuranChapterId,
    TResult Function(String nameValue)? nameChanged,
    TResult Function(String descriptionValue)? descriptionChanged,
    TResult Function(
            String name, String description, int id, String image, String dbId)?
        editCollection,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(descriptionValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCollection value) addCollection,
    required TResult Function(SaveImageEvent value) saveImageEvent,
    required TResult Function(SaveQuranChapterId value) saveQuranChapterId,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(EditCollection value) editCollection,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCollection value)? addCollection,
    TResult? Function(SaveImageEvent value)? saveImageEvent,
    TResult? Function(SaveQuranChapterId value)? saveQuranChapterId,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(DescriptionChanged value)? descriptionChanged,
    TResult? Function(EditCollection value)? editCollection,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCollection value)? addCollection,
    TResult Function(SaveImageEvent value)? saveImageEvent,
    TResult Function(SaveQuranChapterId value)? saveQuranChapterId,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(EditCollection value)? editCollection,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class DescriptionChanged implements BookmarkEvent {
  const factory DescriptionChanged({required final String descriptionValue}) =
      _$DescriptionChanged;

  String get descriptionValue;
  @JsonKey(ignore: true)
  _$$DescriptionChangedCopyWith<_$DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditCollectionCopyWith<$Res> {
  factory _$$EditCollectionCopyWith(
          _$EditCollection value, $Res Function(_$EditCollection) then) =
      __$$EditCollectionCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name, String description, int id, String image, String dbId});
}

/// @nodoc
class __$$EditCollectionCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$EditCollection>
    implements _$$EditCollectionCopyWith<$Res> {
  __$$EditCollectionCopyWithImpl(
      _$EditCollection _value, $Res Function(_$EditCollection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? id = null,
    Object? image = null,
    Object? dbId = null,
  }) {
    return _then(_$EditCollection(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      dbId: null == dbId
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditCollection implements EditCollection {
  const _$EditCollection(
      {required this.name,
      required this.description,
      required this.id,
      required this.image,
      required this.dbId});

  @override
  final String name;
  @override
  final String description;
  @override
  final int id;
  @override
  final String image;
  @override
  final String dbId;

  @override
  String toString() {
    return 'BookmarkEvent.editCollection(name: $name, description: $description, id: $id, image: $image, dbId: $dbId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditCollection &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.dbId, dbId) || other.dbId == dbId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, id, image, dbId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditCollectionCopyWith<_$EditCollection> get copyWith =>
      __$$EditCollectionCopyWithImpl<_$EditCollection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String description, int id, String image, String? dbId)
        addCollection,
    required TResult Function(String img) saveImageEvent,
    required TResult Function(int id) saveQuranChapterId,
    required TResult Function(String nameValue) nameChanged,
    required TResult Function(String descriptionValue) descriptionChanged,
    required TResult Function(
            String name, String description, int id, String image, String dbId)
        editCollection,
  }) {
    return editCollection(name, description, id, image, dbId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, int id, String image,
            String? dbId)?
        addCollection,
    TResult? Function(String img)? saveImageEvent,
    TResult? Function(int id)? saveQuranChapterId,
    TResult? Function(String nameValue)? nameChanged,
    TResult? Function(String descriptionValue)? descriptionChanged,
    TResult? Function(
            String name, String description, int id, String image, String dbId)?
        editCollection,
  }) {
    return editCollection?.call(name, description, id, image, dbId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, int id, String image,
            String? dbId)?
        addCollection,
    TResult Function(String img)? saveImageEvent,
    TResult Function(int id)? saveQuranChapterId,
    TResult Function(String nameValue)? nameChanged,
    TResult Function(String descriptionValue)? descriptionChanged,
    TResult Function(
            String name, String description, int id, String image, String dbId)?
        editCollection,
    required TResult orElse(),
  }) {
    if (editCollection != null) {
      return editCollection(name, description, id, image, dbId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCollection value) addCollection,
    required TResult Function(SaveImageEvent value) saveImageEvent,
    required TResult Function(SaveQuranChapterId value) saveQuranChapterId,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(EditCollection value) editCollection,
  }) {
    return editCollection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCollection value)? addCollection,
    TResult? Function(SaveImageEvent value)? saveImageEvent,
    TResult? Function(SaveQuranChapterId value)? saveQuranChapterId,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(DescriptionChanged value)? descriptionChanged,
    TResult? Function(EditCollection value)? editCollection,
  }) {
    return editCollection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCollection value)? addCollection,
    TResult Function(SaveImageEvent value)? saveImageEvent,
    TResult Function(SaveQuranChapterId value)? saveQuranChapterId,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(EditCollection value)? editCollection,
    required TResult orElse(),
  }) {
    if (editCollection != null) {
      return editCollection(this);
    }
    return orElse();
  }
}

abstract class EditCollection implements BookmarkEvent {
  const factory EditCollection(
      {required final String name,
      required final String description,
      required final int id,
      required final String image,
      required final String dbId}) = _$EditCollection;

  String get name;
  String get description;
  int get id;
  String get image;
  String get dbId;
  @JsonKey(ignore: true)
  _$$EditCollectionCopyWith<_$EditCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookmarkState {
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get dbId => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookmarkStateCopyWith<BookmarkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkStateCopyWith<$Res> {
  factory $BookmarkStateCopyWith(
          BookmarkState value, $Res Function(BookmarkState) then) =
      _$BookmarkStateCopyWithImpl<$Res, BookmarkState>;
  @useResult
  $Res call(
      {String image,
      String name,
      String description,
      String errorMessage,
      int id,
      String dbId,
      bool isSuccess});
}

/// @nodoc
class _$BookmarkStateCopyWithImpl<$Res, $Val extends BookmarkState>
    implements $BookmarkStateCopyWith<$Res> {
  _$BookmarkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? description = null,
    Object? errorMessage = null,
    Object? id = null,
    Object? dbId = null,
    Object? isSuccess = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dbId: null == dbId
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookmarkStateCopyWith<$Res>
    implements $BookmarkStateCopyWith<$Res> {
  factory _$$_BookmarkStateCopyWith(
          _$_BookmarkState value, $Res Function(_$_BookmarkState) then) =
      __$$_BookmarkStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String image,
      String name,
      String description,
      String errorMessage,
      int id,
      String dbId,
      bool isSuccess});
}

/// @nodoc
class __$$_BookmarkStateCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$_BookmarkState>
    implements _$$_BookmarkStateCopyWith<$Res> {
  __$$_BookmarkStateCopyWithImpl(
      _$_BookmarkState _value, $Res Function(_$_BookmarkState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? description = null,
    Object? errorMessage = null,
    Object? id = null,
    Object? dbId = null,
    Object? isSuccess = null,
  }) {
    return _then(_$_BookmarkState(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dbId: null == dbId
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BookmarkState implements _BookmarkState {
  const _$_BookmarkState(
      {required this.image,
      required this.name,
      required this.description,
      required this.errorMessage,
      required this.id,
      required this.dbId,
      required this.isSuccess});

  @override
  final String image;
  @override
  final String name;
  @override
  final String description;
  @override
  final String errorMessage;
  @override
  final int id;
  @override
  final String dbId;
  @override
  final bool isSuccess;

  @override
  String toString() {
    return 'BookmarkState(image: $image, name: $name, description: $description, errorMessage: $errorMessage, id: $id, dbId: $dbId, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookmarkState &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dbId, dbId) || other.dbId == dbId) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, image, name, description, errorMessage, id, dbId, isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookmarkStateCopyWith<_$_BookmarkState> get copyWith =>
      __$$_BookmarkStateCopyWithImpl<_$_BookmarkState>(this, _$identity);
}

abstract class _BookmarkState implements BookmarkState {
  const factory _BookmarkState(
      {required final String image,
      required final String name,
      required final String description,
      required final String errorMessage,
      required final int id,
      required final String dbId,
      required final bool isSuccess}) = _$_BookmarkState;

  @override
  String get image;
  @override
  String get name;
  @override
  String get description;
  @override
  String get errorMessage;
  @override
  int get id;
  @override
  String get dbId;
  @override
  bool get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_BookmarkStateCopyWith<_$_BookmarkState> get copyWith =>
      throw _privateConstructorUsedError;
}
