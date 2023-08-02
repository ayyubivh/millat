// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dua_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DuaCategoryModel _$$_DuaCategoryModelFromJson(Map<String, dynamic> json) =>
    _$_DuaCategoryModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DuaCategoryModelToJson(_$_DuaCategoryModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      duaCategory: (json['duaCategory'] as List<dynamic>)
          .map((e) => DuaCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'duaCategory': instance.duaCategory,
    };

_$_DuaCategory _$$_DuaCategoryFromJson(Map<String, dynamic> json) =>
    _$_DuaCategory(
      id: json['_id'] as String?,
      category: json['category'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_DuaCategoryToJson(_$_DuaCategory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'category': instance.category,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
