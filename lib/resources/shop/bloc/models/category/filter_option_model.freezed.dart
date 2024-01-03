// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterOptionModel _$FilterOptionModelFromJson(Map<String, dynamic> json) {
  return _FilterOptionModel.fromJson(json);
}

/// @nodoc
mixin _$FilterOptionModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterOptionModelCopyWith<FilterOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterOptionModelCopyWith<$Res> {
  factory $FilterOptionModelCopyWith(
          FilterOptionModel value, $Res Function(FilterOptionModel) then) =
      _$FilterOptionModelCopyWithImpl<$Res, FilterOptionModel>;
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$FilterOptionModelCopyWithImpl<$Res, $Val extends FilterOptionModel>
    implements $FilterOptionModelCopyWith<$Res> {
  _$FilterOptionModelCopyWithImpl(this._value, this._then);

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
              as Result?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FilterOptionModelImplCopyWith<$Res>
    implements $FilterOptionModelCopyWith<$Res> {
  factory _$$FilterOptionModelImplCopyWith(_$FilterOptionModelImpl value,
          $Res Function(_$FilterOptionModelImpl) then) =
      __$$FilterOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$FilterOptionModelImplCopyWithImpl<$Res>
    extends _$FilterOptionModelCopyWithImpl<$Res, _$FilterOptionModelImpl>
    implements _$$FilterOptionModelImplCopyWith<$Res> {
  __$$FilterOptionModelImplCopyWithImpl(_$FilterOptionModelImpl _value,
      $Res Function(_$FilterOptionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$FilterOptionModelImpl(
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
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterOptionModelImpl implements _FilterOptionModel {
  const _$FilterOptionModelImpl(
      {this.status, this.message, this.error, this.result});

  factory _$FilterOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterOptionModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final Result? result;

  @override
  String toString() {
    return 'FilterOptionModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterOptionModelImpl &&
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
  _$$FilterOptionModelImplCopyWith<_$FilterOptionModelImpl> get copyWith =>
      __$$FilterOptionModelImplCopyWithImpl<_$FilterOptionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterOptionModelImplToJson(
      this,
    );
  }
}

abstract class _FilterOptionModel implements FilterOptionModel {
  const factory _FilterOptionModel(
      {final int? status,
      final String? message,
      final String? error,
      final Result? result}) = _$FilterOptionModelImpl;

  factory _FilterOptionModel.fromJson(Map<String, dynamic> json) =
      _$FilterOptionModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$$FilterOptionModelImplCopyWith<_$FilterOptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ResultImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({required this.data});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final Data data;

  @override
  String toString() {
    return 'Result(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result({required final Data data}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<Brand>? get brand => throw _privateConstructorUsedError;
  List<Subcategory>? get subcategory => throw _privateConstructorUsedError;
  List<Subcategory>? get itemList => throw _privateConstructorUsedError;
  List<String>? get colors => throw _privateConstructorUsedError;
  int? get maxPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {List<Brand>? brand,
      List<Subcategory>? subcategory,
      List<Subcategory>? itemList,
      List<String>? colors,
      int? maxPrice});
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
    Object? brand = freezed,
    Object? subcategory = freezed,
    Object? itemList = freezed,
    Object? colors = freezed,
    Object? maxPrice = freezed,
  }) {
    return _then(_value.copyWith(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as List<Brand>?,
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as List<Subcategory>?,
      itemList: freezed == itemList
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Subcategory>?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Brand>? brand,
      List<Subcategory>? subcategory,
      List<Subcategory>? itemList,
      List<String>? colors,
      int? maxPrice});
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
    Object? brand = freezed,
    Object? subcategory = freezed,
    Object? itemList = freezed,
    Object? colors = freezed,
    Object? maxPrice = freezed,
  }) {
    return _then(_$DataImpl(
      freezed == brand
          ? _value._brand
          : brand // ignore: cast_nullable_to_non_nullable
              as List<Brand>?,
      freezed == subcategory
          ? _value._subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as List<Subcategory>?,
      freezed == itemList
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Subcategory>?,
      freezed == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      final List<Brand>? brand,
      final List<Subcategory>? subcategory,
      final List<Subcategory>? itemList,
      final List<String>? colors,
      this.maxPrice)
      : _brand = brand,
        _subcategory = subcategory,
        _itemList = itemList,
        _colors = colors;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<Brand>? _brand;
  @override
  List<Brand>? get brand {
    final value = _brand;
    if (value == null) return null;
    if (_brand is EqualUnmodifiableListView) return _brand;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Subcategory>? _subcategory;
  @override
  List<Subcategory>? get subcategory {
    final value = _subcategory;
    if (value == null) return null;
    if (_subcategory is EqualUnmodifiableListView) return _subcategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Subcategory>? _itemList;
  @override
  List<Subcategory>? get itemList {
    final value = _itemList;
    if (value == null) return null;
    if (_itemList is EqualUnmodifiableListView) return _itemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _colors;
  @override
  List<String>? get colors {
    final value = _colors;
    if (value == null) return null;
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? maxPrice;

  @override
  String toString() {
    return 'Data(brand: $brand, subcategory: $subcategory, itemList: $itemList, colors: $colors, maxPrice: $maxPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._brand, _brand) &&
            const DeepCollectionEquality()
                .equals(other._subcategory, _subcategory) &&
            const DeepCollectionEquality().equals(other._itemList, _itemList) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_brand),
      const DeepCollectionEquality().hash(_subcategory),
      const DeepCollectionEquality().hash(_itemList),
      const DeepCollectionEquality().hash(_colors),
      maxPrice);

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
      final List<Brand>? brand,
      final List<Subcategory>? subcategory,
      final List<Subcategory>? itemList,
      final List<String>? colors,
      final int? maxPrice) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<Brand>? get brand;
  @override
  List<Subcategory>? get subcategory;
  @override
  List<Subcategory>? get itemList;
  @override
  List<String>? get colors;
  @override
  int? get maxPrice;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  String? get brandName => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res, Brand>;
  @useResult
  $Res call({String? brandName, @JsonKey(name: "_id") String? id});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res, $Val extends Brand>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandName = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandImplCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$BrandImplCopyWith(
          _$BrandImpl value, $Res Function(_$BrandImpl) then) =
      __$$BrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? brandName, @JsonKey(name: "_id") String? id});
}

/// @nodoc
class __$$BrandImplCopyWithImpl<$Res>
    extends _$BrandCopyWithImpl<$Res, _$BrandImpl>
    implements _$$BrandImplCopyWith<$Res> {
  __$$BrandImplCopyWithImpl(
      _$BrandImpl _value, $Res Function(_$BrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandName = freezed,
    Object? id = freezed,
  }) {
    return _then(_$BrandImpl(
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
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
class _$BrandImpl implements _Brand {
  const _$BrandImpl({this.brandName, @JsonKey(name: "_id") this.id});

  factory _$BrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandImplFromJson(json);

  @override
  final String? brandName;
  @override
  @JsonKey(name: "_id")
  final String? id;

  @override
  String toString() {
    return 'Brand(brandName: $brandName, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandImpl &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, brandName, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      __$$BrandImplCopyWithImpl<_$BrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandImplToJson(
      this,
    );
  }
}

abstract class _Brand implements Brand {
  const factory _Brand(
      {final String? brandName,
      @JsonKey(name: "_id") final String? id}) = _$BrandImpl;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$BrandImpl.fromJson;

  @override
  String? get brandName;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Subcategory _$SubcategoryFromJson(Map<String, dynamic> json) {
  return _Subcategory.fromJson(json);
}

/// @nodoc
mixin _$Subcategory {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubcategoryCopyWith<Subcategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubcategoryCopyWith<$Res> {
  factory $SubcategoryCopyWith(
          Subcategory value, $Res Function(Subcategory) then) =
      _$SubcategoryCopyWithImpl<$Res, Subcategory>;
  @useResult
  $Res call({@JsonKey(name: "_id") String? id, String? title});
}

/// @nodoc
class _$SubcategoryCopyWithImpl<$Res, $Val extends Subcategory>
    implements $SubcategoryCopyWith<$Res> {
  _$SubcategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubcategoryImplCopyWith<$Res>
    implements $SubcategoryCopyWith<$Res> {
  factory _$$SubcategoryImplCopyWith(
          _$SubcategoryImpl value, $Res Function(_$SubcategoryImpl) then) =
      __$$SubcategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "_id") String? id, String? title});
}

/// @nodoc
class __$$SubcategoryImplCopyWithImpl<$Res>
    extends _$SubcategoryCopyWithImpl<$Res, _$SubcategoryImpl>
    implements _$$SubcategoryImplCopyWith<$Res> {
  __$$SubcategoryImplCopyWithImpl(
      _$SubcategoryImpl _value, $Res Function(_$SubcategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$SubcategoryImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubcategoryImpl implements _Subcategory {
  const _$SubcategoryImpl(@JsonKey(name: "_id") this.id, this.title);

  factory _$SubcategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubcategoryImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'Subcategory(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubcategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubcategoryImplCopyWith<_$SubcategoryImpl> get copyWith =>
      __$$SubcategoryImplCopyWithImpl<_$SubcategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubcategoryImplToJson(
      this,
    );
  }
}

abstract class _Subcategory implements Subcategory {
  const factory _Subcategory(
          @JsonKey(name: "_id") final String? id, final String? title) =
      _$SubcategoryImpl;

  factory _Subcategory.fromJson(Map<String, dynamic> json) =
      _$SubcategoryImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$SubcategoryImplCopyWith<_$SubcategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
