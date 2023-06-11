// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? category, String? subCategory)
        fetchFilterProducts,
    required TResult Function() fetchCategories,
    required TResult Function() fetchSubcategories,
    required TResult Function(String value) onSelectFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFilterProducts value) fetchFilterProducts,
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(FetchSubcategories value) fetchSubcategories,
    required TResult Function(OnSelectFilter value) onSelectFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchFilterProductsCopyWith<$Res> {
  factory _$$FetchFilterProductsCopyWith(_$FetchFilterProducts value,
          $Res Function(_$FetchFilterProducts) then) =
      __$$FetchFilterProductsCopyWithImpl<$Res>;
  @useResult
  $Res call({String? category, String? subCategory});
}

/// @nodoc
class __$$FetchFilterProductsCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchFilterProducts>
    implements _$$FetchFilterProductsCopyWith<$Res> {
  __$$FetchFilterProductsCopyWithImpl(
      _$FetchFilterProducts _value, $Res Function(_$FetchFilterProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? subCategory = freezed,
  }) {
    return _then(_$FetchFilterProducts(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchFilterProducts implements FetchFilterProducts {
  const _$FetchFilterProducts(
      {required this.category, required this.subCategory});

  @override
  final String? category;
  @override
  final String? subCategory;

  @override
  String toString() {
    return 'CategoryEvent.fetchFilterProducts(category: $category, subCategory: $subCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFilterProducts &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, subCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFilterProductsCopyWith<_$FetchFilterProducts> get copyWith =>
      __$$FetchFilterProductsCopyWithImpl<_$FetchFilterProducts>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? category, String? subCategory)
        fetchFilterProducts,
    required TResult Function() fetchCategories,
    required TResult Function() fetchSubcategories,
    required TResult Function(String value) onSelectFilter,
  }) {
    return fetchFilterProducts(category, subCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
  }) {
    return fetchFilterProducts?.call(category, subCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    required TResult orElse(),
  }) {
    if (fetchFilterProducts != null) {
      return fetchFilterProducts(category, subCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFilterProducts value) fetchFilterProducts,
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(FetchSubcategories value) fetchSubcategories,
    required TResult Function(OnSelectFilter value) onSelectFilter,
  }) {
    return fetchFilterProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
  }) {
    return fetchFilterProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    required TResult orElse(),
  }) {
    if (fetchFilterProducts != null) {
      return fetchFilterProducts(this);
    }
    return orElse();
  }
}

abstract class FetchFilterProducts implements CategoryEvent {
  const factory FetchFilterProducts(
      {required final String? category,
      required final String? subCategory}) = _$FetchFilterProducts;

  String? get category;
  String? get subCategory;
  @JsonKey(ignore: true)
  _$$FetchFilterProductsCopyWith<_$FetchFilterProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCategoriesCopyWith<$Res> {
  factory _$$FetchCategoriesCopyWith(
          _$FetchCategories value, $Res Function(_$FetchCategories) then) =
      __$$FetchCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCategoriesCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchCategories>
    implements _$$FetchCategoriesCopyWith<$Res> {
  __$$FetchCategoriesCopyWithImpl(
      _$FetchCategories _value, $Res Function(_$FetchCategories) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCategories implements FetchCategories {
  const _$FetchCategories();

  @override
  String toString() {
    return 'CategoryEvent.fetchCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? category, String? subCategory)
        fetchFilterProducts,
    required TResult Function() fetchCategories,
    required TResult Function() fetchSubcategories,
    required TResult Function(String value) onSelectFilter,
  }) {
    return fetchCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
  }) {
    return fetchCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    required TResult orElse(),
  }) {
    if (fetchCategories != null) {
      return fetchCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFilterProducts value) fetchFilterProducts,
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(FetchSubcategories value) fetchSubcategories,
    required TResult Function(OnSelectFilter value) onSelectFilter,
  }) {
    return fetchCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
  }) {
    return fetchCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    required TResult orElse(),
  }) {
    if (fetchCategories != null) {
      return fetchCategories(this);
    }
    return orElse();
  }
}

abstract class FetchCategories implements CategoryEvent {
  const factory FetchCategories() = _$FetchCategories;
}

