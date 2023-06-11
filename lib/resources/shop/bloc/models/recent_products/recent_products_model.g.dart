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
      title: json['title'] as String?,
      brand: json['brand'] as String?,
      description: json['description'] as String?,
      otherInfo: json['otherNotes'] as String?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      subcategory: json['subcategory'] == null
          ? null
          : SubCategory.fromJson(json['subcategory'] as Map<String, dynamic>),
      actualPrice: json['actualPrice'] as int?,
      discountPrice: json['discountPrice'] as int?,
      discount: json['discount'] as int?,
      colors:
          (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      size: (json['size'] as List<dynamic>?)
          ?.map((e) => Size.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: (json['meta'] as List<dynamic>?)
          ?.map((e) => Meta.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_RecentAddedProductsToJson(
        _$_RecentAddedProducts instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'brand': instance.brand,
      'description': instance.description,
      'otherNotes': instance.otherInfo,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'actualPrice': instance.actualPrice,
      'discountPrice': instance.discountPrice,
      'discount': instance.discount,
      'colors': instance.colors,
      'images': instance.images,
      'size': instance.size,
      'meta': instance.meta,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_SubCategory _$$_SubCategoryFromJson(Map<String, dynamic> json) =>
    _$_SubCategory(
      id: json['_id'] as String?,
      categoryId: json['categoryId'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_SubCategoryToJson(_$_SubCategory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_Size _$$_SizeFromJson(Map<String, dynamic> json) => _$_Size(
      value: json['value'] as String?,
      price: json['price'] as int?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$_SizeToJson(_$_Size instance) => <String, dynamic>{
      'value': instance.value,
      'price': instance.price,
      '_id': instance.id,
    };

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      key: json['key'] as String?,
      value: json['value'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      '_id': instance.id,
    };
