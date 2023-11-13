// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dua_subcategory_by_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DuaSubcategoryModelImpl _$$DuaSubcategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DuaSubcategoryModelImpl(
      status: json['status'] as int,
      message: json['message'] as String,
      error: json['error'] as String,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DuaSubcategoryModelImplToJson(
        _$DuaSubcategoryModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      duaSubCategory: (json['duaSubCategory'] as List<dynamic>?)
          ?.map((e) => DuaSubCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'duaSubCategory': instance.duaSubCategory,
    };

_$DuaSubCategoryImpl _$$DuaSubCategoryImplFromJson(Map<String, dynamic> json) =>
    _$DuaSubCategoryImpl(
      id: json['_id'] as String?,
      categoryId: json['categoryId'] as String?,
      subCategory: json['subCategory'] as String?,
      count: json['count'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$DuaSubCategoryImplToJson(
        _$DuaSubCategoryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'subCategory': instance.subCategory,
      'count': instance.count,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
