// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasbih_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TasbihEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String dikr, String translate, String id)
        selectDhikerEvent,
    required TResult Function() fetchDhikr,
    required TResult Function() dikhrIncreaseCountEvent,
    required TResult Function(int newValue) changeTasbihGoalEvent,
    required TResult Function() resetTashbihCounterEvent,
    required TResult Function(BuildContext buildContext, String id)
        addTasbihEvent,
    required TResult Function() checkLoopEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String dikr, String translate, String id)?
        selectDhikerEvent,
    TResult? Function()? fetchDhikr,
    TResult? Function()? dikhrIncreaseCountEvent,
    TResult? Function(int newValue)? changeTasbihGoalEvent,
    TResult? Function()? resetTashbihCounterEvent,
    TResult? Function(BuildContext buildContext, String id)? addTasbihEvent,
    TResult? Function()? checkLoopEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String dikr, String translate, String id)?
        selectDhikerEvent,
    TResult Function()? fetchDhikr,
    TResult Function()? dikhrIncreaseCountEvent,
    TResult Function(int newValue)? changeTasbihGoalEvent,
    TResult Function()? resetTashbihCounterEvent,
    TResult Function(BuildContext buildContext, String id)? addTasbihEvent,
    TResult Function()? checkLoopEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectDhikerEvent value) selectDhikerEvent,
    required TResult Function(FetchDhikr value) fetchDhikr,
    required TResult Function(DikhrIncreaseCountEvent value)
        dikhrIncreaseCountEvent,
    required TResult Function(ChangeTasbihGoalEvent value)
        changeTasbihGoalEvent,
    required TResult Function(ResetTashbihCounterEvent value)
        resetTashbihCounterEvent,
    required TResult Function(AddTasbihEvent value) addTasbihEvent,
    required TResult Function(CheckLoopEvent value) checkLoopEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectDhikerEvent value)? selectDhikerEvent,
    TResult? Function(FetchDhikr value)? fetchDhikr,
    TResult? Function(DikhrIncreaseCountEvent value)? dikhrIncreaseCountEvent,
    TResult? Function(ChangeTasbihGoalEvent value)? changeTasbihGoalEvent,
    TResult? Function(ResetTashbihCounterEvent value)? resetTashbihCounterEvent,
    TResult? Function(AddTasbihEvent value)? addTasbihEvent,
    TResult? Function(CheckLoopEvent value)? checkLoopEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectDhikerEvent value)? selectDhikerEvent,
    TResult Function(FetchDhikr value)? fetchDhikr,
    TResult Function(DikhrIncreaseCountEvent value)? dikhrIncreaseCountEvent,
    TResult Function(ChangeTasbihGoalEvent value)? changeTasbihGoalEvent,
    TResult Function(ResetTashbihCounterEvent value)? resetTashbihCounterEvent,
    TResult Function(AddTasbihEvent value)? addTasbihEvent,
    TResult Function(CheckLoopEvent value)? checkLoopEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasbihEventCopyWith<$Res> {
  factory $TasbihEventCopyWith(
          TasbihEvent value, $Res Function(TasbihEvent) then) =
      _$TasbihEventCopyWithImpl<$Res, TasbihEvent>;
}

/// @nodoc
class _$TasbihEventCopyWithImpl<$Res, $Val extends TasbihEvent>
    implements $TasbihEventCopyWith<$Res> {
  _$TasbihEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SelectDhikerEventCopyWith<$Res> {
  factory _$$SelectDhikerEventCopyWith(
          _$SelectDhikerEvent value, $Res Function(_$SelectDhikerEvent) then) =
      __$$SelectDhikerEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String dikr, String translate, String id});
}

