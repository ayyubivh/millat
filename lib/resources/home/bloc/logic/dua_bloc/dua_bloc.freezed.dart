// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dua_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DuaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDuaCategoryEvent,
    required TResult Function(String categoryId) fetchDuaSubCategorybyCategory,
    required TResult Function(String subCategoryId) fetchDuaBySubcategoryEvent,
    required TResult Function(BuildContext buildcontext) fetchDuaBookMarksEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDuaCategoryEvent,
    TResult? Function(String categoryId)? fetchDuaSubCategorybyCategory,
    TResult? Function(String subCategoryId)? fetchDuaBySubcategoryEvent,
    TResult? Function(BuildContext buildcontext)? fetchDuaBookMarksEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDuaCategoryEvent,
    TResult Function(String categoryId)? fetchDuaSubCategorybyCategory,
    TResult Function(String subCategoryId)? fetchDuaBySubcategoryEvent,
    TResult Function(BuildContext buildcontext)? fetchDuaBookMarksEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDuaCategoryEvent value)
        fetchDuaCategoryEvent,
    required TResult Function(FetchDuaSubCategorybyCategory value)
        fetchDuaSubCategorybyCategory,
    required TResult Function(FetchDuaBySubcategoryEvent value)
        fetchDuaBySubcategoryEvent,
    required TResult Function(FetchDuaBookMarksEvent value)
        fetchDuaBookMarksEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDuaCategoryEvent value)? fetchDuaCategoryEvent,
    TResult? Function(FetchDuaSubCategorybyCategory value)?
        fetchDuaSubCategorybyCategory,
    TResult? Function(FetchDuaBySubcategoryEvent value)?
        fetchDuaBySubcategoryEvent,
    TResult? Function(FetchDuaBookMarksEvent value)? fetchDuaBookMarksEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDuaCategoryEvent value)? fetchDuaCategoryEvent,
    TResult Function(FetchDuaSubCategorybyCategory value)?
        fetchDuaSubCategorybyCategory,
    TResult Function(FetchDuaBySubcategoryEvent value)?
        fetchDuaBySubcategoryEvent,
    TResult Function(FetchDuaBookMarksEvent value)? fetchDuaBookMarksEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuaEventCopyWith<$Res> {
  factory $DuaEventCopyWith(DuaEvent value, $Res Function(DuaEvent) then) =
      _$DuaEventCopyWithImpl<$Res, DuaEvent>;
}

