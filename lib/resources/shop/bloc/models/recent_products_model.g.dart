// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecentProducts _$$_RecentProductsFromJson(Map<String, dynamic> json) =>
    _$_RecentProducts(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Results.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RecentProductsToJson(_$_RecentProducts instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Results _$$_ResultsFromJson(Map<String, dynamic> json) => _$_Results(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => RecentAddedProducts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultsToJson(_$_Results instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$_RecentAddedProducts _$$_RecentAddedProductsFromJson(
        Map<String, dynamic> json) =>
    _$_RecentAddedProducts(
      id: json['_id'] as String?,
      titles: json['title'] as String?,
      brand: json['brand'] as String?,
      description: json['description'] as String?,
      otherInfo: json['otherInfo'] as String?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      subcategory: json['subcategory'] == null
          ? null
          : SubCategory.fromJson(json['subcategory'] as Map<String, dynamic>),
      actualPrice: json['actualPrice'] as int?,
      discountPrice: json['discountPrice'] as int?,
      discount: json['discount'] as int?,
      colors: (json['colors'] as List<dynamic>?)
          ?.map((e) => Colors.fromJson(e as Map<String, dynamic>))
          .toList(),
      size: (json['size'] as List<dynamic>?)
          ?.map((e) => Size.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$_RecentAddedProductsToJson(
        _$_RecentAddedProducts instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.titles,
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

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category();

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{};

_$_SubCategory _$$_SubCategoryFromJson(Map<String, dynamic> json) =>
    _$_SubCategory();

Map<String, dynamic> _$$_SubCategoryToJson(_$_SubCategory instance) =>
    <String, dynamic>{};

_$_Colors _$$_ColorsFromJson(Map<String, dynamic> json) => _$_Colors(
      text: json['text'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ColorsToJson(_$_Colors instance) => <String, dynamic>{
      'text': instance.text,
      'images': instance.images,
    };

_$_Size _$$_SizeFromJson(Map<String, dynamic> json) => _$_Size(
      value: json['value'] as String?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$$_SizeToJson(_$_Size instance) => <String, dynamic>{
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