/// @nodoc
class __$$SelectDhikerEventCopyWithImpl<$Res>
    extends _$TasbihEventCopyWithImpl<$Res, _$SelectDhikerEvent>
    implements _$$SelectDhikerEventCopyWith<$Res> {
  __$$SelectDhikerEventCopyWithImpl(
      _$SelectDhikerEvent _value, $Res Function(_$SelectDhikerEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dikr = null,
    Object? translate = null,
    Object? id = null,
  }) {
    return _then(_$SelectDhikerEvent(
      dikr: null == dikr
          ? _value.dikr
          : dikr // ignore: cast_nullable_to_non_nullable
              as String,
      translate: null == translate
          ? _value.translate
          : translate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectDhikerEvent implements SelectDhikerEvent {
  const _$SelectDhikerEvent(
      {required this.dikr, required this.translate, required this.id});

  @override
  final String dikr;
  @override
  final String translate;
  @override
  final String id;

  @override
  String toString() {
    return 'TasbihEvent.selectDhikerEvent(dikr: $dikr, translate: $translate, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDhikerEvent &&
            (identical(other.dikr, dikr) || other.dikr == dikr) &&
            (identical(other.translate, translate) ||
                other.translate == translate) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dikr, translate, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDhikerEventCopyWith<_$SelectDhikerEvent> get copyWith =>
      __$$SelectDhikerEventCopyWithImpl<_$SelectDhikerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String dikr, String translate, String id)
        selectDhikerEvent,
    required TResult Function() fetchDhikr,
    required TResult Function() dikhrIncreaseCountEvent,
    required TResult Function(int newValue) changeTasbihGoalEvent,
    required TResult Function() resetTashbihCounterEvent,
    required TResult Function(BuildContext buildContext, String id)
        addTasbihEvent,
    required TResult Function() checkLoopEvent,
  }) {
    return selectDhikerEvent(dikr, translate, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String dikr, String translate, String id)?
        selectDhikerEvent,
    TResult? Function()? fetchDhikr,
    TResult? Function()? dikhrIncreaseCountEvent,
    TResult? Function(int newValue)? changeTasbihGoalEvent,
    TResult? Function()? resetTashbihCounterEvent,
    TResult? Function(BuildContext buildContext, String id)? addTasbihEvent,
    TResult? Function()? checkLoopEvent,
  }) {
    return selectDhikerEvent?.call(dikr, translate, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String dikr, String translate, String id)?
        selectDhikerEvent,
    TResult Function()? fetchDhikr,
    TResult Function()? dikhrIncreaseCountEvent,
    TResult Function(int newValue)? changeTasbihGoalEvent,
    TResult Function()? resetTashbihCounterEvent,
    TResult Function(BuildContext buildContext, String id)? addTasbihEvent,
    TResult Function()? checkLoopEvent,
    required TResult orElse(),
  }) {
    if (selectDhikerEvent != null) {
      return selectDhikerEvent(dikr, translate, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectDhikerEvent value) selectDhikerEvent,
    required TResult Function(FetchDhikr value) fetchDhikr,
    required TResult Function(DikhrIncreaseCountEvent value)
        dikhrIncreaseCountEvent,
    required TResult Function(ChangeTasbihGoalEvent value)
        changeTasbihGoalEvent,
    required TResult Function(ResetTashbihCounterEvent value)
        resetTashbihCounterEvent,
    required TResult Function(AddTasbihEvent value) addTasbihEvent,
    required TResult Function(CheckLoopEvent value) checkLoopEvent,
  }) {
    return selectDhikerEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectDhikerEvent value)? selectDhikerEvent,
    TResult? Function(FetchDhikr value)? fetchDhikr,
    TResult? Function(DikhrIncreaseCountEvent value)? dikhrIncreaseCountEvent,
    TResult? Function(ChangeTasbihGoalEvent value)? changeTasbihGoalEvent,
    TResult? Function(ResetTashbihCounterEvent value)? resetTashbihCounterEvent,
    TResult? Function(AddTasbihEvent value)? addTasbihEvent,
    TResult? Function(CheckLoopEvent value)? checkLoopEvent,
  }) {
    return selectDhikerEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectDhikerEvent value)? selectDhikerEvent,
    TResult Function(FetchDhikr value)? fetchDhikr,
    TResult Function(DikhrIncreaseCountEvent value)? dikhrIncreaseCountEvent,
    TResult Function(ChangeTasbihGoalEvent value)? changeTasbihGoalEvent,
    TResult Function(ResetTashbihCounterEvent value)? resetTashbihCounterEvent,
    TResult Function(AddTasbihEvent value)? addTasbihEvent,
    TResult Function(CheckLoopEvent value)? checkLoopEvent,
    required TResult orElse(),
  }) {
    if (selectDhikerEvent != null) {
      return selectDhikerEvent(this);
    }
    return orElse();
  }
}

abstract class SelectDhikerEvent implements TasbihEvent {
  const factory SelectDhikerEvent(
      {required final String dikr,
      required final String translate,
      required final String id}) = _$SelectDhikerEvent;

  String get dikr;
  String get translate;
  String get id;
  @JsonKey(ignore: true)
  _$$SelectDhikerEventCopyWith<_$SelectDhikerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchDhikrCopyWith<$Res> {
  factory _$$FetchDhikrCopyWith(
          _$FetchDhikr value, $Res Function(_$FetchDhikr) then) =
      __$$FetchDhikrCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDhikrCopyWithImpl<$Res>
    extends _$TasbihEventCopyWithImpl<$Res, _$FetchDhikr>
    implements _$$FetchDhikrCopyWith<$Res> {
  __$$FetchDhikrCopyWithImpl(
      _$FetchDhikr _value, $Res Function(_$FetchDhikr) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchDhikr implements FetchDhikr {
  const _$FetchDhikr();

  @override
  String toString() {
    return 'TasbihEvent.fetchDhikr()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDhikr);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String dikr, String translate, String id)
        selectDhikerEvent,
    required TResult Function() fetchDhikr,
    required TResult Function() dikhrIncreaseCountEvent,
    required TResult Function(int newValue) changeTasbihGoalEvent,
    required TResult Function() resetTashbihCounterEvent,
    required TResult Function(BuildContext buildContext, String id)
        addTasbihEvent,
    required TResult Function() checkLoopEvent,
  }) {
    return fetchDhikr();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String dikr, String translate, String id)?
        selectDhikerEvent,
    TResult? Function()? fetchDhikr,
    TResult? Function()? dikhrIncreaseCountEvent,
    TResult? Function(int newValue)? changeTasbihGoalEvent,
    TResult? Function()? resetTashbihCounterEvent,
    TResult? Function(BuildContext buildContext, String id)? addTasbihEvent,
    TResult? Function()? checkLoopEvent,
  }) {
    return fetchDhikr?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String dikr, String translate, String id)?
        selectDhikerEvent,
    TResult Function()? fetchDhikr,
    TResult Function()? dikhrIncreaseCountEvent,
    TResult Function(int newValue)? changeTasbihGoalEvent,
    TResult Function()? resetTashbihCounterEvent,
    TResult Function(BuildContext buildContext, String id)? addTasbihEvent,
    TResult Function()? checkLoopEvent,
    required TResult orElse(),
  }) {
    if (fetchDhikr != null) {
      return fetchDhikr();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectDhikerEvent value) selectDhikerEvent,
    required TResult Function(FetchDhikr value) fetchDhikr,
    required TResult Function(DikhrIncreaseCountEvent value)
        dikhrIncreaseCountEvent,
    required TResult Function(ChangeTasbihGoalEvent value)
        changeTasbihGoalEvent,
    required TResult Function(ResetTashbihCounterEvent value)
        resetTashbihCounterEvent,
    required TResult Function(AddTasbihEvent value) addTasbihEvent,
    required TResult Function(CheckLoopEvent value) checkLoopEvent,
  }) {
    return fetchDhikr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectDhikerEvent value)? selectDhikerEvent,
    TResult? Function(FetchDhikr value)? fetchDhikr,
    TResult? Function(DikhrIncreaseCountEvent value)? dikhrIncreaseCountEvent,
    TResult? Function(ChangeTasbihGoalEvent value)? changeTasbihGoalEvent,
    TResult? Function(ResetTashbihCounterEvent value)? resetTashbihCounterEvent,
    TResult? Function(AddTasbihEvent value)? addTasbihEvent,
    TResult? Function(CheckLoopEvent value)? checkLoopEvent,
  }) {
    return fetchDhikr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectDhikerEvent value)? selectDhikerEvent,
    TResult Function(FetchDhikr value)? fetchDhikr,
    TResult Function(DikhrIncreaseCountEvent value)? dikhrIncreaseCountEvent,
    TResult Function(ChangeTasbihGoalEvent value)? changeTasbihGoalEvent,
    TResult Function(ResetTashbihCounterEvent value)? resetTashbihCounterEvent,
    TResult Function(AddTasbihEvent value)? addTasbihEvent,
    TResult Function(CheckLoopEvent value)? checkLoopEvent,
    required TResult orElse(),
  }) {
    if (fetchDhikr != null) {
      return fetchDhikr(this);
    }
    return orElse();
  }
}

