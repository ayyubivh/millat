// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dua_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DuaModel _$$_DuaModelFromJson(Map<String, dynamic> json) => _$_DuaModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DuaModelToJson(_$_DuaModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      duas: (json['duaes'] as List<dynamic>?)
          ?.map((e) => Duae.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'duaes': instance.duas,
    };

_$_Duae _$$_DuaeFromJson(Map<String, dynamic> json) => _$_Duae(
      id: json['_id'] as String?,
      subCategory: json['subCategoryId'] == null
          ? null
          : SubCategory.fromJson(json['subCategoryId'] as Map<String, dynamic>),
      content: json['content'] as String?,
      audio: json['audio'] as String?,
      resource: json['resource'] as String?,
      translate: (json['translate'] as List<dynamic>?)
          ?.map((e) => Translate.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_DuaeToJson(_$_Duae instance) => <String, dynamic>{
      '_id': instance.id,
      'subCategoryId': instance.subCategory,
      'content': instance.content,
      'audio': instance.audio,
      'resource': instance.resource,
      'translate': instance.translate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_SubCategory _$$_SubCategoryFromJson(Map<String, dynamic> json) =>
    _$_SubCategory(
      id: json['_id'] as String?,
      categoryId: json['categoryId'] == null
          ? null
          : CategoryId.fromJson(json['categoryId'] as Map<String, dynamic>),
      subCategory: json['subCategory'] as String?,
      count: json['count'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_SubCategoryToJson(_$_SubCategory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'subCategory': instance.subCategory,
      'count': instance.count,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_CategoryId _$$_CategoryIdFromJson(Map<String, dynamic> json) =>
    _$_CategoryId(
      id: json['_id'] as String?,
      category: json['category'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_CategoryIdToJson(_$_CategoryId instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'category': instance.category,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_Translate _$$_TranslateFromJson(Map<String, dynamic> json) => _$_Translate(
      language: json['language'] as String?,
      content: json['content'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$_TranslateToJson(_$_Translate instance) =>
    <String, dynamic>{
      'language': instance.language,
      'content': instance.content,
      '_id': instance.id,
    };
