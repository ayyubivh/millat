// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dua_model_byId.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DuaModelById _$$_DuaModelByIdFromJson(Map<String, dynamic> json) =>
    _$_DuaModelById(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DuaModelByIdToJson(_$_DuaModelById instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      dua: json['dua'] == null
          ? null
          : Dua.fromJson(json['dua'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'dua': instance.dua,
    };

_$_Dua _$$_DuaFromJson(Map<String, dynamic> json) => _$_Dua(
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

Map<String, dynamic> _$$_DuaToJson(_$_Dua instance) => <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'subCategoryId': instance.subCategoryId,
      'content': instance.content,
      'resource': instance.resource,
      'translate': instance.translations,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_SubCategoryId _$$_SubCategoryIdFromJson(Map<String, dynamic> json) =>
    _$_SubCategoryId(
      id: json['_id'] as String,
      category: CategoryId.fromJson(json['categoryId'] as Map<String, dynamic>),
      subCategoryName: json['subCategory'] as String,
      count: json['count'] as int,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_SubCategoryIdToJson(_$_SubCategoryId instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.category,
      'subCategory': instance.subCategoryName,
      'count': instance.count,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_CategoryId _$$_CategoryIdFromJson(Map<String, dynamic> json) =>
    _$_CategoryId(
      id: json['_id'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_CategoryIdToJson(_$_CategoryId instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'category': instance.category,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_Translation _$$_TranslationFromJson(Map<String, dynamic> json) =>
    _$_Translation(
      language: json['language'] as String,
      content: json['content'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$_TranslationToJson(_$_Translation instance) =>
    <String, dynamic>{
      'language': instance.language,
      'content': instance.content,
      '_id': instance.id,
    };
