// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_item_women_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductItemsSubCategoryWomenModelImpl
    _$$ProductItemsSubCategoryWomenModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ProductItemsSubCategoryWomenModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          error: json['error'] as String?,
          result: json['result'] == null
              ? null
              : Result.fromJson(json['result'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ProductItemsSubCategoryWomenModelImplToJson(
        _$ProductItemsSubCategoryWomenModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      data: json['data'] == null
          ? null
          : ItemData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ItemDataImpl _$$ItemDataImplFromJson(Map<String, dynamic> json) =>
    _$ItemDataImpl(
      id: json['_id'] as String?,
      slug: json['slug'] as String?,
      createdAt: json['createdAt'] as String?,
      itemList: (json['itemList'] as List<dynamic>?)
          ?.map((e) => ItemList.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$ItemDataImplToJson(_$ItemDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'slug': instance.slug,
      'createdAt': instance.createdAt,
      'itemList': instance.itemList,
      'updatedAt': instance.updatedAt,
    };

_$ItemListImpl _$$ItemListImplFromJson(Map<String, dynamic> json) =>
    _$ItemListImpl(
      id: json['_id'] as String?,
      categoryId: json['categoryId'] == null
          ? null
          : CategoryId.fromJson(json['categoryId'] as Map<String, dynamic>),
      subCategoryId: json['subCategoryId'] == null
          ? null
          : SubCategoryId.fromJson(
              json['subCategoryId'] as Map<String, dynamic>),
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      brandId: json['brandId'] as String?,
    );

Map<String, dynamic> _$$ItemListImplToJson(_$ItemListImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'subCategoryId': instance.subCategoryId,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'brandId': instance.brandId,
    };

_$CategoryIdImpl _$$CategoryIdImplFromJson(Map<String, dynamic> json) =>
    _$CategoryIdImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$CategoryIdImplToJson(_$CategoryIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$SubCategoryIdImpl _$$SubCategoryIdImplFromJson(Map<String, dynamic> json) =>
    _$SubCategoryIdImpl(
      id: json['_id'] as String?,
      categoryId: json['categoryId'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$SubCategoryIdImplToJson(_$SubCategoryIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
