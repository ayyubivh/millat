// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategories_by_category_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubcategoryByCategoryIdModel _$$_SubcategoryByCategoryIdModelFromJson(
        Map<String, dynamic> json) =>
    _$_SubcategoryByCategoryIdModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : ResultModel.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SubcategoryByCategoryIdModelToJson(
        _$_SubcategoryByCategoryIdModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_ResultModel _$$_ResultModelFromJson(Map<String, dynamic> json) =>
    _$_ResultModel(
      subCategory: (json['subCategory'] as List<dynamic>?)
          ?.map((e) => SubCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultModelToJson(_$_ResultModel instance) =>
    <String, dynamic>{
      'subCategory': instance.subCategory,
    };

_$_SubCategory _$$_SubCategoryFromJson(Map<String, dynamic> json) =>
    _$_SubCategory(
      id: json['id'] as String?,
      categoryId: json['categoryId'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_SubCategoryToJson(_$_SubCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
