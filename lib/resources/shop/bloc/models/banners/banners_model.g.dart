// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banners_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BanersModel _$$_BanersModelFromJson(Map<String, dynamic> json) =>
    _$_BanersModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : BannerResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BanersModelToJson(_$_BanersModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_BannerResult _$$_BannerResultFromJson(Map<String, dynamic> json) =>
    _$_BannerResult(
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => Banners.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BannerResultToJson(_$_BannerResult instance) =>
    <String, dynamic>{
      'banners': instance.banners,
    };

_$_Banners _$$_BannersFromJson(Map<String, dynamic> json) => _$_Banners(
      id: json['_id'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      image: json['image'] as String,
      url: json['url'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_BannersToJson(_$_Banners instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'image': instance.image,
      'url': instance.url,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
