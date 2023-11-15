// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dua_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DuaCategoryModelImpl _$$DuaCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DuaCategoryModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DuaCategoryModelImplToJson(
        _$DuaCategoryModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      duaCategory: (json['duaCategory'] as List<dynamic>)
          .map((e) => DuaCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'duaCategory': instance.duaCategory,
    };

_$DuaCategoryImpl _$$DuaCategoryImplFromJson(Map<String, dynamic> json) =>
    _$DuaCategoryImpl(
      id: json['_id'] as String?,
      category: json['category'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$DuaCategoryImplToJson(_$DuaCategoryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'category': instance.category,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
