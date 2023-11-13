// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hadith_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HadithEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchHadithBookEvent,
    required TResult Function(String slug) fetchHadithBooksChapterEvent,
    required TResult Function(String searchVal) searchHadithBookevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchHadithBookEvent,
    TResult? Function(String slug)? fetchHadithBooksChapterEvent,
    TResult? Function(String searchVal)? searchHadithBookevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchHadithBookEvent,
    TResult Function(String slug)? fetchHadithBooksChapterEvent,
    TResult Function(String searchVal)? searchHadithBookevent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchHadithBookEvent value) fetchHadithBookEvent,
    required TResult Function(FetchHadithBooksChapterEvent value)
        fetchHadithBooksChapterEvent,
    required TResult Function(SearchHadithBookevent value)
        searchHadithBookevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchHadithBookEvent value)? fetchHadithBookEvent,
    TResult? Function(FetchHadithBooksChapterEvent value)?
        fetchHadithBooksChapterEvent,
    TResult? Function(SearchHadithBookevent value)? searchHadithBookevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHadithBookEvent value)? fetchHadithBookEvent,
    TResult Function(FetchHadithBooksChapterEvent value)?
        fetchHadithBooksChapterEvent,
    TResult Function(SearchHadithBookevent value)? searchHadithBookevent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithEventCopyWith<$Res> {
  factory $HadithEventCopyWith(
          HadithEvent value, $Res Function(HadithEvent) then) =
      _$HadithEventCopyWithImpl<$Res, HadithEvent>;
}

/// @nodoc
class _$HadithEventCopyWithImpl<$Res, $Val extends HadithEvent>
    implements $HadithEventCopyWith<$Res> {
  _$HadithEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchHadithBookEventImplCopyWith<$Res> {
  factory _$$FetchHadithBookEventImplCopyWith(_$FetchHadithBookEventImpl value,
          $Res Function(_$FetchHadithBookEventImpl) then) =
      __$$FetchHadithBookEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchHadithBookEventImplCopyWithImpl<$Res>
    extends _$HadithEventCopyWithImpl<$Res, _$FetchHadithBookEventImpl>
    implements _$$FetchHadithBookEventImplCopyWith<$Res> {
  __$$FetchHadithBookEventImplCopyWithImpl(_$FetchHadithBookEventImpl _value,
      $Res Function(_$FetchHadithBookEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchHadithBookEventImpl implements FetchHadithBookEvent {
  const _$FetchHadithBookEventImpl();

  @override
  String toString() {
    return 'HadithEvent.fetchHadithBookEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchHadithBookEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchHadithBookEvent,
    required TResult Function(String slug) fetchHadithBooksChapterEvent,
    required TResult Function(String searchVal) searchHadithBookevent,
  }) {
    return fetchHadithBookEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchHadithBookEvent,
    TResult? Function(String slug)? fetchHadithBooksChapterEvent,
    TResult? Function(String searchVal)? searchHadithBookevent,
  }) {
    return fetchHadithBookEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchHadithBookEvent,
    TResult Function(String slug)? fetchHadithBooksChapterEvent,
    TResult Function(String searchVal)? searchHadithBookevent,
    required TResult orElse(),
  }) {
    if (fetchHadithBookEvent != null) {
      return fetchHadithBookEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchHadithBookEvent value) fetchHadithBookEvent,
    required TResult Function(FetchHadithBooksChapterEvent value)
        fetchHadithBooksChapterEvent,
    required TResult Function(SearchHadithBookevent value)
        searchHadithBookevent,
  }) {
    return fetchHadithBookEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchHadithBookEvent value)? fetchHadithBookEvent,
    TResult? Function(FetchHadithBooksChapterEvent value)?
        fetchHadithBooksChapterEvent,
    TResult? Function(SearchHadithBookevent value)? searchHadithBookevent,
  }) {
    return fetchHadithBookEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHadithBookEvent value)? fetchHadithBookEvent,
    TResult Function(FetchHadithBooksChapterEvent value)?
        fetchHadithBooksChapterEvent,
    TResult Function(SearchHadithBookevent value)? searchHadithBookevent,
    required TResult orElse(),
  }) {
    if (fetchHadithBookEvent != null) {
      return fetchHadithBookEvent(this);
    }
    return orElse();
  }
}