/// @nodoc
class _$DuaEventCopyWithImpl<$Res, $Val extends DuaEvent>
    implements $DuaEventCopyWith<$Res> {
  _$DuaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchDuaCategoryEventCopyWith<$Res> {
  factory _$$FetchDuaCategoryEventCopyWith(_$FetchDuaCategoryEvent value,
          $Res Function(_$FetchDuaCategoryEvent) then) =
      __$$FetchDuaCategoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDuaCategoryEventCopyWithImpl<$Res>
    extends _$DuaEventCopyWithImpl<$Res, _$FetchDuaCategoryEvent>
    implements _$$FetchDuaCategoryEventCopyWith<$Res> {
  __$$FetchDuaCategoryEventCopyWithImpl(_$FetchDuaCategoryEvent _value,
      $Res Function(_$FetchDuaCategoryEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchDuaCategoryEvent implements FetchDuaCategoryEvent {
  const _$FetchDuaCategoryEvent();

  @override
  String toString() {
    return 'DuaEvent.fetchDuaCategoryEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDuaCategoryEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDuaCategoryEvent,
    required TResult Function(String categoryId) fetchDuaSubCategorybyCategory,
    required TResult Function(String subCategoryId) fetchDuaBySubcategoryEvent,
    required TResult Function(BuildContext buildcontext) fetchDuaBookMarksEvent,
  }) {
    return fetchDuaCategoryEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDuaCategoryEvent,
    TResult? Function(String categoryId)? fetchDuaSubCategorybyCategory,
    TResult? Function(String subCategoryId)? fetchDuaBySubcategoryEvent,
    TResult? Function(BuildContext buildcontext)? fetchDuaBookMarksEvent,
  }) {
    return fetchDuaCategoryEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDuaCategoryEvent,
    TResult Function(String categoryId)? fetchDuaSubCategorybyCategory,
    TResult Function(String subCategoryId)? fetchDuaBySubcategoryEvent,
    TResult Function(BuildContext buildcontext)? fetchDuaBookMarksEvent,
    required TResult orElse(),
  }) {
    if (fetchDuaCategoryEvent != null) {
      return fetchDuaCategoryEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDuaCategoryEvent value)
        fetchDuaCategoryEvent,
    required TResult Function(FetchDuaSubCategorybyCategory value)
        fetchDuaSubCategorybyCategory,
    required TResult Function(FetchDuaBySubcategoryEvent value)
        fetchDuaBySubcategoryEvent,
    required TResult Function(FetchDuaBookMarksEvent value)
        fetchDuaBookMarksEvent,
  }) {
    return fetchDuaCategoryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDuaCategoryEvent value)? fetchDuaCategoryEvent,
    TResult? Function(FetchDuaSubCategorybyCategory value)?
        fetchDuaSubCategorybyCategory,
    TResult? Function(FetchDuaBySubcategoryEvent value)?
        fetchDuaBySubcategoryEvent,
    TResult? Function(FetchDuaBookMarksEvent value)? fetchDuaBookMarksEvent,
  }) {
    return fetchDuaCategoryEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDuaCategoryEvent value)? fetchDuaCategoryEvent,
    TResult Function(FetchDuaSubCategorybyCategory value)?
        fetchDuaSubCategorybyCategory,
    TResult Function(FetchDuaBySubcategoryEvent value)?
        fetchDuaBySubcategoryEvent,
    TResult Function(FetchDuaBookMarksEvent value)? fetchDuaBookMarksEvent,
    required TResult orElse(),
  }) {
    if (fetchDuaCategoryEvent != null) {
      return fetchDuaCategoryEvent(this);
    }
    return orElse();
  }
}

abstract class FetchDuaCategoryEvent implements DuaEvent {
  const factory FetchDuaCategoryEvent() = _$FetchDuaCategoryEvent;
}

