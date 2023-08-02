// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dua_subcategory_by_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DuaSubcategoryModel _$$_DuaSubcategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_DuaSubcategoryModel(
      status: json['status'] as int,
      message: json['message'] as String,
      error: json['error'] as String,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DuaSubcategoryModelToJson(
        _$_DuaSubcategoryModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      duaSubCategory: (json['duaSubCategory'] as List<dynamic>?)
          ?.map((e) => DuaSubCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'duaSubCategory': instance.duaSubCategory,
    };

_$_DuaSubCategory _$$_DuaSubCategoryFromJson(Map<String, dynamic> json) =>
    _$_DuaSubCategory(
      id: json['_id'] as String?,
      categoryId: json['categoryId'] as String?,
      subCategory: json['subCategory'] as String?,
      count: json['count'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_DuaSubCategoryToJson(_$_DuaSubCategory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'subCategory': instance.subCategory,
      'count': instance.count,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
