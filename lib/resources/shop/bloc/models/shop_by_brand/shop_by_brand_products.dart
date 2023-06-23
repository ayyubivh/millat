import 'package:freezed_annotation/freezed_annotation.dart';
part 'shop_by_brand_products.freezed.dart';
part 'shop_by_brand_products.g.dart';

@freezed
class ShopBrandProductModel with _$ShopBrandProductModel {
  const factory ShopBrandProductModel({
    int? status,
    String? message,
    String? error,
    ResultsofShopBrand? result,
  }) = _ShopBrandProductModel;

  factory ShopBrandProductModel.fromJson(Map<String, dynamic> json) =>
      _$ShopBrandProductModelFromJson(json);
}

@freezed
class ResultsofShopBrand with _$ResultsofShopBrand {
  const factory ResultsofShopBrand({
    List<BrandProduct>? products,
  }) = _ResultsofShopBrand;

  factory ResultsofShopBrand.fromJson(Map<String, dynamic> json) =>
      _$ResultsofShopBrandFromJson(json);
}

@freezed
class BrandProduct with _$BrandProduct {
  const factory BrandProduct({
    String? id,
    String? title,
    Brand? brand,
    String? description,
    String? otherInfo,
    Category? category,
    Subcategory? subcategory,
    int? actualPrice,
    int? discountPrice,
    int? discount,
    List<ColorOption>? colors,
    List<SizeOption>? size,
    List<Meta>? meta,
    List<String>? keywords,
    String? createdAt,
    String? updatedAt,
  }) = _BrandProduct;

  factory BrandProduct.fromJson(Map<String, dynamic> json) =>
      _$BrandProductFromJson(json);
}

@freezed
class Brand with _$Brand {
  const factory Brand({
    String? id,
    String? name,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    String? id,
    String? title,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Subcategory with _$Subcategory {
  const factory Subcategory({
    String? id,
    String? title,
  }) = _Subcategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
}

@freezed
class ColorOption with _$ColorOption {
  const factory ColorOption({
    String? text,
    List<String>? images,
  }) = _ColorOption;

  factory ColorOption.fromJson(Map<String, dynamic> json) =>
      _$ColorOptionFromJson(json);
}

@freezed
class SizeOption with _$SizeOption {
  const factory SizeOption({
    String? value,
    int? price,
  }) = _SizeOption;

  factory SizeOption.fromJson(Map<String, dynamic> json) =>
      _$SizeOptionFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    String? key,
    String? value,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