/// @nodoc
abstract class _$$FetchDuaSubCategorybyCategoryCopyWith<$Res> {
  factory _$$FetchDuaSubCategorybyCategoryCopyWith(
          _$FetchDuaSubCategorybyCategory value,
          $Res Function(_$FetchDuaSubCategorybyCategory) then) =
      __$$FetchDuaSubCategorybyCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$FetchDuaSubCategorybyCategoryCopyWithImpl<$Res>
    extends _$DuaEventCopyWithImpl<$Res, _$FetchDuaSubCategorybyCategory>
    implements _$$FetchDuaSubCategorybyCategoryCopyWith<$Res> {
  __$$FetchDuaSubCategorybyCategoryCopyWithImpl(
      _$FetchDuaSubCategorybyCategory _value,
      $Res Function(_$FetchDuaSubCategorybyCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$FetchDuaSubCategorybyCategory(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchDuaSubCategorybyCategory implements FetchDuaSubCategorybyCategory {
  const _$FetchDuaSubCategorybyCategory({required this.categoryId});

  @override
  final String categoryId;

  @override
  String toString() {
    return 'DuaEvent.fetchDuaSubCategorybyCategory(categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDuaSubCategorybyCategory &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDuaSubCategorybyCategoryCopyWith<_$FetchDuaSubCategorybyCategory>
      get copyWith => __$$FetchDuaSubCategorybyCategoryCopyWithImpl<
          _$FetchDuaSubCategorybyCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDuaCategoryEvent,
    required TResult Function(String categoryId) fetchDuaSubCategorybyCategory,
    required TResult Function(String subCategoryId) fetchDuaBySubcategoryEvent,
    required TResult Function(BuildContext buildcontext) fetchDuaBookMarksEvent,
  }) {
    return fetchDuaSubCategorybyCategory(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDuaCategoryEvent,
    TResult? Function(String categoryId)? fetchDuaSubCategorybyCategory,
    TResult? Function(String subCategoryId)? fetchDuaBySubcategoryEvent,
    TResult? Function(BuildContext buildcontext)? fetchDuaBookMarksEvent,
  }) {
    return fetchDuaSubCategorybyCategory?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDuaCategoryEvent,
    TResult Function(String categoryId)? fetchDuaSubCategorybyCategory,
    TResult Function(String subCategoryId)? fetchDuaBySubcategoryEvent,
    TResult Function(BuildContext buildcontext)? fetchDuaBookMarksEvent,
    required TResult orElse(),
  }) {
    if (fetchDuaSubCategorybyCategory != null) {
      return fetchDuaSubCategorybyCategory(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDuaCategoryEvent value)
        fetchDuaCategoryEvent,
    required TResult Function(FetchDuaSubCategorybyCategory value)
        fetchDuaSubCategorybyCategory,
    required TResult Function(FetchDuaBySubcategoryEvent value)
        fetchDuaBySubcategoryEvent,
    required TResult Function(FetchDuaBookMarksEvent value)
        fetchDuaBookMarksEvent,
  }) {
    return fetchDuaSubCategorybyCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDuaCategoryEvent value)? fetchDuaCategoryEvent,
    TResult? Function(FetchDuaSubCategorybyCategory value)?
        fetchDuaSubCategorybyCategory,
    TResult? Function(FetchDuaBySubcategoryEvent value)?
        fetchDuaBySubcategoryEvent,
    TResult? Function(FetchDuaBookMarksEvent value)? fetchDuaBookMarksEvent,
  }) {
    return fetchDuaSubCategorybyCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDuaCategoryEvent value)? fetchDuaCategoryEvent,
    TResult Function(FetchDuaSubCategorybyCategory value)?
        fetchDuaSubCategorybyCategory,
    TResult Function(FetchDuaBySubcategoryEvent value)?
        fetchDuaBySubcategoryEvent,
    TResult Function(FetchDuaBookMarksEvent value)? fetchDuaBookMarksEvent,
    required TResult orElse(),
  }) {
    if (fetchDuaSubCategorybyCategory != null) {
      return fetchDuaSubCategorybyCategory(this);
    }
    return orElse();
  }
}

abstract class FetchDuaSubCategorybyCategory implements DuaEvent {
  const factory FetchDuaSubCategorybyCategory(
      {required final String categoryId}) = _$FetchDuaSubCategorybyCategory;

  String get categoryId;
  @JsonKey(ignore: true)
  _$$FetchDuaSubCategorybyCategoryCopyWith<_$FetchDuaSubCategorybyCategory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchDuaBySubcategoryEventCopyWith<$Res> {
  factory _$$FetchDuaBySubcategoryEventCopyWith(
          _$FetchDuaBySubcategoryEvent value,
          $Res Function(_$FetchDuaBySubcategoryEvent) then) =
      __$$FetchDuaBySubcategoryEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String subCategoryId});
}

