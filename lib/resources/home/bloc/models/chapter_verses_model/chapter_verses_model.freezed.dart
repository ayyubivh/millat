// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_verses_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChapterVersesModel _$ChapterVersesModelFromJson(Map<String, dynamic> json) {
  return _ChapterVersesModel.fromJson(json);
}

/// @nodoc
mixin _$ChapterVersesModel {
  int get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  VersesData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterVersesModelCopyWith<ChapterVersesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterVersesModelCopyWith<$Res> {
  factory $ChapterVersesModelCopyWith(
          ChapterVersesModel value, $Res Function(ChapterVersesModel) then) =
      _$ChapterVersesModelCopyWithImpl<$Res, ChapterVersesModel>;
  @useResult
  $Res call({int code, String status, VersesData data});

  $VersesDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ChapterVersesModelCopyWithImpl<$Res, $Val extends ChapterVersesModel>
    implements $ChapterVersesModelCopyWith<$Res> {
  _$ChapterVersesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VersesData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VersesDataCopyWith<$Res> get data {
    return $VersesDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChapterVersesModelCopyWith<$Res>
    implements $ChapterVersesModelCopyWith<$Res> {
  factory _$$_ChapterVersesModelCopyWith(_$_ChapterVersesModel value,
          $Res Function(_$_ChapterVersesModel) then) =
      __$$_ChapterVersesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String status, VersesData data});

  @override
  $VersesDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChapterVersesModelCopyWithImpl<$Res>
    extends _$ChapterVersesModelCopyWithImpl<$Res, _$_ChapterVersesModel>
    implements _$$_ChapterVersesModelCopyWith<$Res> {
  __$$_ChapterVersesModelCopyWithImpl(
      _$_ChapterVersesModel _value, $Res Function(_$_ChapterVersesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$_ChapterVersesModel(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VersesData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChapterVersesModel implements _ChapterVersesModel {
  const _$_ChapterVersesModel(
      {required this.code, required this.status, required this.data});

  factory _$_ChapterVersesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChapterVersesModelFromJson(json);

  @override
  final int code;
  @override
  final String status;
  @override
  final VersesData data;

  @override
  String toString() {
    return 'ChapterVersesModel(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChapterVersesModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChapterVersesModelCopyWith<_$_ChapterVersesModel> get copyWith =>
      __$$_ChapterVersesModelCopyWithImpl<_$_ChapterVersesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChapterVersesModelToJson(
      this,
    );
  }
}

abstract class _ChapterVersesModel implements ChapterVersesModel {
  const factory _ChapterVersesModel(
      {required final int code,
      required final String status,
      required final VersesData data}) = _$_ChapterVersesModel;

  factory _ChapterVersesModel.fromJson(Map<String, dynamic> json) =
      _$_ChapterVersesModel.fromJson;

  @override
  int get code;
  @override
  String get status;
  @override
  VersesData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChapterVersesModelCopyWith<_$_ChapterVersesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

VersesData _$VersesDataFromJson(Map<String, dynamic> json) {
  return _VersesData.fromJson(json);
}

/// @nodoc
mixin _$VersesData {
  int get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get englishName => throw _privateConstructorUsedError;
  String get englishNameTranslation => throw _privateConstructorUsedError;
  String get revelationType => throw _privateConstructorUsedError;
  int get numberOfAyahs => throw _privateConstructorUsedError;
  List<VersesAyah> get ayahs => throw _privateConstructorUsedError;
  QuranEdition get edition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersesDataCopyWith<VersesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersesDataCopyWith<$Res> {
  factory $VersesDataCopyWith(
          VersesData value, $Res Function(VersesData) then) =
      _$VersesDataCopyWithImpl<$Res, VersesData>;
  @useResult
  $Res call(
      {int number,
      String name,
      String englishName,
      String englishNameTranslation,
      String revelationType,
      int numberOfAyahs,
      List<VersesAyah> ayahs,
      QuranEdition edition});

  $QuranEditionCopyWith<$Res> get edition;
}

/// @nodoc
class _$VersesDataCopyWithImpl<$Res, $Val extends VersesData>
    implements $VersesDataCopyWith<$Res> {
  _$VersesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? englishNameTranslation = null,
    Object? revelationType = null,
    Object? numberOfAyahs = null,
    Object? ayahs = null,
    Object? edition = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      englishNameTranslation: null == englishNameTranslation
          ? _value.englishNameTranslation
          : englishNameTranslation // ignore: cast_nullable_to_non_nullable
              as String,
      revelationType: null == revelationType
          ? _value.revelationType
          : revelationType // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfAyahs: null == numberOfAyahs
          ? _value.numberOfAyahs
          : numberOfAyahs // ignore: cast_nullable_to_non_nullable
              as int,
      ayahs: null == ayahs
          ? _value.ayahs
          : ayahs // ignore: cast_nullable_to_non_nullable
              as List<VersesAyah>,
      edition: null == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as QuranEdition,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuranEditionCopyWith<$Res> get edition {
    return $QuranEditionCopyWith<$Res>(_value.edition, (value) {
      return _then(_value.copyWith(edition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VersesDataCopyWith<$Res>
    implements $VersesDataCopyWith<$Res> {
  factory _$$_VersesDataCopyWith(
          _$_VersesData value, $Res Function(_$_VersesData) then) =
      __$$_VersesDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      String name,
      String englishName,
      String englishNameTranslation,
      String revelationType,
      int numberOfAyahs,
      List<VersesAyah> ayahs,
      QuranEdition edition});

  @override
  $QuranEditionCopyWith<$Res> get edition;
}

/// @nodoc
class __$$_VersesDataCopyWithImpl<$Res>
    extends _$VersesDataCopyWithImpl<$Res, _$_VersesData>
    implements _$$_VersesDataCopyWith<$Res> {
  __$$_VersesDataCopyWithImpl(
      _$_VersesData _value, $Res Function(_$_VersesData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? englishNameTranslation = null,
    Object? revelationType = null,
    Object? numberOfAyahs = null,
    Object? ayahs = null,
    Object? edition = null,
  }) {
    return _then(_$_VersesData(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      englishNameTranslation: null == englishNameTranslation
          ? _value.englishNameTranslation
          : englishNameTranslation // ignore: cast_nullable_to_non_nullable
              as String,
      revelationType: null == revelationType
          ? _value.revelationType
          : revelationType // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfAyahs: null == numberOfAyahs
          ? _value.numberOfAyahs
          : numberOfAyahs // ignore: cast_nullable_to_non_nullable
              as int,
      ayahs: null == ayahs
          ? _value._ayahs
          : ayahs // ignore: cast_nullable_to_non_nullable
              as List<VersesAyah>,
      edition: null == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as QuranEdition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersesData implements _VersesData {
  const _$_VersesData(
      {required this.number,
      required this.name,
      required this.englishName,
      required this.englishNameTranslation,
      required this.revelationType,
      required this.numberOfAyahs,
      required final List<VersesAyah> ayahs,
      required this.edition})
      : _ayahs = ayahs;

  factory _$_VersesData.fromJson(Map<String, dynamic> json) =>
      _$$_VersesDataFromJson(json);

  @override
  final int number;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final String englishNameTranslation;
  @override
  final String revelationType;
  @override
  final int numberOfAyahs;
  final List<VersesAyah> _ayahs;
  @override
  List<VersesAyah> get ayahs {
    if (_ayahs is EqualUnmodifiableListView) return _ayahs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ayahs);
  }

  @override
  final QuranEdition edition;

  @override
  String toString() {
    return 'VersesData(number: $number, name: $name, englishName: $englishName, englishNameTranslation: $englishNameTranslation, revelationType: $revelationType, numberOfAyahs: $numberOfAyahs, ayahs: $ayahs, edition: $edition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersesData &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.englishNameTranslation, englishNameTranslation) ||
                other.englishNameTranslation == englishNameTranslation) &&
            (identical(other.revelationType, revelationType) ||
                other.revelationType == revelationType) &&
            (identical(other.numberOfAyahs, numberOfAyahs) ||
                other.numberOfAyahs == numberOfAyahs) &&
            const DeepCollectionEquality().equals(other._ayahs, _ayahs) &&
            (identical(other.edition, edition) || other.edition == edition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      number,
      name,
      englishName,
      englishNameTranslation,
      revelationType,
      numberOfAyahs,
      const DeepCollectionEquality().hash(_ayahs),
      edition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersesDataCopyWith<_$_VersesData> get copyWith =>
      __$$_VersesDataCopyWithImpl<_$_VersesData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersesDataToJson(
      this,
    );
  }
}

abstract class _VersesData implements VersesData {
  const factory _VersesData(
      {required final int number,
      required final String name,
      required final String englishName,
      required final String englishNameTranslation,
      required final String revelationType,
      required final int numberOfAyahs,
      required final List<VersesAyah> ayahs,
      required final QuranEdition edition}) = _$_VersesData;

  factory _VersesData.fromJson(Map<String, dynamic> json) =
      _$_VersesData.fromJson;

  @override
  int get number;
  @override
  String get name;
  @override
  String get englishName;
  @override
  String get englishNameTranslation;
  @override
  String get revelationType;
  @override
  int get numberOfAyahs;
  @override
  List<VersesAyah> get ayahs;
  @override
  QuranEdition get edition;
  @override
  @JsonKey(ignore: true)
  _$$_VersesDataCopyWith<_$_VersesData> get copyWith =>
      throw _privateConstructorUsedError;
}

VersesAyah _$VersesAyahFromJson(Map<String, dynamic> json) {
  return _VersesAyah.fromJson(json);
}

/// @nodoc
mixin _$VersesAyah {
  int get number => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  int get numberInSurah => throw _privateConstructorUsedError;
  int get juz => throw _privateConstructorUsedError;
  int get manzil => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get ruku => throw _privateConstructorUsedError;
  int get hizbQuarter => throw _privateConstructorUsedError;
  bool get sajda => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersesAyahCopyWith<VersesAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersesAyahCopyWith<$Res> {
  factory $VersesAyahCopyWith(
          VersesAyah value, $Res Function(VersesAyah) then) =
      _$VersesAyahCopyWithImpl<$Res, VersesAyah>;
  @useResult
  $Res call(
      {int number,
      String text,
      int numberInSurah,
      int juz,
      int manzil,
      int page,
      int ruku,
      int hizbQuarter,
      bool sajda});
}

/// @nodoc
class _$VersesAyahCopyWithImpl<$Res, $Val extends VersesAyah>
    implements $VersesAyahCopyWith<$Res> {
  _$VersesAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? text = null,
    Object? numberInSurah = null,
    Object? juz = null,
    Object? manzil = null,
    Object? page = null,
    Object? ruku = null,
    Object? hizbQuarter = null,
    Object? sajda = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      numberInSurah: null == numberInSurah
          ? _value.numberInSurah
          : numberInSurah // ignore: cast_nullable_to_non_nullable
              as int,
      juz: null == juz
          ? _value.juz
          : juz // ignore: cast_nullable_to_non_nullable
              as int,
      manzil: null == manzil
          ? _value.manzil
          : manzil // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      ruku: null == ruku
          ? _value.ruku
          : ruku // ignore: cast_nullable_to_non_nullable
              as int,
      hizbQuarter: null == hizbQuarter
          ? _value.hizbQuarter
          : hizbQuarter // ignore: cast_nullable_to_non_nullable
              as int,
      sajda: null == sajda
          ? _value.sajda
          : sajda // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VersesAyahCopyWith<$Res>
    implements $VersesAyahCopyWith<$Res> {
  factory _$$_VersesAyahCopyWith(
          _$_VersesAyah value, $Res Function(_$_VersesAyah) then) =
      __$$_VersesAyahCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      String text,
      int numberInSurah,
      int juz,
      int manzil,
      int page,
      int ruku,
      int hizbQuarter,
      bool sajda});
}

/// @nodoc
class __$$_VersesAyahCopyWithImpl<$Res>
    extends _$VersesAyahCopyWithImpl<$Res, _$_VersesAyah>
    implements _$$_VersesAyahCopyWith<$Res> {
  __$$_VersesAyahCopyWithImpl(
      _$_VersesAyah _value, $Res Function(_$_VersesAyah) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? text = null,
    Object? numberInSurah = null,
    Object? juz = null,
    Object? manzil = null,
    Object? page = null,
    Object? ruku = null,
    Object? hizbQuarter = null,
    Object? sajda = null,
  }) {
    return _then(_$_VersesAyah(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      numberInSurah: null == numberInSurah
          ? _value.numberInSurah
          : numberInSurah // ignore: cast_nullable_to_non_nullable
              as int,
      juz: null == juz
          ? _value.juz
          : juz // ignore: cast_nullable_to_non_nullable
              as int,
      manzil: null == manzil
          ? _value.manzil
          : manzil // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      ruku: null == ruku
          ? _value.ruku
          : ruku // ignore: cast_nullable_to_non_nullable
              as int,
      hizbQuarter: null == hizbQuarter
          ? _value.hizbQuarter
          : hizbQuarter // ignore: cast_nullable_to_non_nullable
              as int,
      sajda: null == sajda
          ? _value.sajda
          : sajda // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersesAyah implements _VersesAyah {
  const _$_VersesAyah(
      {required this.number,
      required this.text,
      required this.numberInSurah,
      required this.juz,
      required this.manzil,
      required this.page,
      required this.ruku,
      required this.hizbQuarter,
      required this.sajda});

  factory _$_VersesAyah.fromJson(Map<String, dynamic> json) =>
      _$$_VersesAyahFromJson(json);

  @override
  final int number;
  @override
  final String text;
  @override
  final int numberInSurah;
  @override
  final int juz;
  @override
  final int manzil;
  @override
  final int page;
  @override
  final int ruku;
  @override
  final int hizbQuarter;
  @override
  final bool sajda;

  @override
  String toString() {
    return 'VersesAyah(number: $number, text: $text, numberInSurah: $numberInSurah, juz: $juz, manzil: $manzil, page: $page, ruku: $ruku, hizbQuarter: $hizbQuarter, sajda: $sajda)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersesAyah &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.numberInSurah, numberInSurah) ||
                other.numberInSurah == numberInSurah) &&
            (identical(other.juz, juz) || other.juz == juz) &&
            (identical(other.manzil, manzil) || other.manzil == manzil) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.ruku, ruku) || other.ruku == ruku) &&
            (identical(other.hizbQuarter, hizbQuarter) ||
                other.hizbQuarter == hizbQuarter) &&
            (identical(other.sajda, sajda) || other.sajda == sajda));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, text, numberInSurah, juz,
      manzil, page, ruku, hizbQuarter, sajda);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersesAyahCopyWith<_$_VersesAyah> get copyWith =>
      __$$_VersesAyahCopyWithImpl<_$_VersesAyah>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersesAyahToJson(
      this,
    );
  }
}

abstract class _VersesAyah implements VersesAyah {
  const factory _VersesAyah(
      {required final int number,
      required final String text,
      required final int numberInSurah,
      required final int juz,
      required final int manzil,
      required final int page,
      required final int ruku,
      required final int hizbQuarter,
      required final bool sajda}) = _$_VersesAyah;

  factory _VersesAyah.fromJson(Map<String, dynamic> json) =
      _$_VersesAyah.fromJson;

  @override
  int get number;
  @override
  String get text;
  @override
  int get numberInSurah;
  @override
  int get juz;
  @override
  int get manzil;
  @override
  int get page;
  @override
  int get ruku;
  @override
  int get hizbQuarter;
  @override
  bool get sajda;
  @override
  @JsonKey(ignore: true)
  _$$_VersesAyahCopyWith<_$_VersesAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

QuranEdition _$QuranEditionFromJson(Map<String, dynamic> json) {
  return _QuranEdition.fromJson(json);
}

/// @nodoc
mixin _$QuranEdition {
  String get identifier => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get englishName => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get direction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranEditionCopyWith<QuranEdition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranEditionCopyWith<$Res> {
  factory $QuranEditionCopyWith(
          QuranEdition value, $Res Function(QuranEdition) then) =
      _$QuranEditionCopyWithImpl<$Res, QuranEdition>;
  @useResult
  $Res call(
      {String identifier,
      String language,
      String name,
      String englishName,
      String format,
      String type,
      String direction});
}

/// @nodoc
class _$QuranEditionCopyWithImpl<$Res, $Val extends QuranEdition>
    implements $QuranEditionCopyWith<$Res> {
  _$QuranEditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? language = null,
    Object? name = null,
    Object? englishName = null,
    Object? format = null,
    Object? type = null,
    Object? direction = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuranEditionCopyWith<$Res>
    implements $QuranEditionCopyWith<$Res> {
  factory _$$_QuranEditionCopyWith(
          _$_QuranEdition value, $Res Function(_$_QuranEdition) then) =
      __$$_QuranEditionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String identifier,
      String language,
      String name,
      String englishName,
      String format,
      String type,
      String direction});
}

/// @nodoc
class __$$_QuranEditionCopyWithImpl<$Res>
    extends _$QuranEditionCopyWithImpl<$Res, _$_QuranEdition>
    implements _$$_QuranEditionCopyWith<$Res> {
  __$$_QuranEditionCopyWithImpl(
      _$_QuranEdition _value, $Res Function(_$_QuranEdition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? language = null,
    Object? name = null,
    Object? englishName = null,
    Object? format = null,
    Object? type = null,
    Object? direction = null,
  }) {
    return _then(_$_QuranEdition(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuranEdition implements _QuranEdition {
  const _$_QuranEdition(
      {required this.identifier,
      required this.language,
      required this.name,
      required this.englishName,
      required this.format,
      required this.type,
      required this.direction});

  factory _$_QuranEdition.fromJson(Map<String, dynamic> json) =>
      _$$_QuranEditionFromJson(json);

  @override
  final String identifier;
  @override
  final String language;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final String format;
  @override
  final String type;
  @override
  final String direction;

  @override
  String toString() {
    return 'QuranEdition(identifier: $identifier, language: $language, name: $name, englishName: $englishName, format: $format, type: $type, direction: $direction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuranEdition &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, language, name,
      englishName, format, type, direction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuranEditionCopyWith<_$_QuranEdition> get copyWith =>
      __$$_QuranEditionCopyWithImpl<_$_QuranEdition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuranEditionToJson(
      this,
    );
  }
}

abstract class _QuranEdition implements QuranEdition {
  const factory _QuranEdition(
      {required final String identifier,
      required final String language,
      required final String name,
      required final String englishName,
      required final String format,
      required final String type,
      required final String direction}) = _$_QuranEdition;

  factory _QuranEdition.fromJson(Map<String, dynamic> json) =
      _$_QuranEdition.fromJson;

  @override
  String get identifier;
  @override
  String get language;
  @override
  String get name;
  @override
  String get englishName;
  @override
  String get format;
  @override
  String get type;
  @override
  String get direction;
  @override
  @JsonKey(ignore: true)
  _$$_QuranEditionCopyWith<_$_QuranEdition> get copyWith =>
      throw _privateConstructorUsedError;
}
