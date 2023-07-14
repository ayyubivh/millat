// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuranEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchQuaranChaptersEvent,
    required TResult Function(int id) fetchChaperVersesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchQuaranChaptersEvent,
    TResult? Function(int id)? fetchChaperVersesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchQuaranChaptersEvent,
    TResult Function(int id)? fetchChaperVersesEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchQuaranChaptersEvent value)
        fetchQuaranChaptersEvent,
    required TResult Function(FetchChaperVersesEvent value)
        fetchChaperVersesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchQuaranChaptersEvent value)? fetchQuaranChaptersEvent,
    TResult? Function(FetchChaperVersesEvent value)? fetchChaperVersesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchQuaranChaptersEvent value)? fetchQuaranChaptersEvent,
    TResult Function(FetchChaperVersesEvent value)? fetchChaperVersesEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranEventCopyWith<$Res> {
  factory $QuranEventCopyWith(
          QuranEvent value, $Res Function(QuranEvent) then) =
      _$QuranEventCopyWithImpl<$Res, QuranEvent>;
}

/// @nodoc
class _$QuranEventCopyWithImpl<$Res, $Val extends QuranEvent>
    implements $QuranEventCopyWith<$Res> {
  _$QuranEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchQuaranChaptersEventCopyWith<$Res> {
  factory _$$FetchQuaranChaptersEventCopyWith(_$FetchQuaranChaptersEvent value,
          $Res Function(_$FetchQuaranChaptersEvent) then) =
      __$$FetchQuaranChaptersEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchQuaranChaptersEventCopyWithImpl<$Res>
    extends _$QuranEventCopyWithImpl<$Res, _$FetchQuaranChaptersEvent>
    implements _$$FetchQuaranChaptersEventCopyWith<$Res> {
  __$$FetchQuaranChaptersEventCopyWithImpl(_$FetchQuaranChaptersEvent _value,
      $Res Function(_$FetchQuaranChaptersEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchQuaranChaptersEvent implements FetchQuaranChaptersEvent {
  const _$FetchQuaranChaptersEvent();

  @override
  String toString() {
    return 'QuranEvent.fetchQuaranChaptersEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchQuaranChaptersEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchQuaranChaptersEvent,
    required TResult Function(int id) fetchChaperVersesEvent,
  }) {
    return fetchQuaranChaptersEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchQuaranChaptersEvent,
    TResult? Function(int id)? fetchChaperVersesEvent,
  }) {
    return fetchQuaranChaptersEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchQuaranChaptersEvent,
    TResult Function(int id)? fetchChaperVersesEvent,
    required TResult orElse(),
  }) {
    if (fetchQuaranChaptersEvent != null) {
      return fetchQuaranChaptersEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchQuaranChaptersEvent value)
        fetchQuaranChaptersEvent,
    required TResult Function(FetchChaperVersesEvent value)
        fetchChaperVersesEvent,
  }) {
    return fetchQuaranChaptersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchQuaranChaptersEvent value)? fetchQuaranChaptersEvent,
    TResult? Function(FetchChaperVersesEvent value)? fetchChaperVersesEvent,
  }) {
    return fetchQuaranChaptersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchQuaranChaptersEvent value)? fetchQuaranChaptersEvent,
    TResult Function(FetchChaperVersesEvent value)? fetchChaperVersesEvent,
    required TResult orElse(),
  }) {
    if (fetchQuaranChaptersEvent != null) {
      return fetchQuaranChaptersEvent(this);
    }
    return orElse();
  }
}

abstract class FetchQuaranChaptersEvent implements QuranEvent {
  const factory FetchQuaranChaptersEvent() = _$FetchQuaranChaptersEvent;
}

/// @nodoc
abstract class _$$FetchChaperVersesEventCopyWith<$Res> {
  factory _$$FetchChaperVersesEventCopyWith(_$FetchChaperVersesEvent value,
          $Res Function(_$FetchChaperVersesEvent) then) =
      __$$FetchChaperVersesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$FetchChaperVersesEventCopyWithImpl<$Res>
    extends _$QuranEventCopyWithImpl<$Res, _$FetchChaperVersesEvent>
    implements _$$FetchChaperVersesEventCopyWith<$Res> {
  __$$FetchChaperVersesEventCopyWithImpl(_$FetchChaperVersesEvent _value,
      $Res Function(_$FetchChaperVersesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchChaperVersesEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchChaperVersesEvent implements FetchChaperVersesEvent {
  const _$FetchChaperVersesEvent({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'QuranEvent.fetchChaperVersesEvent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchChaperVersesEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchChaperVersesEventCopyWith<_$FetchChaperVersesEvent> get copyWith =>
      __$$FetchChaperVersesEventCopyWithImpl<_$FetchChaperVersesEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchQuaranChaptersEvent,
    required TResult Function(int id) fetchChaperVersesEvent,
  }) {
    return fetchChaperVersesEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchQuaranChaptersEvent,
    TResult? Function(int id)? fetchChaperVersesEvent,
  }) {
    return fetchChaperVersesEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchQuaranChaptersEvent,
    TResult Function(int id)? fetchChaperVersesEvent,
    required TResult orElse(),
  }) {
    if (fetchChaperVersesEvent != null) {
      return fetchChaperVersesEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchQuaranChaptersEvent value)
        fetchQuaranChaptersEvent,
    required TResult Function(FetchChaperVersesEvent value)
        fetchChaperVersesEvent,
  }) {
    return fetchChaperVersesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchQuaranChaptersEvent value)? fetchQuaranChaptersEvent,
    TResult? Function(FetchChaperVersesEvent value)? fetchChaperVersesEvent,
  }) {
    return fetchChaperVersesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchQuaranChaptersEvent value)? fetchQuaranChaptersEvent,
    TResult Function(FetchChaperVersesEvent value)? fetchChaperVersesEvent,
    required TResult orElse(),
  }) {
    if (fetchChaperVersesEvent != null) {
      return fetchChaperVersesEvent(this);
    }
    return orElse();
  }
}