/// @nodoc
class __$$FetchDuaBySubcategoryEventCopyWithImpl<$Res>
    extends _$DuaEventCopyWithImpl<$Res, _$FetchDuaBySubcategoryEvent>
    implements _$$FetchDuaBySubcategoryEventCopyWith<$Res> {
  __$$FetchDuaBySubcategoryEventCopyWithImpl(
      _$FetchDuaBySubcategoryEvent _value,
      $Res Function(_$FetchDuaBySubcategoryEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategoryId = null,
  }) {
    return _then(_$FetchDuaBySubcategoryEvent(
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchDuaBySubcategoryEvent implements FetchDuaBySubcategoryEvent {
  const _$FetchDuaBySubcategoryEvent({required this.subCategoryId});

  @override
  final String subCategoryId;

  @override
  String toString() {
    return 'DuaEvent.fetchDuaBySubcategoryEvent(subCategoryId: $subCategoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDuaBySubcategoryEvent &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subCategoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDuaBySubcategoryEventCopyWith<_$FetchDuaBySubcategoryEvent>
      get copyWith => __$$FetchDuaBySubcategoryEventCopyWithImpl<
          _$FetchDuaBySubcategoryEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDuaCategoryEvent,
    required TResult Function(String categoryId) fetchDuaSubCategorybyCategory,
    required TResult Function(String subCategoryId) fetchDuaBySubcategoryEvent,
    required TResult Function(BuildContext buildcontext) fetchDuaBookMarksEvent,
  }) {
    return fetchDuaBySubcategoryEvent(subCategoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDuaCategoryEvent,
    TResult? Function(String categoryId)? fetchDuaSubCategorybyCategory,
    TResult? Function(String subCategoryId)? fetchDuaBySubcategoryEvent,
    TResult? Function(BuildContext buildcontext)? fetchDuaBookMarksEvent,
  }) {
    return fetchDuaBySubcategoryEvent?.call(subCategoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDuaCategoryEvent,
    TResult Function(String categoryId)? fetchDuaSubCategorybyCategory,
    TResult Function(String subCategoryId)? fetchDuaBySubcategoryEvent,
    TResult Function(BuildContext buildcontext)? fetchDuaBookMarksEvent,
    required TResult orElse(),
  }) {
    if (fetchDuaBySubcategoryEvent != null) {
      return fetchDuaBySubcategoryEvent(subCategoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDuaCategoryEvent value)
        fetchDuaCategoryEvent,
    required TResult Function(FetchDuaSubCategorybyCategory value)
        fetchDuaSubCategorybyCategory,
    required TResult Function(FetchDuaBySubcategoryEvent value)
        fetchDuaBySubcategoryEvent,
    required TResult Function(FetchDuaBookMarksEvent value)
        fetchDuaBookMarksEvent,
  }) {
    return fetchDuaBySubcategoryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDuaCategoryEvent value)? fetchDuaCategoryEvent,
    TResult? Function(FetchDuaSubCategorybyCategory value)?
        fetchDuaSubCategorybyCategory,
    TResult? Function(FetchDuaBySubcategoryEvent value)?
        fetchDuaBySubcategoryEvent,
    TResult? Function(FetchDuaBookMarksEvent value)? fetchDuaBookMarksEvent,
  }) {
    return fetchDuaBySubcategoryEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDuaCategoryEvent value)? fetchDuaCategoryEvent,
    TResult Function(FetchDuaSubCategorybyCategory value)?
        fetchDuaSubCategorybyCategory,
    TResult Function(FetchDuaBySubcategoryEvent value)?
        fetchDuaBySubcategoryEvent,
    TResult Function(FetchDuaBookMarksEvent value)? fetchDuaBookMarksEvent,
    required TResult orElse(),
  }) {
    if (fetchDuaBySubcategoryEvent != null) {
      return fetchDuaBySubcategoryEvent(this);
    }
    return orElse();
  }
}

abstract class FetchDuaBySubcategoryEvent implements DuaEvent {
  const factory FetchDuaBySubcategoryEvent(
      {required final String subCategoryId}) = _$FetchDuaBySubcategoryEvent;

  String get subCategoryId;
  @JsonKey(ignore: true)
  _$$FetchDuaBySubcategoryEventCopyWith<_$FetchDuaBySubcategoryEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchDuaBookMarksEventCopyWith<$Res> {
  factory _$$FetchDuaBookMarksEventCopyWith(_$FetchDuaBookMarksEvent value,
          $Res Function(_$FetchDuaBookMarksEvent) then) =
      __$$FetchDuaBookMarksEventCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext buildcontext});
}

