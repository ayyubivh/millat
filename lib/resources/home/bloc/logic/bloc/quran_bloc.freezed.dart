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
    required TResult Function() fetchQuaranChapters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchQuaranChapters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchQuaranChapters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchQuaranChapters value) fetchQuaranChapters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchQuaranChapters value)? fetchQuaranChapters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchQuaranChapters value)? fetchQuaranChapters,
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
abstract class _$$FetchQuaranChaptersCopyWith<$Res> {
  factory _$$FetchQuaranChaptersCopyWith(_$FetchQuaranChapters value,
          $Res Function(_$FetchQuaranChapters) then) =
      __$$FetchQuaranChaptersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchQuaranChaptersCopyWithImpl<$Res>
    extends _$QuranEventCopyWithImpl<$Res, _$FetchQuaranChapters>
    implements _$$FetchQuaranChaptersCopyWith<$Res> {
  __$$FetchQuaranChaptersCopyWithImpl(
      _$FetchQuaranChapters _value, $Res Function(_$FetchQuaranChapters) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchQuaranChapters implements FetchQuaranChapters {
  const _$FetchQuaranChapters();

  @override
  String toString() {
    return 'QuranEvent.fetchQuaranChapters()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchQuaranChapters);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchQuaranChapters,
  }) {
    return fetchQuaranChapters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchQuaranChapters,
  }) {
    return fetchQuaranChapters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchQuaranChapters,
    required TResult orElse(),
  }) {
    if (fetchQuaranChapters != null) {
      return fetchQuaranChapters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchQuaranChapters value) fetchQuaranChapters,
  }) {
    return fetchQuaranChapters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchQuaranChapters value)? fetchQuaranChapters,
  }) {
    return fetchQuaranChapters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchQuaranChapters value)? fetchQuaranChapters,
    required TResult orElse(),
  }) {
    if (fetchQuaranChapters != null) {
      return fetchQuaranChapters(this);
    }
    return orElse();
  }
}

abstract class FetchQuaranChapters implements QuranEvent {
  const factory FetchQuaranChapters() = _$FetchQuaranChapters;
}

/// @nodoc
mixin _$QuranState {
  bool get isLoading => throw _privateConstructorUsedError;
  QuranChapters? get quranChaptersModel => throw _privateConstructorUsedError;

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
  $Res call({bool isLoading, QuranChapters? quranChaptersModel});

  $QuranChaptersCopyWith<$Res>? get quranChaptersModel;
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
}

/// @nodoc
abstract class _$$_QuranStateCopyWith<$Res>
    implements $QuranStateCopyWith<$Res> {
  factory _$$_QuranStateCopyWith(
          _$_QuranState value, $Res Function(_$_QuranState) then) =
      __$$_QuranStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, QuranChapters? quranChaptersModel});

  @override
  $QuranChaptersCopyWith<$Res>? get quranChaptersModel;
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
    ));
  }
}

/// @nodoc

class _$_QuranState implements _QuranState {
  const _$_QuranState(
      {required this.isLoading, required this.quranChaptersModel});

  @override
  final bool isLoading;
  @override
  final QuranChapters? quranChaptersModel;

  @override
  String toString() {
    return 'QuranState(isLoading: $isLoading, quranChaptersModel: $quranChaptersModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuranState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.quranChaptersModel, quranChaptersModel) ||
                other.quranChaptersModel == quranChaptersModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, quranChaptersModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuranStateCopyWith<_$_QuranState> get copyWith =>
      __$$_QuranStateCopyWithImpl<_$_QuranState>(this, _$identity);
}

abstract class _QuranState implements QuranState {
  const factory _QuranState(
      {required final bool isLoading,
      required final QuranChapters? quranChaptersModel}) = _$_QuranState;

  @override
  bool get isLoading;
  @override
  QuranChapters? get quranChaptersModel;
  @override
  @JsonKey(ignore: true)
  _$$_QuranStateCopyWith<_$_QuranState> get copyWith =>
      throw _privateConstructorUsedError;
}
