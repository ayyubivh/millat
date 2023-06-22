// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_by_brand_products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopBrandProductModel _$$_ShopBrandProductModelFromJson(
        Map<String, dynamic> json) =>
    _$_ShopBrandProductModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : ResultsofShopBrand.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShopBrandProductModelToJson(
        _$_ShopBrandProductModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_ResultsofShopBrand _$$_ResultsofShopBrandFromJson(
        Map<String, dynamic> json) =>
    _$_ResultsofShopBrand(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => BrandProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultsofShopBrandToJson(
        _$_ResultsofShopBrand instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$_BrandProduct _$$_BrandProductFromJson(Map<String, dynamic> json) =>
    _$_BrandProduct(
      id: json['id'] as String?,
      title: json['title'] as String?,
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
      description: json['description'] as String?,
      otherInfo: json['otherInfo'] as String?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      subcategory: json['subcategory'] == null
          ? null
          : Subcategory.fromJson(json['subcategory'] as Map<String, dynamic>),
      actualPrice: json['actualPrice'] as int?,
      discountPrice: json['discountPrice'] as int?,
      discount: json['discount'] as int?,
      colors: (json['colors'] as List<dynamic>?)
          ?.map((e) => ColorOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      size: (json['size'] as List<dynamic>?)
          ?.map((e) => SizeOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: (json['meta'] as List<dynamic>?)
          ?.map((e) => Meta.fromJson(e as Map<String, dynamic>))
          .toList(),
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_BrandProductToJson(_$_BrandProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'brand': instance.brand,
      'description': instance.description,
      'otherInfo': instance.otherInfo,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'actualPrice': instance.actualPrice,
      'discountPrice': instance.discountPrice,
      'discount': instance.discount,
      'colors': instance.colors,
      'size': instance.size,
      'meta': instance.meta,
      'keywords': instance.keywords,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_Brand _$$_BrandFromJson(Map<String, dynamic> json) => _$_Brand(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_BrandToJson(_$_Brand instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      id: json['id'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

_$_Subcategory _$$_SubcategoryFromJson(Map<String, dynamic> json) =>
    _$_Subcategory(
      id: json['id'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$_SubcategoryToJson(_$_Subcategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

_$_ColorOption _$$_ColorOptionFromJson(Map<String, dynamic> json) =>
    _$_ColorOption(
      text: json['text'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ColorOptionToJson(_$_ColorOption instance) =>
    <String, dynamic>{
      'text': instance.text,
      'images': instance.images,
    };

_$_SizeOption _$$_SizeOptionFromJson(Map<String, dynamic> json) =>
    _$_SizeOption(
      value: json['value'] as String?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$$_SizeOptionToJson(_$_SizeOption instance) =>
    <String, dynamic>{
      'value': instance.value,
      'price': instance.price,
    };

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