abstract class FetchChaperVersesEvent implements QuranEvent {
  const factory FetchChaperVersesEvent({required final int id}) =
      _$FetchChaperVersesEvent;

  int get id;
  @JsonKey(ignore: true)
  _$$FetchChaperVersesEventCopyWith<_$FetchChaperVersesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuranState {
  bool get isLoading => throw _privateConstructorUsedError;
  QuranChapters? get quranChaptersModel => throw _privateConstructorUsedError;
  ChapterVersesModel? get chapterVersesModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuranStateCopyWith<QuranState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranStateCopyWith<$Res> {
  factory $QuranStateCopyWith(
          QuranState value, $Res Function(QuranState) then) =
      _$QuranStateCopyWithImpl<$Res, QuranState>;
  @useResult
  $Res call(
      {bool isLoading,
      QuranChapters? quranChaptersModel,
      ChapterVersesModel? chapterVersesModel});

  $QuranChaptersCopyWith<$Res>? get quranChaptersModel;
  $ChapterVersesModelCopyWith<$Res>? get chapterVersesModel;
}

/// @nodoc
class _$QuranStateCopyWithImpl<$Res, $Val extends QuranState>
    implements $QuranStateCopyWith<$Res> {
  _$QuranStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? quranChaptersModel = freezed,
    Object? chapterVersesModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      quranChaptersModel: freezed == quranChaptersModel
          ? _value.quranChaptersModel
          : quranChaptersModel // ignore: cast_nullable_to_non_nullable
              as QuranChapters?,
      chapterVersesModel: freezed == chapterVersesModel
          ? _value.chapterVersesModel
          : chapterVersesModel // ignore: cast_nullable_to_non_nullable
              as ChapterVersesModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuranChaptersCopyWith<$Res>? get quranChaptersModel {
    if (_value.quranChaptersModel == null) {
      return null;
    }

    return $QuranChaptersCopyWith<$Res>(_value.quranChaptersModel!, (value) {
      return _then(_value.copyWith(quranChaptersModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChapterVersesModelCopyWith<$Res>? get chapterVersesModel {
    if (_value.chapterVersesModel == null) {
      return null;
    }

    return $ChapterVersesModelCopyWith<$Res>(_value.chapterVersesModel!,
        (value) {
      return _then(_value.copyWith(chapterVersesModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuranStateCopyWith<$Res>
    implements $QuranStateCopyWith<$Res> {
  factory _$$_QuranStateCopyWith(
          _$_QuranState value, $Res Function(_$_QuranState) then) =
      __$$_QuranStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      QuranChapters? quranChaptersModel,
      ChapterVersesModel? chapterVersesModel});

  @override
  $QuranChaptersCopyWith<$Res>? get quranChaptersModel;
  @override
  $ChapterVersesModelCopyWith<$Res>? get chapterVersesModel;
}

/// @nodoc
class __$$_QuranStateCopyWithImpl<$Res>
    extends _$QuranStateCopyWithImpl<$Res, _$_QuranState>
    implements _$$_QuranStateCopyWith<$Res> {
  __$$_QuranStateCopyWithImpl(
      _$_QuranState _value, $Res Function(_$_QuranState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? quranChaptersModel = freezed,
    Object? chapterVersesModel = freezed,
  }) {
    return _then(_$_QuranState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      quranChaptersModel: freezed == quranChaptersModel
          ? _value.quranChaptersModel
          : quranChaptersModel // ignore: cast_nullable_to_non_nullable
              as QuranChapters?,
      chapterVersesModel: freezed == chapterVersesModel
          ? _value.chapterVersesModel
          : chapterVersesModel // ignore: cast_nullable_to_non_nullable
              as ChapterVersesModel?,
    ));
  }
}

/// @nodoc

class _$_QuranState implements _QuranState {
  const _$_QuranState(
      {required this.isLoading,
      required this.quranChaptersModel,
      required this.chapterVersesModel});

  @override
  final bool isLoading;
  @override
  final QuranChapters? quranChaptersModel;
  @override
  final ChapterVersesModel? chapterVersesModel;

  @override
  String toString() {
    return 'QuranState(isLoading: $isLoading, quranChaptersModel: $quranChaptersModel, chapterVersesModel: $chapterVersesModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuranState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.quranChaptersModel, quranChaptersModel) ||
                other.quranChaptersModel == quranChaptersModel) &&
            (identical(other.chapterVersesModel, chapterVersesModel) ||
                other.chapterVersesModel == chapterVersesModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, quranChaptersModel, chapterVersesModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuranStateCopyWith<_$_QuranState> get copyWith =>
      __$$_QuranStateCopyWithImpl<_$_QuranState>(this, _$identity);
}

abstract class _QuranState implements QuranState {
  const factory _QuranState(
      {required final bool isLoading,
      required final QuranChapters? quranChaptersModel,
      required final ChapterVersesModel? chapterVersesModel}) = _$_QuranState;

  @override
  bool get isLoading;
  @override
  QuranChapters? get quranChaptersModel;
  @override
  ChapterVersesModel? get chapterVersesModel;
  @override
  @JsonKey(ignore: true)
  _$$_QuranStateCopyWith<_$_QuranState> get copyWith =>
      throw _privateConstructorUsedError;
}
