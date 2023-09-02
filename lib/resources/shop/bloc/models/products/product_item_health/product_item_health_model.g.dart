// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_item_health_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductItemsSubCategoryHealthModel
    _$$_ProductItemsSubCategoryHealthModelFromJson(Map<String, dynamic> json) =>
        _$_ProductItemsSubCategoryHealthModel(
          status: json['status'] as int?,
          message: json['message'] as String?,
          error: json['error'] as String?,
          result: json['result'] == null
              ? null
              : CategoryResult.fromJson(json['result'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_ProductItemsSubCategoryHealthModelToJson(
        _$_ProductItemsSubCategoryHealthModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_CategoryResult _$$_CategoryResultFromJson(Map<String, dynamic> json) =>
    _$_CategoryResult(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CategoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryResultToJson(_$_CategoryResult instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$_CategoryItem _$$_CategoryItemFromJson(Map<String, dynamic> json) =>
    _$_CategoryItem(
      id: json['_id'] as String?,
      categoryId: json['categoryId'] == null
          ? null
          : CategoryInfo.fromJson(json['categoryId'] as Map<String, dynamic>),
      subCategoryId: json['subCategoryId'] == null
          ? null
          : CategoryInfo.fromJson(
              json['subCategoryId'] as Map<String, dynamic>),
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_CategoryItemToJson(_$_CategoryItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'subCategoryId': instance.subCategoryId,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_CategoryInfo _$$_CategoryInfoFromJson(Map<String, dynamic> json) =>
    _$_CategoryInfo(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_CategoryInfoToJson(_$_CategoryInfo instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
