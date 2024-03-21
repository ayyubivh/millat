// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_para_aya_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranParaAyaModel _$QuranParaAyaModelFromJson(Map<String, dynamic> json) {
  return _QuranParaAyaModel.fromJson(json);
}

/// @nodoc
mixin _$QuranParaAyaModel {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranParaAyaModelCopyWith<QuranParaAyaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranParaAyaModelCopyWith<$Res> {
  factory $QuranParaAyaModelCopyWith(
          QuranParaAyaModel value, $Res Function(QuranParaAyaModel) then) =
      _$QuranParaAyaModelCopyWithImpl<$Res, QuranParaAyaModel>;
  @useResult
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$QuranParaAyaModelCopyWithImpl<$Res, $Val extends QuranParaAyaModel>
    implements $QuranParaAyaModelCopyWith<$Res> {
  _$QuranParaAyaModelCopyWithImpl(this._value, this._then);

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
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuranParaAyaModelImplCopyWith<$Res>
    implements $QuranParaAyaModelCopyWith<$Res> {
  factory _$$QuranParaAyaModelImplCopyWith(_$QuranParaAyaModelImpl value,
          $Res Function(_$QuranParaAyaModelImpl) then) =
      __$$QuranParaAyaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$QuranParaAyaModelImplCopyWithImpl<$Res>
    extends _$QuranParaAyaModelCopyWithImpl<$Res, _$QuranParaAyaModelImpl>
    implements _$$QuranParaAyaModelImplCopyWith<$Res> {
  __$$QuranParaAyaModelImplCopyWithImpl(_$QuranParaAyaModelImpl _value,
      $Res Function(_$QuranParaAyaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$QuranParaAyaModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranParaAyaModelImpl implements _QuranParaAyaModel {
  const _$QuranParaAyaModelImpl({required this.data});

  factory _$QuranParaAyaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranParaAyaModelImplFromJson(json);

  @override
  final Data? data;

  @override
  String toString() {
    return 'QuranParaAyaModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranParaAyaModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranParaAyaModelImplCopyWith<_$QuranParaAyaModelImpl> get copyWith =>
      __$$QuranParaAyaModelImplCopyWithImpl<_$QuranParaAyaModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranParaAyaModelImplToJson(
      this,
    );
  }
}

abstract class _QuranParaAyaModel implements QuranParaAyaModel {
  const factory _QuranParaAyaModel({required final Data? data}) =
      _$QuranParaAyaModelImpl;

  factory _QuranParaAyaModel.fromJson(Map<String, dynamic> json) =
      _$QuranParaAyaModelImpl.fromJson;

  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$QuranParaAyaModelImplCopyWith<_$QuranParaAyaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  Para? get para => throw _privateConstructorUsedError;
  List<Ayah>? get ayah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({Para? para, List<Ayah>? ayah});

  $ParaCopyWith<$Res>? get para;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? para = freezed,
    Object? ayah = freezed,
  }) {
    return _then(_value.copyWith(
      para: freezed == para
          ? _value.para
          : para // ignore: cast_nullable_to_non_nullable
              as Para?,
      ayah: freezed == ayah
          ? _value.ayah
          : ayah // ignore: cast_nullable_to_non_nullable
              as List<Ayah>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParaCopyWith<$Res>? get para {
    if (_value.para == null) {
      return null;
    }

    return $ParaCopyWith<$Res>(_value.para!, (value) {
      return _then(_value.copyWith(para: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Para? para, List<Ayah>? ayah});

  @override
  $ParaCopyWith<$Res>? get para;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? para = freezed,
    Object? ayah = freezed,
  }) {
    return _then(_$DataImpl(
      para: freezed == para
          ? _value.para
          : para // ignore: cast_nullable_to_non_nullable
              as Para?,
      ayah: freezed == ayah
          ? _value._ayah
          : ayah // ignore: cast_nullable_to_non_nullable
              as List<Ayah>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({required this.para, required final List<Ayah>? ayah})
      : _ayah = ayah;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final Para? para;
  final List<Ayah>? _ayah;
  @override
  List<Ayah>? get ayah {
    final value = _ayah;
    if (value == null) return null;
    if (_ayah is EqualUnmodifiableListView) return _ayah;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(para: $para, ayah: $ayah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.para, para) || other.para == para) &&
            const DeepCollectionEquality().equals(other._ayah, _ayah));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, para, const DeepCollectionEquality().hash(_ayah));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final Para? para,
      required final List<Ayah>? ayah}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  Para? get para;
  @override
  List<Ayah>? get ayah;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Para _$ParaFromJson(Map<String, dynamic> json) {
  return _Para.fromJson(json);
}

/// @nodoc
mixin _$Para {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<Surah1>? get surah => throw _privateConstructorUsedError;
  int? get paraNumber => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParaCopyWith<Para> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParaCopyWith<$Res> {
  factory $ParaCopyWith(Para value, $Res Function(Para) then) =
      _$ParaCopyWithImpl<$Res, Para>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? title,
      List<Surah1>? surah,
      int? paraNumber,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$ParaCopyWithImpl<$Res, $Val extends Para>
    implements $ParaCopyWith<$Res> {
  _$ParaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? surah = freezed,
    Object? paraNumber = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as List<Surah1>?,
      paraNumber: freezed == paraNumber
          ? _value.paraNumber
          : paraNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParaImplCopyWith<$Res> implements $ParaCopyWith<$Res> {
  factory _$$ParaImplCopyWith(
          _$ParaImpl value, $Res Function(_$ParaImpl) then) =
      __$$ParaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? title,
      List<Surah1>? surah,
      int? paraNumber,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$ParaImplCopyWithImpl<$Res>
    extends _$ParaCopyWithImpl<$Res, _$ParaImpl>
    implements _$$ParaImplCopyWith<$Res> {
  __$$ParaImplCopyWithImpl(_$ParaImpl _value, $Res Function(_$ParaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? surah = freezed,
    Object? paraNumber = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ParaImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      surah: freezed == surah
          ? _value._surah
          : surah // ignore: cast_nullable_to_non_nullable
              as List<Surah1>?,
      paraNumber: freezed == paraNumber
          ? _value.paraNumber
          : paraNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParaImpl implements _Para {
  const _$ParaImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.title,
      required final List<Surah1>? surah,
      required this.paraNumber,
      required this.createdAt,
      required this.updatedAt})
      : _surah = surah;

  factory _$ParaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParaImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? title;
  final List<Surah1>? _surah;
  @override
  List<Surah1>? get surah {
    final value = _surah;
    if (value == null) return null;
    if (_surah is EqualUnmodifiableListView) return _surah;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? paraNumber;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Para(id: $id, title: $title, surah: $surah, paraNumber: $paraNumber, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._surah, _surah) &&
            (identical(other.paraNumber, paraNumber) ||
                other.paraNumber == paraNumber) &&
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
      title,
      const DeepCollectionEquality().hash(_surah),
      paraNumber,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParaImplCopyWith<_$ParaImpl> get copyWith =>
      __$$ParaImplCopyWithImpl<_$ParaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParaImplToJson(
      this,
    );
  }
}

abstract class _Para implements Para {
  const factory _Para(
      {@JsonKey(name: "_id") required final String? id,
      required final String? title,
      required final List<Surah1>? surah,
      required final int? paraNumber,
      required final DateTime? createdAt,
      required final DateTime? updatedAt}) = _$ParaImpl;

  factory _Para.fromJson(Map<String, dynamic> json) = _$ParaImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get title;
  @override
  List<Surah1>? get surah;
  @override
  int? get paraNumber;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ParaImplCopyWith<_$ParaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Surah1 _$Surah1FromJson(Map<String, dynamic> json) {
  return _Surah1.fromJson(json);
}

/// @nodoc
mixin _$Surah1 {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  QuranSurahAyayModel? get surah => throw _privateConstructorUsedError;
  int? get surahNumber => throw _privateConstructorUsedError;
  int? get ayahNumber => throw _privateConstructorUsedError;
  String? get revealedIn => throw _privateConstructorUsedError;
  List<Translation>? get translations => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageContent')
  String? get imageContent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Surah1CopyWith<Surah1> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Surah1CopyWith<$Res> {
  factory $Surah1CopyWith(Surah1 value, $Res Function(Surah1) then) =
      _$Surah1CopyWithImpl<$Res, Surah1>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      QuranSurahAyayModel? surah,
      int? surahNumber,
      int? ayahNumber,
      String? revealedIn,
      List<Translation>? translations,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? content,
      @JsonKey(name: 'imageContent') String? imageContent});

  $QuranSurahAyayModelCopyWith<$Res>? get surah;
}

/// @nodoc
class _$Surah1CopyWithImpl<$Res, $Val extends Surah1>
    implements $Surah1CopyWith<$Res> {
  _$Surah1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? surah = freezed,
    Object? surahNumber = freezed,
    Object? ayahNumber = freezed,
    Object? revealedIn = freezed,
    Object? translations = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? content = freezed,
    Object? imageContent = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as QuranSurahAyayModel?,
      surahNumber: freezed == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      ayahNumber: freezed == ayahNumber
          ? _value.ayahNumber
          : ayahNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      revealedIn: freezed == revealedIn
          ? _value.revealedIn
          : revealedIn // ignore: cast_nullable_to_non_nullable
              as String?,
      translations: freezed == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translation>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      imageContent: freezed == imageContent
          ? _value.imageContent
          : imageContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuranSurahAyayModelCopyWith<$Res>? get surah {
    if (_value.surah == null) {
      return null;
    }

    return $QuranSurahAyayModelCopyWith<$Res>(_value.surah!, (value) {
      return _then(_value.copyWith(surah: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Surah1ImplCopyWith<$Res> implements $Surah1CopyWith<$Res> {
  factory _$$Surah1ImplCopyWith(
          _$Surah1Impl value, $Res Function(_$Surah1Impl) then) =
      __$$Surah1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      QuranSurahAyayModel? surah,
      int? surahNumber,
      int? ayahNumber,
      String? revealedIn,
      List<Translation>? translations,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? content,
      @JsonKey(name: 'imageContent') String? imageContent});

  @override
  $QuranSurahAyayModelCopyWith<$Res>? get surah;
}

/// @nodoc
class __$$Surah1ImplCopyWithImpl<$Res>
    extends _$Surah1CopyWithImpl<$Res, _$Surah1Impl>
    implements _$$Surah1ImplCopyWith<$Res> {
  __$$Surah1ImplCopyWithImpl(
      _$Surah1Impl _value, $Res Function(_$Surah1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? surah = freezed,
    Object? surahNumber = freezed,
    Object? ayahNumber = freezed,
    Object? revealedIn = freezed,
    Object? translations = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? content = freezed,
    Object? imageContent = freezed,
  }) {
    return _then(_$Surah1Impl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as QuranSurahAyayModel?,
      surahNumber: freezed == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      ayahNumber: freezed == ayahNumber
          ? _value.ayahNumber
          : ayahNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      revealedIn: freezed == revealedIn
          ? _value.revealedIn
          : revealedIn // ignore: cast_nullable_to_non_nullable
              as String?,
      translations: freezed == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translation>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      imageContent: freezed == imageContent
          ? _value.imageContent
          : imageContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Surah1Impl implements _Surah1 {
  const _$Surah1Impl(
      {@JsonKey(name: "_id") required this.id,
      required this.surah,
      required this.surahNumber,
      required this.ayahNumber,
      required this.revealedIn,
      required final List<Translation>? translations,
      required this.createdAt,
      required this.updatedAt,
      required this.content,
      @JsonKey(name: 'imageContent') required this.imageContent})
      : _translations = translations;

  factory _$Surah1Impl.fromJson(Map<String, dynamic> json) =>
      _$$Surah1ImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final QuranSurahAyayModel? surah;
  @override
  final int? surahNumber;
  @override
  final int? ayahNumber;
  @override
  final String? revealedIn;
  final List<Translation>? _translations;
  @override
  List<Translation>? get translations {
    final value = _translations;
    if (value == null) return null;
    if (_translations is EqualUnmodifiableListView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? content;
  @override
  @JsonKey(name: 'imageContent')
  final String? imageContent;

  @override
  String toString() {
    return 'Surah1(id: $id, surah: $surah, surahNumber: $surahNumber, ayahNumber: $ayahNumber, revealedIn: $revealedIn, translations: $translations, createdAt: $createdAt, updatedAt: $updatedAt, content: $content, imageContent: $imageContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Surah1Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.surahNumber, surahNumber) ||
                other.surahNumber == surahNumber) &&
            (identical(other.ayahNumber, ayahNumber) ||
                other.ayahNumber == ayahNumber) &&
            (identical(other.revealedIn, revealedIn) ||
                other.revealedIn == revealedIn) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.imageContent, imageContent) ||
                other.imageContent == imageContent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      surah,
      surahNumber,
      ayahNumber,
      revealedIn,
      const DeepCollectionEquality().hash(_translations),
      createdAt,
      updatedAt,
      content,
      imageContent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Surah1ImplCopyWith<_$Surah1Impl> get copyWith =>
      __$$Surah1ImplCopyWithImpl<_$Surah1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Surah1ImplToJson(
      this,
    );
  }
}

abstract class _Surah1 implements Surah1 {
  const factory _Surah1(
          {@JsonKey(name: "_id") required final String? id,
          required final QuranSurahAyayModel? surah,
          required final int? surahNumber,
          required final int? ayahNumber,
          required final String? revealedIn,
          required final List<Translation>? translations,
          required final DateTime? createdAt,
          required final DateTime? updatedAt,
          required final String? content,
          @JsonKey(name: 'imageContent') required final String? imageContent}) =
      _$Surah1Impl;

  factory _Surah1.fromJson(Map<String, dynamic> json) = _$Surah1Impl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  QuranSurahAyayModel? get surah;
  @override
  int? get surahNumber;
  @override
  int? get ayahNumber;
  @override
  String? get revealedIn;
  @override
  List<Translation>? get translations;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get content;
  @override
  @JsonKey(name: 'imageContent')
  String? get imageContent;
  @override
  @JsonKey(ignore: true)
  _$$Surah1ImplCopyWith<_$Surah1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Translation _$TranslationFromJson(Map<String, dynamic> json) {
  return _Translation.fromJson(json);
}

/// @nodoc
mixin _$Translation {
  String? get translationBy => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get audio => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageContent')
  String? get imageContent => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslationCopyWith<Translation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationCopyWith<$Res> {
  factory $TranslationCopyWith(
          Translation value, $Res Function(Translation) then) =
      _$TranslationCopyWithImpl<$Res, Translation>;
  @useResult
  $Res call(
      {String? translationBy,
      String? language,
      String? audio,
      String? content,
      @JsonKey(name: 'imageContent') String? imageContent,
      @JsonKey(name: "_id") String? id});
}

/// @nodoc
class _$TranslationCopyWithImpl<$Res, $Val extends Translation>
    implements $TranslationCopyWith<$Res> {
  _$TranslationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translationBy = freezed,
    Object? language = freezed,
    Object? audio = freezed,
    Object? content = freezed,
    Object? imageContent = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      translationBy: freezed == translationBy
          ? _value.translationBy
          : translationBy // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      imageContent: freezed == imageContent
          ? _value.imageContent
          : imageContent // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslationImplCopyWith<$Res>
    implements $TranslationCopyWith<$Res> {
  factory _$$TranslationImplCopyWith(
          _$TranslationImpl value, $Res Function(_$TranslationImpl) then) =
      __$$TranslationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? translationBy,
      String? language,
      String? audio,
      String? content,
      @JsonKey(name: 'imageContent') String? imageContent,
      @JsonKey(name: "_id") String? id});
}

/// @nodoc
class __$$TranslationImplCopyWithImpl<$Res>
    extends _$TranslationCopyWithImpl<$Res, _$TranslationImpl>
    implements _$$TranslationImplCopyWith<$Res> {
  __$$TranslationImplCopyWithImpl(
      _$TranslationImpl _value, $Res Function(_$TranslationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translationBy = freezed,
    Object? language = freezed,
    Object? audio = freezed,
    Object? content = freezed,
    Object? imageContent = freezed,
    Object? id = freezed,
  }) {
    return _then(_$TranslationImpl(
      translationBy: freezed == translationBy
          ? _value.translationBy
          : translationBy // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      imageContent: freezed == imageContent
          ? _value.imageContent
          : imageContent // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslationImpl implements _Translation {
  const _$TranslationImpl(
      {required this.translationBy,
      required this.language,
      required this.audio,
      required this.content,
      @JsonKey(name: 'imageContent') required this.imageContent,
      @JsonKey(name: "_id") required this.id});

  factory _$TranslationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationImplFromJson(json);

  @override
  final String? translationBy;
  @override
  final String? language;
  @override
  final String? audio;
  @override
  final String? content;
  @override
  @JsonKey(name: 'imageContent')
  final String? imageContent;
  @override
  @JsonKey(name: "_id")
  final String? id;

  @override
  String toString() {
    return 'Translation(translationBy: $translationBy, language: $language, audio: $audio, content: $content, imageContent: $imageContent, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationImpl &&
            (identical(other.translationBy, translationBy) ||
                other.translationBy == translationBy) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.imageContent, imageContent) ||
                other.imageContent == imageContent) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, translationBy, language, audio, content, imageContent, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationImplCopyWith<_$TranslationImpl> get copyWith =>
      __$$TranslationImplCopyWithImpl<_$TranslationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslationImplToJson(
      this,
    );
  }
}

abstract class _Translation implements Translation {
  const factory _Translation(
      {required final String? translationBy,
      required final String? language,
      required final String? audio,
      required final String? content,
      @JsonKey(name: 'imageContent') required final String? imageContent,
      @JsonKey(name: "_id") required final String? id}) = _$TranslationImpl;

  factory _Translation.fromJson(Map<String, dynamic> json) =
      _$TranslationImpl.fromJson;

  @override
  String? get translationBy;
  @override
  String? get language;
  @override
  String? get audio;
  @override
  String? get content;
  @override
  @JsonKey(name: 'imageContent')
  String? get imageContent;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$TranslationImplCopyWith<_$TranslationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Ayah {
  Map<String, List<Surah1>> get surahData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AyahCopyWith<Ayah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahCopyWith<$Res> {
  factory $AyahCopyWith(Ayah value, $Res Function(Ayah) then) =
      _$AyahCopyWithImpl<$Res, Ayah>;
  @useResult
  $Res call({Map<String, List<Surah1>> surahData});
}

/// @nodoc
class _$AyahCopyWithImpl<$Res, $Val extends Ayah>
    implements $AyahCopyWith<$Res> {
  _$AyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahData = null,
  }) {
    return _then(_value.copyWith(
      surahData: null == surahData
          ? _value.surahData
          : surahData // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Surah1>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AyahImplCopyWith<$Res> implements $AyahCopyWith<$Res> {
  factory _$$AyahImplCopyWith(
          _$AyahImpl value, $Res Function(_$AyahImpl) then) =
      __$$AyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<Surah1>> surahData});
}

/// @nodoc
class __$$AyahImplCopyWithImpl<$Res>
    extends _$AyahCopyWithImpl<$Res, _$AyahImpl>
    implements _$$AyahImplCopyWith<$Res> {
  __$$AyahImplCopyWithImpl(_$AyahImpl _value, $Res Function(_$AyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahData = null,
  }) {
    return _then(_$AyahImpl(
      surahData: null == surahData
          ? _value._surahData
          : surahData // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Surah1>>,
    ));
  }
}

/// @nodoc

class _$AyahImpl implements _Ayah {
  const _$AyahImpl({required final Map<String, List<Surah1>> surahData})
      : _surahData = surahData;

  final Map<String, List<Surah1>> _surahData;
  @override
  Map<String, List<Surah1>> get surahData {
    if (_surahData is EqualUnmodifiableMapView) return _surahData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_surahData);
  }

  @override
  String toString() {
    return 'Ayah(surahData: $surahData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahImpl &&
            const DeepCollectionEquality()
                .equals(other._surahData, _surahData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_surahData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahImplCopyWith<_$AyahImpl> get copyWith =>
      __$$AyahImplCopyWithImpl<_$AyahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}

abstract class _Ayah implements Ayah {
  const factory _Ayah({required final Map<String, List<Surah1>> surahData}) =
      _$AyahImpl;

  @override
  Map<String, List<Surah1>> get surahData;
  @override
  @JsonKey(ignore: true)
  _$$AyahImplCopyWith<_$AyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