abstract class FetchHadithBookEvent implements HadithEvent {
  const factory FetchHadithBookEvent() = _$FetchHadithBookEventImpl;
}

/// @nodoc
abstract class _$$FetchHadithBooksChapterEventImplCopyWith<$Res> {
  factory _$$FetchHadithBooksChapterEventImplCopyWith(
          _$FetchHadithBooksChapterEventImpl value,
          $Res Function(_$FetchHadithBooksChapterEventImpl) then) =
      __$$FetchHadithBooksChapterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String slug});
}

/// @nodoc
class __$$FetchHadithBooksChapterEventImplCopyWithImpl<$Res>
    extends _$HadithEventCopyWithImpl<$Res, _$FetchHadithBooksChapterEventImpl>
    implements _$$FetchHadithBooksChapterEventImplCopyWith<$Res> {
  __$$FetchHadithBooksChapterEventImplCopyWithImpl(
      _$FetchHadithBooksChapterEventImpl _value,
      $Res Function(_$FetchHadithBooksChapterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
  }) {
    return _then(_$FetchHadithBooksChapterEventImpl(
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchHadithBooksChapterEventImpl
    implements FetchHadithBooksChapterEvent {
  const _$FetchHadithBooksChapterEventImpl({required this.slug});

  @override
  final String slug;

  @override
  String toString() {
    return 'HadithEvent.fetchHadithBooksChapterEvent(slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchHadithBooksChapterEventImpl &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchHadithBooksChapterEventImplCopyWith<
          _$FetchHadithBooksChapterEventImpl>
      get copyWith => __$$FetchHadithBooksChapterEventImplCopyWithImpl<
          _$FetchHadithBooksChapterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchHadithBookEvent,
    required TResult Function(String slug) fetchHadithBooksChapterEvent,
    required TResult Function(String searchVal) searchHadithBookevent,
  }) {
    return fetchHadithBooksChapterEvent(slug);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchHadithBookEvent,
    TResult? Function(String slug)? fetchHadithBooksChapterEvent,
    TResult? Function(String searchVal)? searchHadithBookevent,
  }) {
    return fetchHadithBooksChapterEvent?.call(slug);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchHadithBookEvent,
    TResult Function(String slug)? fetchHadithBooksChapterEvent,
    TResult Function(String searchVal)? searchHadithBookevent,
    required TResult orElse(),
  }) {
    if (fetchHadithBooksChapterEvent != null) {
      return fetchHadithBooksChapterEvent(slug);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchHadithBookEvent value) fetchHadithBookEvent,
    required TResult Function(FetchHadithBooksChapterEvent value)
        fetchHadithBooksChapterEvent,
    required TResult Function(SearchHadithBookevent value)
        searchHadithBookevent,
  }) {
    return fetchHadithBooksChapterEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchHadithBookEvent value)? fetchHadithBookEvent,
    TResult? Function(FetchHadithBooksChapterEvent value)?
        fetchHadithBooksChapterEvent,
    TResult? Function(SearchHadithBookevent value)? searchHadithBookevent,
  }) {
    return fetchHadithBooksChapterEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHadithBookEvent value)? fetchHadithBookEvent,
    TResult Function(FetchHadithBooksChapterEvent value)?
        fetchHadithBooksChapterEvent,
    TResult Function(SearchHadithBookevent value)? searchHadithBookevent,
    required TResult orElse(),
  }) {
    if (fetchHadithBooksChapterEvent != null) {
      return fetchHadithBooksChapterEvent(this);
    }
    return orElse();
  }
}

abstract class FetchHadithBooksChapterEvent implements HadithEvent {
  const factory FetchHadithBooksChapterEvent({required final String slug}) =
      _$FetchHadithBooksChapterEventImpl;

  String get slug;
  @JsonKey(ignore: true)
  _$$FetchHadithBooksChapterEventImplCopyWith<
          _$FetchHadithBooksChapterEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchHadithBookeventImplCopyWith<$Res> {
  factory _$$SearchHadithBookeventImplCopyWith(
          _$SearchHadithBookeventImpl value,
          $Res Function(_$SearchHadithBookeventImpl) then) =
      __$$SearchHadithBookeventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchVal});
}

