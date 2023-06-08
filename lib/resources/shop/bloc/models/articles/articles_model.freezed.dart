// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) {
  return _ArticleModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleModelCopyWith<ArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleModelCopyWith<$Res> {
  factory $ArticleModelCopyWith(
          ArticleModel value, $Res Function(ArticleModel) then) =
      _$ArticleModelCopyWithImpl<$Res, ArticleModel>;
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$ArticleModelCopyWithImpl<$Res, $Val extends ArticleModel>
    implements $ArticleModelCopyWith<$Res> {
  _$ArticleModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_ArticleModelCopyWith<$Res>
    implements $ArticleModelCopyWith<$Res> {
  factory _$$_ArticleModelCopyWith(
          _$_ArticleModel value, $Res Function(_$_ArticleModel) then) =
      __$$_ArticleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_ArticleModelCopyWithImpl<$Res>
    extends _$ArticleModelCopyWithImpl<$Res, _$_ArticleModel>
    implements _$$_ArticleModelCopyWith<$Res> {
  __$$_ArticleModelCopyWithImpl(
      _$_ArticleModel _value, $Res Function(_$_ArticleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_ArticleModel(
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
class _$_ArticleModel implements _ArticleModel {
  const _$_ArticleModel(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$_ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleModelFromJson(json);

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
    return 'ArticleModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleModel &&
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
  _$$_ArticleModelCopyWith<_$_ArticleModel> get copyWith =>
      __$$_ArticleModelCopyWithImpl<_$_ArticleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleModelToJson(
      this,
    );
  }
}

abstract class _ArticleModel implements ArticleModel {
  const factory _ArticleModel(
      {required final int? status,
      required final String? message,
      required final String? error,
      required final Result? result}) = _$_ArticleModel;

  factory _ArticleModel.fromJson(Map<String, dynamic> json) =
      _$_ArticleModel.fromJson;

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
  _$$_ArticleModelCopyWith<_$_ArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  List<Article>? get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({List<Article>? articles});
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
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      articles: freezed == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Article>? articles});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = freezed,
  }) {
    return _then(_$_Result(
      articles: freezed == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result({required final List<Article>? articles})
      : _articles = articles;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  final List<Article>? _articles;
  @override
  List<Article>? get articles {
    final value = _articles;
    if (value == null) return null;
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result({required final List<Article>? articles}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  List<Article>? get articles;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? title,
      String? slug,
      String? content,
      String? brand,
      Product? product,
      String? image,
      String? date,
      String? createdAt,
      String? updatedAt});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? slug = freezed,
    Object? content = freezed,
    Object? brand = freezed,
    Object? product = freezed,
    Object? image = freezed,
    Object? date = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$_ArticleCopyWith(
          _$_Article value, $Res Function(_$_Article) then) =
      __$$_ArticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? title,
      String? slug,
      String? content,
      String? brand,
      Product? product,
      String? image,
      String? date,
      String? createdAt,
      String? updatedAt});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_ArticleCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$_Article>
    implements _$$_ArticleCopyWith<$Res> {
  __$$_ArticleCopyWithImpl(_$_Article _value, $Res Function(_$_Article) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? slug = freezed,
    Object? content = freezed,
    Object? brand = freezed,
    Object? product = freezed,
    Object? image = freezed,
    Object? date = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Article(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Article implements _Article {
  const _$_Article(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.slug,
      required this.content,
      required this.brand,
      required this.product,
      required this.image,
      required this.date,
      required this.createdAt,
      required this.updatedAt});

  factory _$_Article.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String? title;
  @override
  final String? slug;
  @override
  final String? content;
  @override
  final String? brand;
  @override
  final Product? product;
  @override
  final String? image;
  @override
  final String? date;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Article(id: $id, title: $title, slug: $slug, content: $content, brand: $brand, product: $product, image: $image, date: $date, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Article &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, slug, content, brand,
      product, image, date, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleCopyWith<_$_Article> get copyWith =>
      __$$_ArticleCopyWithImpl<_$_Article>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleToJson(
      this,
    );
  }
}

abstract class _Article implements Article {
  const factory _Article(
      {@JsonKey(name: '_id') required final String id,
      required final String? title,
      required final String? slug,
      required final String? content,
      required final String? brand,
      required final Product? product,
      required final String? image,
      required final String? date,
      required final String? createdAt,
      required final String? updatedAt}) = _$_Article;

  factory _Article.fromJson(Map<String, dynamic> json) = _$_Article.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String? get title;
  @override
  String? get slug;
  @override
  String? get content;
  @override
  String? get brand;
  @override
  Product? get product;
  @override
  String? get image;
  @override
  String? get date;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleCopyWith<_$_Article> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get otherInfo => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get subcategory => throw _privateConstructorUsedError;
  int? get actualPrice => throw _privateConstructorUsedError;
  int? get discountPrice => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  List<Color>? get colors => throw _privateConstructorUsedError;
  List<Size>? get size => throw _privateConstructorUsedError;
  List<Meta>? get meta => throw _privateConstructorUsedError;
  List<String>? get keywords => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? title,
      String? brand,
      String? description,
      String? otherInfo,
      String? category,
      String? subcategory,
      int? actualPrice,
      int? discountPrice,
      int? discount,
      List<Color>? colors,
      List<Size>? size,
      List<Meta>? meta,
      List<String>? keywords,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? brand = freezed,
    Object? description = freezed,
    Object? otherInfo = freezed,
    Object? category = freezed,
    Object? subcategory = freezed,
    Object? actualPrice = freezed,
    Object? discountPrice = freezed,
    Object? discount = freezed,
    Object? colors = freezed,
    Object? size = freezed,
    Object? meta = freezed,
    Object? keywords = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as String?,
      actualPrice: freezed == actualPrice
          ? _value.actualPrice
          : actualPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPrice: freezed == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<Color>?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as List<Size>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<Meta>?,
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? title,
      String? brand,
      String? description,
      String? otherInfo,
      String? category,
      String? subcategory,
      int? actualPrice,
      int? discountPrice,
      int? discount,
      List<Color>? colors,
      List<Size>? size,
      List<Meta>? meta,
      List<String>? keywords,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? brand = freezed,
    Object? description = freezed,
    Object? otherInfo = freezed,
    Object? category = freezed,
    Object? subcategory = freezed,
    Object? actualPrice = freezed,
    Object? discountPrice = freezed,
    Object? discount = freezed,
    Object? colors = freezed,
    Object? size = freezed,
    Object? meta = freezed,
    Object? keywords = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Product(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as String?,
      actualPrice: freezed == actualPrice
          ? _value.actualPrice
          : actualPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPrice: freezed == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      colors: freezed == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<Color>?,
      size: freezed == size
          ? _value._size
          : size // ignore: cast_nullable_to_non_nullable
              as List<Size>?,
      meta: freezed == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<Meta>?,
      keywords: freezed == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.brand,
      required this.description,
      required this.otherInfo,
      required this.category,
      required this.subcategory,
      required this.actualPrice,
      required this.discountPrice,
      required this.discount,
      required final List<Color>? colors,
      required final List<Size>? size,
      required final List<Meta>? meta,
      required final List<String>? keywords,
      required this.createdAt,
      required this.updatedAt})
      : _colors = colors,
        _size = size,
        _meta = meta,
        _keywords = keywords;

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String? title;
  @override
  final String? brand;
  @override
  final String? description;
  @override
  final String? otherInfo;
  @override
  final String? category;
  @override
  final String? subcategory;
  @override
  final int? actualPrice;
  @override
  final int? discountPrice;
  @override
  final int? discount;
  final List<Color>? _colors;
  @override
  List<Color>? get colors {
    final value = _colors;
    if (value == null) return null;
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Size>? _size;
  @override
  List<Size>? get size {
    final value = _size;
    if (value == null) return null;
    if (_size is EqualUnmodifiableListView) return _size;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Meta>? _meta;
  @override
  List<Meta>? get meta {
    final value = _meta;
    if (value == null) return null;
    if (_meta is EqualUnmodifiableListView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _keywords;
  @override
  List<String>? get keywords {
    final value = _keywords;
    if (value == null) return null;
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, brand: $brand, description: $description, otherInfo: $otherInfo, category: $category, subcategory: $subcategory, actualPrice: $actualPrice, discountPrice: $discountPrice, discount: $discount, colors: $colors, size: $size, meta: $meta, keywords: $keywords, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.otherInfo, otherInfo) ||
                other.otherInfo == otherInfo) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subcategory, subcategory) ||
                other.subcategory == subcategory) &&
            (identical(other.actualPrice, actualPrice) ||
                other.actualPrice == actualPrice) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            const DeepCollectionEquality().equals(other._size, _size) &&
            const DeepCollectionEquality().equals(other._meta, _meta) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
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
      brand,
      description,
      otherInfo,
      category,
      subcategory,
      actualPrice,
      discountPrice,
      discount,
      const DeepCollectionEquality().hash(_colors),
      const DeepCollectionEquality().hash(_size),
      const DeepCollectionEquality().hash(_meta),
      const DeepCollectionEquality().hash(_keywords),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@JsonKey(name: '_id') required final String id,
      required final String? title,
      required final String? brand,
      required final String? description,
      required final String? otherInfo,
      required final String? category,
      required final String? subcategory,
      required final int? actualPrice,
      required final int? discountPrice,
      required final int? discount,
      required final List<Color>? colors,
      required final List<Size>? size,
      required final List<Meta>? meta,
      required final List<String>? keywords,
      required final String? createdAt,
      required final String? updatedAt}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String? get title;
  @override
  String? get brand;
  @override
  String? get description;
  @override
  String? get otherInfo;
  @override
  String? get category;
  @override
  String? get subcategory;
  @override
  int? get actualPrice;
  @override
  int? get discountPrice;
  @override
  int? get discount;
  @override
  List<Color>? get colors;
  @override
  List<Size>? get size;
  @override
  List<Meta>? get meta;
  @override
  List<String>? get keywords;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

Color _$ColorFromJson(Map<String, dynamic> json) {
  return _Color.fromJson(json);
}

/// @nodoc
mixin _$Color {
  String? get text => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorCopyWith<Color> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorCopyWith<$Res> {
  factory $ColorCopyWith(Color value, $Res Function(Color) then) =
      _$ColorCopyWithImpl<$Res, Color>;
  @useResult
  $Res call({String? text, List<String>? images});
}

/// @nodoc
class _$ColorCopyWithImpl<$Res, $Val extends Color>
    implements $ColorCopyWith<$Res> {
  _$ColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ColorCopyWith<$Res> implements $ColorCopyWith<$Res> {
  factory _$$_ColorCopyWith(_$_Color value, $Res Function(_$_Color) then) =
      __$$_ColorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, List<String>? images});
}

/// @nodoc
class __$$_ColorCopyWithImpl<$Res> extends _$ColorCopyWithImpl<$Res, _$_Color>
    implements _$$_ColorCopyWith<$Res> {
  __$$_ColorCopyWithImpl(_$_Color _value, $Res Function(_$_Color) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_Color(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Color implements _Color {
  const _$_Color({required this.text, required final List<String>? images})
      : _images = images;

  factory _$_Color.fromJson(Map<String, dynamic> json) =>
      _$$_ColorFromJson(json);

  @override
  final String? text;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Color(text: $text, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Color &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, text, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ColorCopyWith<_$_Color> get copyWith =>
      __$$_ColorCopyWithImpl<_$_Color>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ColorToJson(
      this,
    );
  }
}

abstract class _Color implements Color {
  const factory _Color(
      {required final String? text,
      required final List<String>? images}) = _$_Color;

  factory _Color.fromJson(Map<String, dynamic> json) = _$_Color.fromJson;

  @override
  String? get text;
  @override
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$_ColorCopyWith<_$_Color> get copyWith =>
      throw _privateConstructorUsedError;
}

Size _$SizeFromJson(Map<String, dynamic> json) {
  return _Size.fromJson(json);
}

/// @nodoc
mixin _$Size {
  String? get value => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizeCopyWith<Size> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeCopyWith<$Res> {
  factory $SizeCopyWith(Size value, $Res Function(Size) then) =
      _$SizeCopyWithImpl<$Res, Size>;
  @useResult
  $Res call({String? value, int? price});
}

/// @nodoc
class _$SizeCopyWithImpl<$Res, $Val extends Size>
    implements $SizeCopyWith<$Res> {
  _$SizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SizeCopyWith<$Res> implements $SizeCopyWith<$Res> {
  factory _$$_SizeCopyWith(_$_Size value, $Res Function(_$_Size) then) =
      __$$_SizeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value, int? price});
}

/// @nodoc
class __$$_SizeCopyWithImpl<$Res> extends _$SizeCopyWithImpl<$Res, _$_Size>
    implements _$$_SizeCopyWith<$Res> {
  __$$_SizeCopyWithImpl(_$_Size _value, $Res Function(_$_Size) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_Size(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Size implements _Size {
  const _$_Size({required this.value, required this.price});

  factory _$_Size.fromJson(Map<String, dynamic> json) => _$$_SizeFromJson(json);

  @override
  final String? value;
  @override
  final int? price;

  @override
  String toString() {
    return 'Size(value: $value, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Size &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SizeCopyWith<_$_Size> get copyWith =>
      __$$_SizeCopyWithImpl<_$_Size>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SizeToJson(
      this,
    );
  }
}

abstract class _Size implements Size {
  const factory _Size(
      {required final String? value, required final int? price}) = _$_Size;

  factory _Size.fromJson(Map<String, dynamic> json) = _$_Size.fromJson;

  @override
  String? get value;
  @override
  int? get price;
  @override
  @JsonKey(ignore: true)
  _$$_SizeCopyWith<_$_Size> get copyWith => throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  String? get key => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call({String? key, String? value});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$_MetaCopyWith(_$_Meta value, $Res Function(_$_Meta) then) =
      __$$_MetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? key, String? value});
}

/// @nodoc
class __$$_MetaCopyWithImpl<$Res> extends _$MetaCopyWithImpl<$Res, _$_Meta>
    implements _$$_MetaCopyWith<$Res> {
  __$$_MetaCopyWithImpl(_$_Meta _value, $Res Function(_$_Meta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_Meta(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meta implements _Meta {
  const _$_Meta({required this.key, required this.value});

  factory _$_Meta.fromJson(Map<String, dynamic> json) => _$$_MetaFromJson(json);

  @override
  final String? key;
  @override
  final String? value;

  @override
  String toString() {
    return 'Meta(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meta &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaCopyWith<_$_Meta> get copyWith =>
      __$$_MetaCopyWithImpl<_$_Meta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {required final String? key, required final String? value}) = _$_Meta;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$_Meta.fromJson;

  @override
  String? get key;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_MetaCopyWith<_$_Meta> get copyWith => throw _privateConstructorUsedError;
}
