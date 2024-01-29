// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banners_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BanersModelImpl _$$BanersModelImplFromJson(Map<String, dynamic> json) =>
    _$BanersModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : BannerResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BanersModelImplToJson(_$BanersModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$BannerResultImpl _$$BannerResultImplFromJson(Map<String, dynamic> json) =>
    _$BannerResultImpl(
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => Banners.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BannerResultImplToJson(_$BannerResultImpl instance) =>
    <String, dynamic>{
      'banners': instance.banners,
    };

_$BannersImpl _$$BannersImplFromJson(Map<String, dynamic> json) =>
    _$BannersImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      image: json['image'] as String?,
      url: json['url'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$BannersImplToJson(_$BannersImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'image': instance.image,
      'url': instance.url,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
