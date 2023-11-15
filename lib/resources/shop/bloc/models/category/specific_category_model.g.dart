// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecificCategoryModelImpl _$$SpecificCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecificCategoryModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpecificCategoryModelImplToJson(
        _$SpecificCategoryModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      bigBannerImage: json['bigBannerImage'] == null
          ? null
          : BigBannerImage.fromJson(
              json['bigBannerImage'] as Map<String, dynamic>),
      id: json['id'] as String?,
      slug: json['slug'] as String?,
      sliderImage: (json['sliderImage'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      smallBannerImage: (json['smallBannerImage'] as List<dynamic>?)
          ?.map((e) => SmallBannerImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'bigBannerImage': instance.bigBannerImage,
      'id': instance.id,
      'slug': instance.slug,
      'sliderImage': instance.sliderImage,
      'smallBannerImage': instance.smallBannerImage,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$BigBannerImageImpl _$$BigBannerImageImplFromJson(Map<String, dynamic> json) =>
    _$BigBannerImageImpl(
      imageUrl: json['imageUrl'] as String?,
      url: json['url'] as String?,
      discount: json['discount'] as String?,
    );

Map<String, dynamic> _$$BigBannerImageImplToJson(
        _$BigBannerImageImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'url': instance.url,
      'discount': instance.discount,
    };

_$SmallBannerImageImpl _$$SmallBannerImageImplFromJson(
        Map<String, dynamic> json) =>
    _$SmallBannerImageImpl(
      imageUrl: json['imageUrl'] as String?,
      url: json['url'] as String?,
      discount: json['discount'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$SmallBannerImageImplToJson(
        _$SmallBannerImageImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'url': instance.url,
      'discount': instance.discount,
      'id': instance.id,
    };