abstract class FetchDhikr implements TasbihEvent {
  const factory FetchDhikr() = _$FetchDhikr;
}

/// @nodoc
abstract class _$$DikhrIncreaseCountEventCopyWith<$Res> {
  factory _$$DikhrIncreaseCountEventCopyWith(_$DikhrIncreaseCountEvent value,
          $Res Function(_$DikhrIncreaseCountEvent) then) =
      __$$DikhrIncreaseCountEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DikhrIncreaseCountEventCopyWithImpl<$Res>
    extends _$TasbihEventCopyWithImpl<$Res, _$DikhrIncreaseCountEvent>
    implements _$$DikhrIncreaseCountEventCopyWith<$Res> {
  __$$DikhrIncreaseCountEventCopyWithImpl(_$DikhrIncreaseCountEvent _value,
      $Res Function(_$DikhrIncreaseCountEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DikhrIncreaseCountEvent implements DikhrIncreaseCountEvent {
  const _$DikhrIncreaseCountEvent();

  @override
  String toString() {
    return 'TasbihEvent.dikhrIncreaseCountEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DikhrIncreaseCountEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String dikr, String translate, String id)
        selectDhikerEvent,
    required TResult Function() fetchDhikr,
    required TResult Function() dikhrIncreaseCountEvent,
    required TResult Function(int newValue) changeTasbihGoalEvent,
    required TResult Function() resetTashbihCounterEvent,
    required TResult Function(BuildContext buildContext, String id)
        addTasbihEvent,
    required TResult Function() checkLoopEvent,
  }) {
    return dikhrIncreaseCountEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String dikr, String translate, String id)?
        selectDhikerEvent,
    TResult? Function()? fetchDhikr,
    TResult? Function()? dikhrIncreaseCountEvent,
    TResult? Function(int newValue)? changeTasbihGoalEvent,
    TResult? Function()? resetTashbihCounterEvent,
    TResult? Function(BuildContext buildContext, String id)? addTasbihEvent,
    TResult? Function()? checkLoopEvent,
  }) {
    return dikhrIncreaseCountEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String dikr, String translate, String id)?
        selectDhikerEvent,
    TResult Function()? fetchDhikr,
    TResult Function()? dikhrIncreaseCountEvent,
    TResult Function(int newValue)? changeTasbihGoalEvent,
    TResult Function()? resetTashbihCounterEvent,
    TResult Function(BuildContext buildContext, String id)? addTasbihEvent,
    TResult Function()? checkLoopEvent,
    required TResult orElse(),
  }) {
    if (dikhrIncreaseCountEvent != null) {
      return dikhrIncreaseCountEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectDhikerEvent value) selectDhikerEvent,
    required TResult Function(FetchDhikr value) fetchDhikr,
    required TResult Function(DikhrIncreaseCountEvent value)
        dikhrIncreaseCountEvent,
    required TResult Function(ChangeTasbihGoalEvent value)
        changeTasbihGoalEvent,
    required TResult Function(ResetTashbihCounterEvent value)
        resetTashbihCounterEvent,
    required TResult Function(AddTasbihEvent value) addTasbihEvent,
    required TResult Function(CheckLoopEvent value) checkLoopEvent,
  }) {
    return dikhrIncreaseCountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectDhikerEvent value)? selectDhikerEvent,
    TResult? Function(FetchDhikr value)? fetchDhikr,
    TResult? Function(DikhrIncreaseCountEvent value)? dikhrIncreaseCountEvent,
    TResult? Function(ChangeTasbihGoalEvent value)? changeTasbihGoalEvent,
    TResult? Function(ResetTashbihCounterEvent value)? resetTashbihCounterEvent,
    TResult? Function(AddTasbihEvent value)? addTasbihEvent,
    TResult? Function(CheckLoopEvent value)? checkLoopEvent,
  }) {
    return dikhrIncreaseCountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectDhikerEvent value)? selectDhikerEvent,
    TResult Function(FetchDhikr value)? fetchDhikr,
    TResult Function(DikhrIncreaseCountEvent value)? dikhrIncreaseCountEvent,
    TResult Function(ChangeTasbihGoalEvent value)? changeTasbihGoalEvent,
    TResult Function(ResetTashbihCounterEvent value)? resetTashbihCounterEvent,
    TResult Function(AddTasbihEvent value)? addTasbihEvent,
    TResult Function(CheckLoopEvent value)? checkLoopEvent,
    required TResult orElse(),
  }) {
    if (dikhrIncreaseCountEvent != null) {
      return dikhrIncreaseCountEvent(this);
    }
    return orElse();
  }
}