/// @nodoc
class __$$FetchDuaBookMarksEventCopyWithImpl<$Res>
    extends _$DuaEventCopyWithImpl<$Res, _$FetchDuaBookMarksEvent>
    implements _$$FetchDuaBookMarksEventCopyWith<$Res> {
  __$$FetchDuaBookMarksEventCopyWithImpl(_$FetchDuaBookMarksEvent _value,
      $Res Function(_$FetchDuaBookMarksEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildcontext = null,
  }) {
    return _then(_$FetchDuaBookMarksEvent(
      null == buildcontext
          ? _value.buildcontext
          : buildcontext // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$FetchDuaBookMarksEvent implements FetchDuaBookMarksEvent {
  const _$FetchDuaBookMarksEvent(this.buildcontext);

  @override
  final BuildContext buildcontext;

  @override
  String toString() {
    return 'DuaEvent.fetchDuaBookMarksEvent(buildcontext: $buildcontext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDuaBookMarksEvent &&
            (identical(other.buildcontext, buildcontext) ||
                other.buildcontext == buildcontext));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buildcontext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDuaBookMarksEventCopyWith<_$FetchDuaBookMarksEvent> get copyWith =>
      __$$FetchDuaBookMarksEventCopyWithImpl<_$FetchDuaBookMarksEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDuaCategoryEvent,
    required TResult Function(String categoryId) fetchDuaSubCategorybyCategory,
    required TResult Function(String subCategoryId) fetchDuaBySubcategoryEvent,
    required TResult Function(BuildContext buildcontext) fetchDuaBookMarksEvent,
  }) {
    return fetchDuaBookMarksEvent(buildcontext);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDuaCategoryEvent,
    TResult? Function(String categoryId)? fetchDuaSubCategorybyCategory,
    TResult? Function(String subCategoryId)? fetchDuaBySubcategoryEvent,
    TResult? Function(BuildContext buildcontext)? fetchDuaBookMarksEvent,
  }) {
    return fetchDuaBookMarksEvent?.call(buildcontext);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDuaCategoryEvent,
    TResult Function(String categoryId)? fetchDuaSubCategorybyCategory,
    TResult Function(String subCategoryId)? fetchDuaBySubcategoryEvent,
    TResult Function(BuildContext buildcontext)? fetchDuaBookMarksEvent,
    required TResult orElse(),
  }) {
    if (fetchDuaBookMarksEvent != null) {
      return fetchDuaBookMarksEvent(buildcontext);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchDuaCategoryEvent value)
        fetchDuaCategoryEvent,
    required TResult Function(FetchDuaSubCategorybyCategory value)
        fetchDuaSubCategorybyCategory,
    required TResult Function(FetchDuaBySubcategoryEvent value)
        fetchDuaBySubcategoryEvent,
    required TResult Function(FetchDuaBookMarksEvent value)
        fetchDuaBookMarksEvent,
  }) {
    return fetchDuaBookMarksEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchDuaCategoryEvent value)? fetchDuaCategoryEvent,
    TResult? Function(FetchDuaSubCategorybyCategory value)?
        fetchDuaSubCategorybyCategory,
    TResult? Function(FetchDuaBySubcategoryEvent value)?
        fetchDuaBySubcategoryEvent,
    TResult? Function(FetchDuaBookMarksEvent value)? fetchDuaBookMarksEvent,
  }) {
    return fetchDuaBookMarksEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchDuaCategoryEvent value)? fetchDuaCategoryEvent,
    TResult Function(FetchDuaSubCategorybyCategory value)?
        fetchDuaSubCategorybyCategory,
    TResult Function(FetchDuaBySubcategoryEvent value)?
        fetchDuaBySubcategoryEvent,
    TResult Function(FetchDuaBookMarksEvent value)? fetchDuaBookMarksEvent,
    required TResult orElse(),
  }) {
    if (fetchDuaBookMarksEvent != null) {
      return fetchDuaBookMarksEvent(this);
    }
    return orElse();
  }
}

abstract class FetchDuaBookMarksEvent implements DuaEvent {
  const factory FetchDuaBookMarksEvent(final BuildContext buildcontext) =
      _$FetchDuaBookMarksEvent;