/// @nodoc
abstract class _$$FetchSubcategoriesCopyWith<$Res> {
  factory _$$FetchSubcategoriesCopyWith(_$FetchSubcategories value,
          $Res Function(_$FetchSubcategories) then) =
      __$$FetchSubcategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSubcategoriesCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchSubcategories>
    implements _$$FetchSubcategoriesCopyWith<$Res> {
  __$$FetchSubcategoriesCopyWithImpl(
      _$FetchSubcategories _value, $Res Function(_$FetchSubcategories) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchSubcategories implements FetchSubcategories {
  const _$FetchSubcategories();

  @override
  String toString() {
    return 'CategoryEvent.fetchSubcategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchSubcategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? category, String? subCategory)
        fetchFilterProducts,
    required TResult Function() fetchCategories,
    required TResult Function() fetchSubcategories,
    required TResult Function(String value) onSelectFilter,
  }) {
    return fetchSubcategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
  }) {
    return fetchSubcategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    required TResult orElse(),
  }) {
    if (fetchSubcategories != null) {
      return fetchSubcategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFilterProducts value) fetchFilterProducts,
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(FetchSubcategories value) fetchSubcategories,
    required TResult Function(OnSelectFilter value) onSelectFilter,
  }) {
    return fetchSubcategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
  }) {
    return fetchSubcategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    required TResult orElse(),
  }) {
    if (fetchSubcategories != null) {
      return fetchSubcategories(this);
    }
    return orElse();
  }
}

abstract class FetchSubcategories implements CategoryEvent {
  const factory FetchSubcategories() = _$FetchSubcategories;
}

/// @nodoc
abstract class _$$OnSelectFilterCopyWith<$Res> {
  factory _$$OnSelectFilterCopyWith(
          _$OnSelectFilter value, $Res Function(_$OnSelectFilter) then) =
      __$$OnSelectFilterCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$OnSelectFilterCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$OnSelectFilter>
    implements _$$OnSelectFilterCopyWith<$Res> {
  __$$OnSelectFilterCopyWithImpl(
      _$OnSelectFilter _value, $Res Function(_$OnSelectFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnSelectFilter(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSelectFilter implements OnSelectFilter {
  const _$OnSelectFilter({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'CategoryEvent.onSelectFilter(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSelectFilter &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSelectFilterCopyWith<_$OnSelectFilter> get copyWith =>
      __$$OnSelectFilterCopyWithImpl<_$OnSelectFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? category, String? subCategory)
        fetchFilterProducts,
    required TResult Function() fetchCategories,
    required TResult Function() fetchSubcategories,
    required TResult Function(String value) onSelectFilter,
  }) {
    return onSelectFilter(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
  }) {
    return onSelectFilter?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    required TResult orElse(),
  }) {
    if (onSelectFilter != null) {
      return onSelectFilter(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFilterProducts value) fetchFilterProducts,
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(FetchSubcategories value) fetchSubcategories,
    required TResult Function(OnSelectFilter value) onSelectFilter,
  }) {
    return onSelectFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
  }) {
    return onSelectFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    required TResult orElse(),
  }) {
    if (onSelectFilter != null) {
      return onSelectFilter(this);
    }
    return orElse();
  }
}

abstract class OnSelectFilter implements CategoryEvent {
  const factory OnSelectFilter({required final String value}) =
      _$OnSelectFilter;

  String get value;
  @JsonKey(ignore: true)
  _$$OnSelectFilterCopyWith<_$OnSelectFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  ProductModel? get product => throw _privateConstructorUsedError;
  bool get productLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  CategoryModel? get category => throw _privateConstructorUsedError;
  bool get categoryLoading => throw _privateConstructorUsedError;
  SubCategoryModel? get subCategory => throw _privateConstructorUsedError;
  bool get subCategoryLoading => throw _privateConstructorUsedError;
  String get selectedFilter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call(
      {ProductModel? product,
      bool productLoading,
      String errorMessage,
      CategoryModel? category,
      bool categoryLoading,
      SubCategoryModel? subCategory,
      bool subCategoryLoading,
      String selectedFilter});