abstract class DikhrIncreaseCountEvent implements TasbihEvent {
  const factory DikhrIncreaseCountEvent() = _$DikhrIncreaseCountEvent;
}

/// @nodoc
abstract class _$$ChangeTasbihGoalEventCopyWith<$Res> {
  factory _$$ChangeTasbihGoalEventCopyWith(_$ChangeTasbihGoalEvent value,
          $Res Function(_$ChangeTasbihGoalEvent) then) =
      __$$ChangeTasbihGoalEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int newValue});
}

/// @nodoc
class __$$ChangeTasbihGoalEventCopyWithImpl<$Res>
    extends _$TasbihEventCopyWithImpl<$Res, _$ChangeTasbihGoalEvent>
    implements _$$ChangeTasbihGoalEventCopyWith<$Res> {
  __$$ChangeTasbihGoalEventCopyWithImpl(_$ChangeTasbihGoalEvent _value,
      $Res Function(_$ChangeTasbihGoalEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newValue = null,
  }) {
    return _then(_$ChangeTasbihGoalEvent(
      newValue: null == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeTasbihGoalEvent implements ChangeTasbihGoalEvent {
  const _$ChangeTasbihGoalEvent({required this.newValue});

  @override
  final int newValue;

  @override
  String toString() {
    return 'TasbihEvent.changeTasbihGoalEvent(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTasbihGoalEvent &&
            (identical(other.newValue, newValue) ||
                other.newValue == newValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTasbihGoalEventCopyWith<_$ChangeTasbihGoalEvent> get copyWith =>
      __$$ChangeTasbihGoalEventCopyWithImpl<_$ChangeTasbihGoalEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String dikr, String translate, String id)
        selectDhikerEvent,
    required TResult Function() fetchDhikr,
    required TResult Function() dikhrIncreaseCountEvent,
    required TResult Function(int newValue) changeTasbihGoalEvent,
    required TResult Function() resetTashbihCounterEvent,
    required TResult Function(BuildContext buildContext, String id)
        addTasbihEvent,
    required TResult Function() checkLoopEvent,
  }) {
    return changeTasbihGoalEvent(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String dikr, String translate, String id)?
        selectDhikerEvent,
    TResult? Function()? fetchDhikr,
    TResult? Function()? dikhrIncreaseCountEvent,
    TResult? Function(int newValue)? changeTasbihGoalEvent,
    TResult? Function()? resetTashbihCounterEvent,
    TResult? Function(BuildContext buildContext, String id)? addTasbihEvent,
    TResult? Function()? checkLoopEvent,
  }) {
    return changeTasbihGoalEvent?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String dikr, String translate, String id)?
        selectDhikerEvent,
    TResult Function()? fetchDhikr,
    TResult Function()? dikhrIncreaseCountEvent,
    TResult Function(int newValue)? changeTasbihGoalEvent,
    TResult Function()? resetTashbihCounterEvent,
    TResult Function(BuildContext buildContext, String id)? addTasbihEvent,
    TResult Function()? checkLoopEvent,
    required TResult orElse(),
  }) {
    if (changeTasbihGoalEvent != null) {
      return changeTasbihGoalEvent(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectDhikerEvent value) selectDhikerEvent,
    required TResult Function(FetchDhikr value) fetchDhikr,
    required TResult Function(DikhrIncreaseCountEvent value)
        dikhrIncreaseCountEvent,
    required TResult Function(ChangeTasbihGoalEvent value)
        changeTasbihGoalEvent,
    required TResult Function(ResetTashbihCounterEvent value)
        resetTashbihCounterEvent,
    required TResult Function(AddTasbihEvent value) addTasbihEvent,
    required TResult Function(CheckLoopEvent value) checkLoopEvent,
  }) {
    return changeTasbihGoalEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectDhikerEvent value)? selectDhikerEvent,
    TResult? Function(FetchDhikr value)? fetchDhikr,
    TResult? Function(DikhrIncreaseCountEvent value)? dikhrIncreaseCountEvent,
    TResult? Function(ChangeTasbihGoalEvent value)? changeTasbihGoalEvent,
    TResult? Function(ResetTashbihCounterEvent value)? resetTashbihCounterEvent,
    TResult? Function(AddTasbihEvent value)? addTasbihEvent,
    TResult? Function(CheckLoopEvent value)? checkLoopEvent,
  }) {
    return changeTasbihGoalEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectDhikerEvent value)? selectDhikerEvent,
    TResult Function(FetchDhikr value)? fetchDhikr,
    TResult Function(DikhrIncreaseCountEvent value)? dikhrIncreaseCountEvent,
    TResult Function(ChangeTasbihGoalEvent value)? changeTasbihGoalEvent,
    TResult Function(ResetTashbihCounterEvent value)? resetTashbihCounterEvent,
    TResult Function(AddTasbihEvent value)? addTasbihEvent,
    TResult Function(CheckLoopEvent value)? checkLoopEvent,
    required TResult orElse(),
  }) {
    if (changeTasbihGoalEvent != null) {
      return changeTasbihGoalEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeTasbihGoalEvent implements TasbihEvent {
  const factory ChangeTasbihGoalEvent({required final int newValue}) =
      _$ChangeTasbihGoalEvent;

  int get newValue;
  @JsonKey(ignore: true)
  _$$ChangeTasbihGoalEventCopyWith<_$ChangeTasbihGoalEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetTashbihCounterEventCopyWith<$Res> {
  factory _$$ResetTashbihCounterEventCopyWith(_$ResetTashbihCounterEvent value,
          $Res Function(_$ResetTashbihCounterEvent) then) =
      __$$ResetTashbihCounterEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetTashbihCounterEventCopyWithImpl<$Res>
    extends _$TasbihEventCopyWithImpl<$Res, _$ResetTashbihCounterEvent>
    implements _$$ResetTashbihCounterEventCopyWith<$Res> {
  __$$ResetTashbihCounterEventCopyWithImpl(_$ResetTashbihCounterEvent _value,
      $Res Function(_$ResetTashbihCounterEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetTashbihCounterEvent implements ResetTashbihCounterEvent {
  const _$ResetTashbihCounterEvent();

  @override
  String toString() {
    return 'TasbihEvent.resetTashbihCounterEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetTashbihCounterEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String dikr, String translate, String id)
        selectDhikerEvent,
    required TResult Function() fetchDhikr,
    required TResult Function() dikhrIncreaseCountEvent,
    required TResult Function(int newValue) changeTasbihGoalEvent,
    required TResult Function() resetTashbihCounterEvent,
    required TResult Function(BuildContext buildContext, String id)
        addTasbihEvent,
    required TResult Function() checkLoopEvent,
  }) {
    return resetTashbihCounterEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String dikr, String translate, String id)?
        selectDhikerEvent,
    TResult? Function()? fetchDhikr,
    TResult? Function()? dikhrIncreaseCountEvent,
    TResult? Function(int newValue)? changeTasbihGoalEvent,
    TResult? Function()? resetTashbihCounterEvent,
    TResult? Function(BuildContext buildContext, String id)? addTasbihEvent,
    TResult? Function()? checkLoopEvent,
  }) {
    return resetTashbihCounterEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String dikr, String translate, String id)?
        selectDhikerEvent,
    TResult Function()? fetchDhikr,
    TResult Function()? dikhrIncreaseCountEvent,
    TResult Function(int newValue)? changeTasbihGoalEvent,
    TResult Function()? resetTashbihCounterEvent,
    TResult Function(BuildContext buildContext, String id)? addTasbihEvent,
    TResult Function()? checkLoopEvent,
    required TResult orElse(),
  }) {
    if (resetTashbihCounterEvent != null) {
      return resetTashbihCounterEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectDhikerEvent value) selectDhikerEvent,
    required TResult Function(FetchDhikr value) fetchDhikr,
    required TResult Function(DikhrIncreaseCountEvent value)
        dikhrIncreaseCountEvent,
    required TResult Function(ChangeTasbihGoalEvent value)
        changeTasbihGoalEvent,
    required TResult Function(ResetTashbihCounterEvent value)
        resetTashbihCounterEvent,
    required TResult Function(AddTasbihEvent value) addTasbihEvent,
    required TResult Function(CheckLoopEvent value) checkLoopEvent,
  }) {
    return resetTashbihCounterEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectDhikerEvent value)? selectDhikerEvent,
    TResult? Function(FetchDhikr value)? fetchDhikr,
    TResult? Function(DikhrIncreaseCountEvent value)? dikhrIncreaseCountEvent,
    TResult? Function(ChangeTasbihGoalEvent value)? changeTasbihGoalEvent,
    TResult? Function(ResetTashbihCounterEvent value)? resetTashbihCounterEvent,
    TResult? Function(AddTasbihEvent value)? addTasbihEvent,
    TResult? Function(CheckLoopEvent value)? checkLoopEvent,
  }) {
    return resetTashbihCounterEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectDhikerEvent value)? selectDhikerEvent,
    TResult Function(FetchDhikr value)? fetchDhikr,
    TResult Function(DikhrIncreaseCountEvent value)? dikhrIncreaseCountEvent,
    TResult Function(ChangeTasbihGoalEvent value)? changeTasbihGoalEvent,
    TResult Function(ResetTashbihCounterEvent value)? resetTashbihCounterEvent,
    TResult Function(AddTasbihEvent value)? addTasbihEvent,
    TResult Function(CheckLoopEvent value)? checkLoopEvent,
    required TResult orElse(),
  }) {
    if (resetTashbihCounterEvent != null) {
      return resetTashbihCounterEvent(this);
    }
    return orElse();
  }
}