/// @nodoc
class __$$SearchHadithBookeventImplCopyWithImpl<$Res>
    extends _$HadithEventCopyWithImpl<$Res, _$SearchHadithBookeventImpl>
    implements _$$SearchHadithBookeventImplCopyWith<$Res> {
  __$$SearchHadithBookeventImplCopyWithImpl(_$SearchHadithBookeventImpl _value,
      $Res Function(_$SearchHadithBookeventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchVal = null,
  }) {
    return _then(_$SearchHadithBookeventImpl(
      searchVal: null == searchVal
          ? _value.searchVal
          : searchVal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchHadithBookeventImpl implements SearchHadithBookevent {
  const _$SearchHadithBookeventImpl({required this.searchVal});

  @override
  final String searchVal;

  @override
  String toString() {
    return 'HadithEvent.searchHadithBookevent(searchVal: $searchVal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHadithBookeventImpl &&
            (identical(other.searchVal, searchVal) ||
                other.searchVal == searchVal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchVal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHadithBookeventImplCopyWith<_$SearchHadithBookeventImpl>
      get copyWith => __$$SearchHadithBookeventImplCopyWithImpl<
          _$SearchHadithBookeventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchHadithBookEvent,
    required TResult Function(String slug) fetchHadithBooksChapterEvent,
    required TResult Function(String searchVal) searchHadithBookevent,
  }) {
    return searchHadithBookevent(searchVal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchHadithBookEvent,
    TResult? Function(String slug)? fetchHadithBooksChapterEvent,
    TResult? Function(String searchVal)? searchHadithBookevent,
  }) {
    return searchHadithBookevent?.call(searchVal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchHadithBookEvent,
    TResult Function(String slug)? fetchHadithBooksChapterEvent,
    TResult Function(String searchVal)? searchHadithBookevent,
    required TResult orElse(),
  }) {
    if (searchHadithBookevent != null) {
      return searchHadithBookevent(searchVal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchHadithBookEvent value) fetchHadithBookEvent,
    required TResult Function(FetchHadithBooksChapterEvent value)
        fetchHadithBooksChapterEvent,
    required TResult Function(SearchHadithBookevent value)
        searchHadithBookevent,
  }) {
    return searchHadithBookevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchHadithBookEvent value)? fetchHadithBookEvent,
    TResult? Function(FetchHadithBooksChapterEvent value)?
        fetchHadithBooksChapterEvent,
    TResult? Function(SearchHadithBookevent value)? searchHadithBookevent,
  }) {
    return searchHadithBookevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHadithBookEvent value)? fetchHadithBookEvent,
    TResult Function(FetchHadithBooksChapterEvent value)?
        fetchHadithBooksChapterEvent,
    TResult Function(SearchHadithBookevent value)? searchHadithBookevent,
    required TResult orElse(),
  }) {
    if (searchHadithBookevent != null) {
      return searchHadithBookevent(this);
    }
    return orElse();
  }
}

abstract class SearchHadithBookevent implements HadithEvent {
  const factory SearchHadithBookevent({required final String searchVal}) =
      _$SearchHadithBookeventImpl;