  BuildContext get buildcontext;
  @JsonKey(ignore: true)
  _$$FetchDuaBookMarksEventCopyWith<_$FetchDuaBookMarksEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DuaState {
  bool get isLoading => throw _privateConstructorUsedError;
  DuaCategoryModel? get duaCategoryModel => throw _privateConstructorUsedError;
  DuaBookMarkModel? get duaBookMarkModel => throw _privateConstructorUsedError;
  DuaSubcategoryModel? get duaSubcategoryModel =>
      throw _privateConstructorUsedError;
  DuaModel? get duaModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DuaStateCopyWith<DuaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuaStateCopyWith<$Res> {
  factory $DuaStateCopyWith(DuaState value, $Res Function(DuaState) then) =
      _$DuaStateCopyWithImpl<$Res, DuaState>;
  @useResult
  $Res call(
      {bool isLoading,
      DuaCategoryModel? duaCategoryModel,
      DuaBookMarkModel? duaBookMarkModel,
      DuaSubcategoryModel? duaSubcategoryModel,
      DuaModel? duaModel});

  $DuaCategoryModelCopyWith<$Res>? get duaCategoryModel;
  $DuaBookMarkModelCopyWith<$Res>? get duaBookMarkModel;
  $DuaSubcategoryModelCopyWith<$Res>? get duaSubcategoryModel;
  $DuaModelCopyWith<$Res>? get duaModel;
}

/// @nodoc
class _$DuaStateCopyWithImpl<$Res, $Val extends DuaState>
    implements $DuaStateCopyWith<$Res> {
  _$DuaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? duaCategoryModel = freezed,
    Object? duaBookMarkModel = freezed,
    Object? duaSubcategoryModel = freezed,
    Object? duaModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      duaCategoryModel: freezed == duaCategoryModel
          ? _value.duaCategoryModel
          : duaCategoryModel // ignore: cast_nullable_to_non_nullable
              as DuaCategoryModel?,
      duaBookMarkModel: freezed == duaBookMarkModel
          ? _value.duaBookMarkModel
          : duaBookMarkModel // ignore: cast_nullable_to_non_nullable
              as DuaBookMarkModel?,
      duaSubcategoryModel: freezed == duaSubcategoryModel
          ? _value.duaSubcategoryModel
          : duaSubcategoryModel // ignore: cast_nullable_to_non_nullable
              as DuaSubcategoryModel?,
      duaModel: freezed == duaModel
          ? _value.duaModel
          : duaModel // ignore: cast_nullable_to_non_nullable
              as DuaModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DuaCategoryModelCopyWith<$Res>? get duaCategoryModel {
    if (_value.duaCategoryModel == null) {
      return null;
    }

    return $DuaCategoryModelCopyWith<$Res>(_value.duaCategoryModel!, (value) {
      return _then(_value.copyWith(duaCategoryModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DuaBookMarkModelCopyWith<$Res>? get duaBookMarkModel {
    if (_value.duaBookMarkModel == null) {
      return null;
    }

    return $DuaBookMarkModelCopyWith<$Res>(_value.duaBookMarkModel!, (value) {
      return _then(_value.copyWith(duaBookMarkModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DuaSubcategoryModelCopyWith<$Res>? get duaSubcategoryModel {
    if (_value.duaSubcategoryModel == null) {
      return null;
    }

    return $DuaSubcategoryModelCopyWith<$Res>(_value.duaSubcategoryModel!,
        (value) {
      return _then(_value.copyWith(duaSubcategoryModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DuaModelCopyWith<$Res>? get duaModel {
    if (_value.duaModel == null) {
      return null;
    }

    return $DuaModelCopyWith<$Res>(_value.duaModel!, (value) {
      return _then(_value.copyWith(duaModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DuaStateCopyWith<$Res> implements $DuaStateCopyWith<$Res> {
  factory _$$_DuaStateCopyWith(
          _$_DuaState value, $Res Function(_$_DuaState) then) =
      __$$_DuaStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      DuaCategoryModel? duaCategoryModel,
      DuaBookMarkModel? duaBookMarkModel,
      DuaSubcategoryModel? duaSubcategoryModel,
      DuaModel? duaModel});

  @override
  $DuaCategoryModelCopyWith<$Res>? get duaCategoryModel;
  @override
  $DuaBookMarkModelCopyWith<$Res>? get duaBookMarkModel;
  @override
  $DuaSubcategoryModelCopyWith<$Res>? get duaSubcategoryModel;
  @override
  $DuaModelCopyWith<$Res>? get duaModel;
}

/// @nodoc
class __$$_DuaStateCopyWithImpl<$Res>
    extends _$DuaStateCopyWithImpl<$Res, _$_DuaState>
    implements _$$_DuaStateCopyWith<$Res> {
  __$$_DuaStateCopyWithImpl(
      _$_DuaState _value, $Res Function(_$_DuaState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? duaCategoryModel = freezed,
    Object? duaBookMarkModel = freezed,
    Object? duaSubcategoryModel = freezed,
    Object? duaModel = freezed,
  }) {
    return _then(_$_DuaState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      duaCategoryModel: freezed == duaCategoryModel
          ? _value.duaCategoryModel
          : duaCategoryModel // ignore: cast_nullable_to_non_nullable
              as DuaCategoryModel?,
      duaBookMarkModel: freezed == duaBookMarkModel
          ? _value.duaBookMarkModel
          : duaBookMarkModel // ignore: cast_nullable_to_non_nullable
              as DuaBookMarkModel?,
      duaSubcategoryModel: freezed == duaSubcategoryModel
          ? _value.duaSubcategoryModel
          : duaSubcategoryModel // ignore: cast_nullable_to_non_nullable
              as DuaSubcategoryModel?,
      duaModel: freezed == duaModel
          ? _value.duaModel
          : duaModel // ignore: cast_nullable_to_non_nullable
              as DuaModel?,
    ));
  }
}

/// @nodoc

class _$_DuaState implements _DuaState {
  const _$_DuaState(
      {required this.isLoading,
      required this.duaCategoryModel,
      required this.duaBookMarkModel,
      required this.duaSubcategoryModel,
      required this.duaModel});

  @override
  final bool isLoading;
  @override
  final DuaCategoryModel? duaCategoryModel;
  @override
  final DuaBookMarkModel? duaBookMarkModel;
  @override
  final DuaSubcategoryModel? duaSubcategoryModel;
  @override
  final DuaModel? duaModel;

  @override
  String toString() {
    return 'DuaState(isLoading: $isLoading, duaCategoryModel: $duaCategoryModel, duaBookMarkModel: $duaBookMarkModel, duaSubcategoryModel: $duaSubcategoryModel, duaModel: $duaModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DuaState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.duaCategoryModel, duaCategoryModel) ||
                other.duaCategoryModel == duaCategoryModel) &&
            (identical(other.duaBookMarkModel, duaBookMarkModel) ||
                other.duaBookMarkModel == duaBookMarkModel) &&
            (identical(other.duaSubcategoryModel, duaSubcategoryModel) ||
                other.duaSubcategoryModel == duaSubcategoryModel) &&
            (identical(other.duaModel, duaModel) ||
                other.duaModel == duaModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, duaCategoryModel,
      duaBookMarkModel, duaSubcategoryModel, duaModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DuaStateCopyWith<_$_DuaState> get copyWith =>
      __$$_DuaStateCopyWithImpl<_$_DuaState>(this, _$identity);
}

abstract class _DuaState implements DuaState {
  const factory _DuaState(
      {required final bool isLoading,
      required final DuaCategoryModel? duaCategoryModel,
      required final DuaBookMarkModel? duaBookMarkModel,
      required final DuaSubcategoryModel? duaSubcategoryModel,
      required final DuaModel? duaModel}) = _$_DuaState;

  @override
  bool get isLoading;
  @override
  DuaCategoryModel? get duaCategoryModel;
  @override
  DuaBookMarkModel? get duaBookMarkModel;
  @override
  DuaSubcategoryModel? get duaSubcategoryModel;
  @override
  DuaModel? get duaModel;
  @override
  @JsonKey(ignore: true)
  _$$_DuaStateCopyWith<_$_DuaState> get copyWith =>
      throw _privateConstructorUsedError;
}