abstract class ResetTashbihCounterEvent implements TasbihEvent {
  const factory ResetTashbihCounterEvent() = _$ResetTashbihCounterEvent;
}

/// @nodoc
abstract class _$$AddTasbihEventCopyWith<$Res> {
  factory _$$AddTasbihEventCopyWith(
          _$AddTasbihEvent value, $Res Function(_$AddTasbihEvent) then) =
      __$$AddTasbihEventCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext buildContext, String id});
}

/// @nodoc
class __$$AddTasbihEventCopyWithImpl<$Res>
    extends _$TasbihEventCopyWithImpl<$Res, _$AddTasbihEvent>
    implements _$$AddTasbihEventCopyWith<$Res> {
  __$$AddTasbihEventCopyWithImpl(
      _$AddTasbihEvent _value, $Res Function(_$AddTasbihEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildContext = null,
    Object? id = null,
  }) {
    return _then(_$AddTasbihEvent(
      buildContext: null == buildContext
          ? _value.buildContext
          : buildContext // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddTasbihEvent implements AddTasbihEvent {
  const _$AddTasbihEvent({required this.buildContext, required this.id});

  @override
  final BuildContext buildContext;
  @override
  final String id;

  @override
  String toString() {
    return 'TasbihEvent.addTasbihEvent(buildContext: $buildContext, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTasbihEvent &&
            (identical(other.buildContext, buildContext) ||
                other.buildContext == buildContext) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buildContext, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTasbihEventCopyWith<_$AddTasbihEvent> get copyWith =>
      __$$AddTasbihEventCopyWithImpl<_$AddTasbihEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String dikr, String translate, String id)
        selectDhikerEvent,
    required TResult Function() fetchDhikr,
    required TResult Function() dikhrIncreaseCountEvent,
    required TResult Function(int newValue) changeTasbihGoalEvent,
    required TResult Function() resetTashbihCounterEvent,
    required TResult Function(BuildContext buildContext, String id)
        addTasbihEvent,
    required TResult Function() checkLoopEvent,
  }) {
    return addTasbihEvent(buildContext, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String dikr, String translate, String id)?
        selectDhikerEvent,
    TResult? Function()? fetchDhikr,
    TResult? Function()? dikhrIncreaseCountEvent,
    TResult? Function(int newValue)? changeTasbihGoalEvent,
    TResult? Function()? resetTashbihCounterEvent,
    TResult? Function(BuildContext buildContext, String id)? addTasbihEvent,
    TResult? Function()? checkLoopEvent,
  }) {
    return addTasbihEvent?.call(buildContext, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String dikr, String translate, String id)?
        selectDhikerEvent,
    TResult Function()? fetchDhikr,
    TResult Function()? dikhrIncreaseCountEvent,
    TResult Function(int newValue)? changeTasbihGoalEvent,
    TResult Function()? resetTashbihCounterEvent,
    TResult Function(BuildContext buildContext, String id)? addTasbihEvent,
    TResult Function()? checkLoopEvent,
    required TResult orElse(),
  }) {
    if (addTasbihEvent != null) {
      return addTasbihEvent(buildContext, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectDhikerEvent value) selectDhikerEvent,
    required TResult Function(FetchDhikr value) fetchDhikr,
    required TResult Function(DikhrIncreaseCountEvent value)
        dikhrIncreaseCountEvent,
    required TResult Function(ChangeTasbihGoalEvent value)
        changeTasbihGoalEvent,
    required TResult Function(ResetTashbihCounterEvent value)
        resetTashbihCounterEvent,
    required TResult Function(AddTasbihEvent value) addTasbihEvent,
    required TResult Function(CheckLoopEvent value) checkLoopEvent,
  }) {
    return addTasbihEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectDhikerEvent value)? selectDhikerEvent,
    TResult? Function(FetchDhikr value)? fetchDhikr,
    TResult? Function(DikhrIncreaseCountEvent value)? dikhrIncreaseCountEvent,
    TResult? Function(ChangeTasbihGoalEvent value)? changeTasbihGoalEvent,
    TResult? Function(ResetTashbihCounterEvent value)? resetTashbihCounterEvent,
    TResult? Function(AddTasbihEvent value)? addTasbihEvent,
    TResult? Function(CheckLoopEvent value)? checkLoopEvent,
  }) {
    return addTasbihEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectDhikerEvent value)? selectDhikerEvent,
    TResult Function(FetchDhikr value)? fetchDhikr,
    TResult Function(DikhrIncreaseCountEvent value)? dikhrIncreaseCountEvent,
    TResult Function(ChangeTasbihGoalEvent value)? changeTasbihGoalEvent,
    TResult Function(ResetTashbihCounterEvent value)? resetTashbihCounterEvent,
    TResult Function(AddTasbihEvent value)? addTasbihEvent,
    TResult Function(CheckLoopEvent value)? checkLoopEvent,
    required TResult orElse(),
  }) {
    if (addTasbihEvent != null) {
      return addTasbihEvent(this);
    }
    return orElse();
  }
}