  String get searchVal;
  @JsonKey(ignore: true)
  _$$SearchHadithBookeventImplCopyWith<_$SearchHadithBookeventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HadithState {
  List<HadithBookModel>? get hadithBookModel =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  HadithBooksChapterModel? get hadithBooksChapterModel =>
      throw _privateConstructorUsedError;
  dynamic get required => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HadithStateCopyWith<HadithState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithStateCopyWith<$Res> {
  factory $HadithStateCopyWith(
          HadithState value, $Res Function(HadithState) then) =
      _$HadithStateCopyWithImpl<$Res, HadithState>;
  @useResult
  $Res call(
      {List<HadithBookModel>? hadithBookModel,
      bool isLoading,
      HadithBooksChapterModel? hadithBooksChapterModel,
      dynamic required});

  $HadithBooksChapterModelCopyWith<$Res>? get hadithBooksChapterModel;
}

/// @nodoc
class _$HadithStateCopyWithImpl<$Res, $Val extends HadithState>
    implements $HadithStateCopyWith<$Res> {
  _$HadithStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hadithBookModel = freezed,
    Object? isLoading = null,
    Object? hadithBooksChapterModel = freezed,
    Object? required = freezed,
  }) {
    return _then(_value.copyWith(
      hadithBookModel: freezed == hadithBookModel
          ? _value.hadithBookModel
          : hadithBookModel // ignore: cast_nullable_to_non_nullable
              as List<HadithBookModel>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hadithBooksChapterModel: freezed == hadithBooksChapterModel
          ? _value.hadithBooksChapterModel
          : hadithBooksChapterModel // ignore: cast_nullable_to_non_nullable
              as HadithBooksChapterModel?,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HadithBooksChapterModelCopyWith<$Res>? get hadithBooksChapterModel {
    if (_value.hadithBooksChapterModel == null) {
      return null;
    }

    return $HadithBooksChapterModelCopyWith<$Res>(
        _value.hadithBooksChapterModel!, (value) {
      return _then(_value.copyWith(hadithBooksChapterModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HadithStateImplCopyWith<$Res>
    implements $HadithStateCopyWith<$Res> {
  factory _$$HadithStateImplCopyWith(
          _$HadithStateImpl value, $Res Function(_$HadithStateImpl) then) =
      __$$HadithStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HadithBookModel>? hadithBookModel,
      bool isLoading,
      HadithBooksChapterModel? hadithBooksChapterModel,
      dynamic required});

  @override
  $HadithBooksChapterModelCopyWith<$Res>? get hadithBooksChapterModel;
}

/// @nodoc
class __$$HadithStateImplCopyWithImpl<$Res>
    extends _$HadithStateCopyWithImpl<$Res, _$HadithStateImpl>
    implements _$$HadithStateImplCopyWith<$Res> {
  __$$HadithStateImplCopyWithImpl(
      _$HadithStateImpl _value, $Res Function(_$HadithStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hadithBookModel = freezed,
    Object? isLoading = null,
    Object? hadithBooksChapterModel = freezed,
    Object? required = freezed,
  }) {
    return _then(_$HadithStateImpl(
      hadithBookModel: freezed == hadithBookModel
          ? _value._hadithBookModel
          : hadithBookModel // ignore: cast_nullable_to_non_nullable
              as List<HadithBookModel>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hadithBooksChapterModel: freezed == hadithBooksChapterModel
          ? _value.hadithBooksChapterModel
          : hadithBooksChapterModel // ignore: cast_nullable_to_non_nullable
              as HadithBooksChapterModel?,
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc

class _$HadithStateImpl implements _HadithState {
  const _$HadithStateImpl(
      {required final List<HadithBookModel>? hadithBookModel,
      required this.isLoading,
      required this.hadithBooksChapterModel,
      this.required})
      : _hadithBookModel = hadithBookModel;

  final List<HadithBookModel>? _hadithBookModel;
  @override
  List<HadithBookModel>? get hadithBookModel {
    final value = _hadithBookModel;
    if (value == null) return null;
    if (_hadithBookModel is EqualUnmodifiableListView) return _hadithBookModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool isLoading;
  @override
  final HadithBooksChapterModel? hadithBooksChapterModel;
  @override
  final dynamic required;

  @override
  String toString() {
    return 'HadithState(hadithBookModel: $hadithBookModel, isLoading: $isLoading, hadithBooksChapterModel: $hadithBooksChapterModel, required: $required)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HadithStateImpl &&
            const DeepCollectionEquality()
                .equals(other._hadithBookModel, _hadithBookModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(
                    other.hadithBooksChapterModel, hadithBooksChapterModel) ||
                other.hadithBooksChapterModel == hadithBooksChapterModel) &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_hadithBookModel),
      isLoading,
      hadithBooksChapterModel,
      const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HadithStateImplCopyWith<_$HadithStateImpl> get copyWith =>
      __$$HadithStateImplCopyWithImpl<_$HadithStateImpl>(this, _$identity);
}

abstract class _HadithState implements HadithState {
  const factory _HadithState(
      {required final List<HadithBookModel>? hadithBookModel,
      required final bool isLoading,
      required final HadithBooksChapterModel? hadithBooksChapterModel,
      final dynamic required}) = _$HadithStateImpl;

  @override
  List<HadithBookModel>? get hadithBookModel;
  @override
  bool get isLoading;
  @override
  HadithBooksChapterModel? get hadithBooksChapterModel;
  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$HadithStateImplCopyWith<_$HadithStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
