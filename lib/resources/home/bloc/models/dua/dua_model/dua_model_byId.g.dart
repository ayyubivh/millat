// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dua_model_byId.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DuaModelByIdImpl _$$DuaModelByIdImplFromJson(Map<String, dynamic> json) =>
    _$DuaModelByIdImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DuaModelByIdImplToJson(_$DuaModelByIdImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      dua: json['dua'] == null
          ? null
          : Dua.fromJson(json['dua'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'dua': instance.dua,
    };

_$DuaImpl _$$DuaImplFromJson(Map<String, dynamic> json) => _$DuaImpl(
      id: json['_id'] as String,
      categoryId: json['categoryId'] as String,
      subCategoryId:
          SubCategoryId.fromJson(json['subCategoryId'] as Map<String, dynamic>),
      content: json['content'] as String,
      resource: json['resource'] as String,
      translations: (json['translate'] as List<dynamic>)
          .map((e) => Translation.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$DuaImplToJson(_$DuaImpl instance) => <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'subCategoryId': instance.subCategoryId,
      'content': instance.content,
      'resource': instance.resource,
      'translate': instance.translations,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$SubCategoryIdImpl _$$SubCategoryIdImplFromJson(Map<String, dynamic> json) =>
    _$SubCategoryIdImpl(
      id: json['_id'] as String,
      category: CategoryId.fromJson(json['categoryId'] as Map<String, dynamic>),
      subCategoryName: json['subCategory'] as String,
      count: json['count'] as int,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$SubCategoryIdImplToJson(_$SubCategoryIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.category,
      'subCategory': instance.subCategoryName,
      'count': instance.count,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$CategoryIdImpl _$$CategoryIdImplFromJson(Map<String, dynamic> json) =>
    _$CategoryIdImpl(
      id: json['_id'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$CategoryIdImplToJson(_$CategoryIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'category': instance.category,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$TranslationImpl _$$TranslationImplFromJson(Map<String, dynamic> json) =>
    _$TranslationImpl(
      language: json['language'] as String,
      content: json['content'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$TranslationImplToJson(_$TranslationImpl instance) =>
    <String, dynamic>{
      'language': instance.language,
      'content': instance.content,
      '_id': instance.id,
    };