abstract class AddTasbihEvent implements TasbihEvent {
  const factory AddTasbihEvent(
      {required final BuildContext buildContext,
      required final String id}) = _$AddTasbihEvent;

  BuildContext get buildContext;
  String get id;
  @JsonKey(ignore: true)
  _$$AddTasbihEventCopyWith<_$AddTasbihEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckLoopEventCopyWith<$Res> {
  factory _$$CheckLoopEventCopyWith(
          _$CheckLoopEvent value, $Res Function(_$CheckLoopEvent) then) =
      __$$CheckLoopEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckLoopEventCopyWithImpl<$Res>
    extends _$TasbihEventCopyWithImpl<$Res, _$CheckLoopEvent>
    implements _$$CheckLoopEventCopyWith<$Res> {
  __$$CheckLoopEventCopyWithImpl(
      _$CheckLoopEvent _value, $Res Function(_$CheckLoopEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckLoopEvent implements CheckLoopEvent {
  const _$CheckLoopEvent();

  @override
  String toString() {
    return 'TasbihEvent.checkLoopEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckLoopEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String dikr, String translate, String id)
        selectDhikerEvent,
    required TResult Function() fetchDhikr,
    required TResult Function() dikhrIncreaseCountEvent,
    required TResult Function(int newValue) changeTasbihGoalEvent,
    required TResult Function() resetTashbihCounterEvent,
    required TResult Function(BuildContext buildContext, String id)
        addTasbihEvent,
    required TResult Function() checkLoopEvent,
  }) {
    return checkLoopEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String dikr, String translate, String id)?
        selectDhikerEvent,
    TResult? Function()? fetchDhikr,
    TResult? Function()? dikhrIncreaseCountEvent,
    TResult? Function(int newValue)? changeTasbihGoalEvent,
    TResult? Function()? resetTashbihCounterEvent,
    TResult? Function(BuildContext buildContext, String id)? addTasbihEvent,
    TResult? Function()? checkLoopEvent,
  }) {
    return checkLoopEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String dikr, String translate, String id)?
        selectDhikerEvent,
    TResult Function()? fetchDhikr,
    TResult Function()? dikhrIncreaseCountEvent,
    TResult Function(int newValue)? changeTasbihGoalEvent,
    TResult Function()? resetTashbihCounterEvent,
    TResult Function(BuildContext buildContext, String id)? addTasbihEvent,
    TResult Function()? checkLoopEvent,
    required TResult orElse(),
  }) {
    if (checkLoopEvent != null) {
      return checkLoopEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectDhikerEvent value) selectDhikerEvent,
    required TResult Function(FetchDhikr value) fetchDhikr,
    required TResult Function(DikhrIncreaseCountEvent value)
        dikhrIncreaseCountEvent,
    required TResult Function(ChangeTasbihGoalEvent value)
        changeTasbihGoalEvent,
    required TResult Function(ResetTashbihCounterEvent value)
        resetTashbihCounterEvent,
    required TResult Function(AddTasbihEvent value) addTasbihEvent,
    required TResult Function(CheckLoopEvent value) checkLoopEvent,
  }) {
    return checkLoopEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectDhikerEvent value)? selectDhikerEvent,
    TResult? Function(FetchDhikr value)? fetchDhikr,
    TResult? Function(DikhrIncreaseCountEvent value)? dikhrIncreaseCountEvent,
    TResult? Function(ChangeTasbihGoalEvent value)? changeTasbihGoalEvent,
    TResult? Function(ResetTashbihCounterEvent value)? resetTashbihCounterEvent,
    TResult? Function(AddTasbihEvent value)? addTasbihEvent,
    TResult? Function(CheckLoopEvent value)? checkLoopEvent,
  }) {
    return checkLoopEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectDhikerEvent value)? selectDhikerEvent,
    TResult Function(FetchDhikr value)? fetchDhikr,
    TResult Function(DikhrIncreaseCountEvent value)? dikhrIncreaseCountEvent,
    TResult Function(ChangeTasbihGoalEvent value)? changeTasbihGoalEvent,
    TResult Function(ResetTashbihCounterEvent value)? resetTashbihCounterEvent,
    TResult Function(AddTasbihEvent value)? addTasbihEvent,
    TResult Function(CheckLoopEvent value)? checkLoopEvent,
    required TResult orElse(),
  }) {
    if (checkLoopEvent != null) {
      return checkLoopEvent(this);
    }
    return orElse();
  }
}

