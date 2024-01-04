import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_option_model.freezed.dart';
part 'filter_option_model.g.dart';

@freezed
class FilterOptionModel with _$FilterOptionModel {
  const factory FilterOptionModel({
    int? status,
    String? message,
    String? error,
    Result? result,
  }) = _FilterOptionModel;

  factory FilterOptionModel.fromJson(Map<String, dynamic> json) =>
      _$FilterOptionModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required Category category,
    required List<Subcategory> subcategory,
    required List<Item> itemList,
    List<Brand>? brands,
    required List<String> colors,
    required int maxPrice,
    required int minPrice,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    @JsonKey(name: '_id') String? id,
    String? title,
    String? image,
    String? createdAt,
    String? updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Subcategory with _$Subcategory {
  const factory Subcategory({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'categoryId') String? categoryId,
    String? title,
    String? image,
    String? createdAt,
    String? updatedAt,
    int? tax,
  }) = _Subcategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'categoryId') String? categoryId,
    @JsonKey(name: 'subCategoryId') Subcategory? subCategoryId,
    String? title,
    String? image,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: 'brandId') String? brandId,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Brand with _$Brand {
  const factory Brand({
    String? brandName,
    @JsonKey(name: '_id') String? id,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}