  $ProductModelCopyWith<$Res>? get product;
  $CategoryModelCopyWith<$Res>? get category;
  $SubCategoryModelCopyWith<$Res>? get subCategory;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? productLoading = null,
    Object? errorMessage = null,
    Object? category = freezed,
    Object? categoryLoading = null,
    Object? subCategory = freezed,
    Object? subCategoryLoading = null,
    Object? selectedFilter = null,
  }) {
    return _then(_value.copyWith(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      productLoading: null == productLoading
          ? _value.productLoading
          : productLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      categoryLoading: null == categoryLoading
          ? _value.categoryLoading
          : categoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategoryModel?,
      subCategoryLoading: null == subCategoryLoading
          ? _value.subCategoryLoading
          : subCategoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubCategoryModelCopyWith<$Res>? get subCategory {
    if (_value.subCategory == null) {
      return null;
    }

    return $SubCategoryModelCopyWith<$Res>(_value.subCategory!, (value) {
      return _then(_value.copyWith(subCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CategoryStateCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$_CategoryStateCopyWith(
          _$_CategoryState value, $Res Function(_$_CategoryState) then) =
      __$$_CategoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductModel? product,
      bool productLoading,
      String errorMessage,
      CategoryModel? category,
      bool categoryLoading,
      SubCategoryModel? subCategory,
      bool subCategoryLoading,
      String selectedFilter});

  @override
  $ProductModelCopyWith<$Res>? get product;
  @override
  $CategoryModelCopyWith<$Res>? get category;
  @override
  $SubCategoryModelCopyWith<$Res>? get subCategory;
}

/// @nodoc
class __$$_CategoryStateCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$_CategoryState>
    implements _$$_CategoryStateCopyWith<$Res> {
  __$$_CategoryStateCopyWithImpl(
      _$_CategoryState _value, $Res Function(_$_CategoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? productLoading = null,
    Object? errorMessage = null,
    Object? category = freezed,
    Object? categoryLoading = null,
    Object? subCategory = freezed,
    Object? subCategoryLoading = null,
    Object? selectedFilter = null,
  }) {
    return _then(_$_CategoryState(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      productLoading: null == productLoading
          ? _value.productLoading
          : productLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      categoryLoading: null == categoryLoading
          ? _value.categoryLoading
          : categoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategoryModel?,
      subCategoryLoading: null == subCategoryLoading
          ? _value.subCategoryLoading
          : subCategoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoryState implements _CategoryState {
  const _$_CategoryState(
      {required this.product,
      required this.productLoading,
      required this.errorMessage,
      required this.category,
      required this.categoryLoading,
      required this.subCategory,
      required this.subCategoryLoading,
      required this.selectedFilter});

  @override
  final ProductModel? product;
  @override
  final bool productLoading;
  @override
  final String errorMessage;
  @override
  final CategoryModel? category;
  @override
  final bool categoryLoading;
  @override
  final SubCategoryModel? subCategory;
  @override
  final bool subCategoryLoading;
  @override
  final String selectedFilter;

  @override
  String toString() {
    return 'CategoryState(product: $product, productLoading: $productLoading, errorMessage: $errorMessage, category: $category, categoryLoading: $categoryLoading, subCategory: $subCategory, subCategoryLoading: $subCategoryLoading, selectedFilter: $selectedFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryState &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.productLoading, productLoading) ||
                other.productLoading == productLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.categoryLoading, categoryLoading) ||
                other.categoryLoading == categoryLoading) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.subCategoryLoading, subCategoryLoading) ||
                other.subCategoryLoading == subCategoryLoading) &&
            (identical(other.selectedFilter, selectedFilter) ||
                other.selectedFilter == selectedFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      product,
      productLoading,
      errorMessage,
      category,
      categoryLoading,
      subCategory,
      subCategoryLoading,
      selectedFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      __$$_CategoryStateCopyWithImpl<_$_CategoryState>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
      {required final ProductModel? product,
      required final bool productLoading,
      required final String errorMessage,
      required final CategoryModel? category,
      required final bool categoryLoading,
      required final SubCategoryModel? subCategory,
      required final bool subCategoryLoading,
      required final String selectedFilter}) = _$_CategoryState;

  @override
  ProductModel? get product;
  @override
  bool get productLoading;
  @override
  String get errorMessage;
  @override
  CategoryModel? get category;
  @override
  bool get categoryLoading;
  @override
  SubCategoryModel? get subCategory;
  @override
  bool get subCategoryLoading;
  @override
  String get selectedFilter;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