abstract class CheckLoopEvent implements TasbihEvent {
  const factory CheckLoopEvent() = _$CheckLoopEvent;
}

/// @nodoc
mixin _$TasbihState {
  String get tasbihDhikr => throw _privateConstructorUsedError;
  String get tasbihDikrTranslate => throw _privateConstructorUsedError;
  String get tasbihId => throw _privateConstructorUsedError;
  DhikrModel? get dhikrModel => throw _privateConstructorUsedError;
  int get dhikrCount => throw _privateConstructorUsedError;
  int get dhikrhGoal => throw _privateConstructorUsedError;
  bool get isBoolGreaterThanOne => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasbihStateCopyWith<TasbihState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasbihStateCopyWith<$Res> {
  factory $TasbihStateCopyWith(
          TasbihState value, $Res Function(TasbihState) then) =
      _$TasbihStateCopyWithImpl<$Res, TasbihState>;
  @useResult
  $Res call(
      {String tasbihDhikr,
      String tasbihDikrTranslate,
      String tasbihId,
      DhikrModel? dhikrModel,
      int dhikrCount,
      int dhikrhGoal,
      bool isBoolGreaterThanOne});

  $DhikrModelCopyWith<$Res>? get dhikrModel;
}

/// @nodoc
class _$TasbihStateCopyWithImpl<$Res, $Val extends TasbihState>
    implements $TasbihStateCopyWith<$Res> {
  _$TasbihStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasbihDhikr = null,
    Object? tasbihDikrTranslate = null,
    Object? tasbihId = null,
    Object? dhikrModel = freezed,
    Object? dhikrCount = null,
    Object? dhikrhGoal = null,
    Object? isBoolGreaterThanOne = null,
  }) {
    return _then(_value.copyWith(
      tasbihDhikr: null == tasbihDhikr
          ? _value.tasbihDhikr
          : tasbihDhikr // ignore: cast_nullable_to_non_nullable
              as String,
      tasbihDikrTranslate: null == tasbihDikrTranslate
          ? _value.tasbihDikrTranslate
          : tasbihDikrTranslate // ignore: cast_nullable_to_non_nullable
              as String,
      tasbihId: null == tasbihId
          ? _value.tasbihId
          : tasbihId // ignore: cast_nullable_to_non_nullable
              as String,
      dhikrModel: freezed == dhikrModel
          ? _value.dhikrModel
          : dhikrModel // ignore: cast_nullable_to_non_nullable
              as DhikrModel?,
      dhikrCount: null == dhikrCount
          ? _value.dhikrCount
          : dhikrCount // ignore: cast_nullable_to_non_nullable
              as int,
      dhikrhGoal: null == dhikrhGoal
          ? _value.dhikrhGoal
          : dhikrhGoal // ignore: cast_nullable_to_non_nullable
              as int,
      isBoolGreaterThanOne: null == isBoolGreaterThanOne
          ? _value.isBoolGreaterThanOne
          : isBoolGreaterThanOne // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DhikrModelCopyWith<$Res>? get dhikrModel {
    if (_value.dhikrModel == null) {
      return null;
    }

    return $DhikrModelCopyWith<$Res>(_value.dhikrModel!, (value) {
      return _then(_value.copyWith(dhikrModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TasbihStateCopyWith<$Res>
    implements $TasbihStateCopyWith<$Res> {
  factory _$$_TasbihStateCopyWith(
          _$_TasbihState value, $Res Function(_$_TasbihState) then) =
      __$$_TasbihStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tasbihDhikr,
      String tasbihDikrTranslate,
      String tasbihId,
      DhikrModel? dhikrModel,
      int dhikrCount,
      int dhikrhGoal,
      bool isBoolGreaterThanOne});

  @override
  $DhikrModelCopyWith<$Res>? get dhikrModel;
}

/// @nodoc
class __$$_TasbihStateCopyWithImpl<$Res>
    extends _$TasbihStateCopyWithImpl<$Res, _$_TasbihState>
    implements _$$_TasbihStateCopyWith<$Res> {
  __$$_TasbihStateCopyWithImpl(
      _$_TasbihState _value, $Res Function(_$_TasbihState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasbihDhikr = null,
    Object? tasbihDikrTranslate = null,
    Object? tasbihId = null,
    Object? dhikrModel = freezed,
    Object? dhikrCount = null,
    Object? dhikrhGoal = null,
    Object? isBoolGreaterThanOne = null,
  }) {
    return _then(_$_TasbihState(
      tasbihDhikr: null == tasbihDhikr
          ? _value.tasbihDhikr
          : tasbihDhikr // ignore: cast_nullable_to_non_nullable
              as String,
      tasbihDikrTranslate: null == tasbihDikrTranslate
          ? _value.tasbihDikrTranslate
          : tasbihDikrTranslate // ignore: cast_nullable_to_non_nullable
              as String,
      tasbihId: null == tasbihId
          ? _value.tasbihId
          : tasbihId // ignore: cast_nullable_to_non_nullable
              as String,
      dhikrModel: freezed == dhikrModel
          ? _value.dhikrModel
          : dhikrModel // ignore: cast_nullable_to_non_nullable
              as DhikrModel?,
      dhikrCount: null == dhikrCount
          ? _value.dhikrCount
          : dhikrCount // ignore: cast_nullable_to_non_nullable
              as int,
      dhikrhGoal: null == dhikrhGoal
          ? _value.dhikrhGoal
          : dhikrhGoal // ignore: cast_nullable_to_non_nullable
              as int,
      isBoolGreaterThanOne: null == isBoolGreaterThanOne
          ? _value.isBoolGreaterThanOne
          : isBoolGreaterThanOne // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TasbihState implements _TasbihState {
  const _$_TasbihState(
      {required this.tasbihDhikr,
      required this.tasbihDikrTranslate,
      required this.tasbihId,
      required this.dhikrModel,
      required this.dhikrCount,
      required this.dhikrhGoal,
      required this.isBoolGreaterThanOne});

  @override
  final String tasbihDhikr;
  @override
  final String tasbihDikrTranslate;
  @override
  final String tasbihId;
  @override
  final DhikrModel? dhikrModel;
  @override
  final int dhikrCount;
  @override
  final int dhikrhGoal;
  @override
  final bool isBoolGreaterThanOne;

  @override
  String toString() {
    return 'TasbihState(tasbihDhikr: $tasbihDhikr, tasbihDikrTranslate: $tasbihDikrTranslate, tasbihId: $tasbihId, dhikrModel: $dhikrModel, dhikrCount: $dhikrCount, dhikrhGoal: $dhikrhGoal, isBoolGreaterThanOne: $isBoolGreaterThanOne)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TasbihState &&
            (identical(other.tasbihDhikr, tasbihDhikr) ||
                other.tasbihDhikr == tasbihDhikr) &&
            (identical(other.tasbihDikrTranslate, tasbihDikrTranslate) ||
                other.tasbihDikrTranslate == tasbihDikrTranslate) &&
            (identical(other.tasbihId, tasbihId) ||
                other.tasbihId == tasbihId) &&
            (identical(other.dhikrModel, dhikrModel) ||
                other.dhikrModel == dhikrModel) &&
            (identical(other.dhikrCount, dhikrCount) ||
                other.dhikrCount == dhikrCount) &&
            (identical(other.dhikrhGoal, dhikrhGoal) ||
                other.dhikrhGoal == dhikrhGoal) &&
            (identical(other.isBoolGreaterThanOne, isBoolGreaterThanOne) ||
                other.isBoolGreaterThanOne == isBoolGreaterThanOne));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasbihDhikr, tasbihDikrTranslate,
      tasbihId, dhikrModel, dhikrCount, dhikrhGoal, isBoolGreaterThanOne);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TasbihStateCopyWith<_$_TasbihState> get copyWith =>
      __$$_TasbihStateCopyWithImpl<_$_TasbihState>(this, _$identity);
}

abstract class _TasbihState implements TasbihState {
  const factory _TasbihState(
      {required final String tasbihDhikr,
      required final String tasbihDikrTranslate,
      required final String tasbihId,
      required final DhikrModel? dhikrModel,
      required final int dhikrCount,
      required final int dhikrhGoal,
      required final bool isBoolGreaterThanOne}) = _$_TasbihState;

  @override
  String get tasbihDhikr;
  @override
  String get tasbihDikrTranslate;
  @override
  String get tasbihId;
  @override
  DhikrModel? get dhikrModel;
  @override
  int get dhikrCount;
  @override
  int get dhikrhGoal;
  @override
  bool get isBoolGreaterThanOne;
  @override
  @JsonKey(ignore: true)
  _$$_TasbihStateCopyWith<_$_TasbihState> get copyWith =>
      throw _privateConstructorUsedError;
}
