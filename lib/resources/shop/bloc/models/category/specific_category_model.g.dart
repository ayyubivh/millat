// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpecificCategoryModel _$$_SpecificCategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_SpecificCategoryModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SpecificCategoryModelToJson(
        _$_SpecificCategoryModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
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

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'bigBannerImage': instance.bigBannerImage,
      'id': instance.id,
      'slug': instance.slug,
      'sliderImage': instance.sliderImage,
      'smallBannerImage': instance.smallBannerImage,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_BigBannerImage _$$_BigBannerImageFromJson(Map<String, dynamic> json) =>
    _$_BigBannerImage(
      imageUrl: json['imageUrl'] as String?,
      url: json['url'] as String?,
      discount: json['discount'] as String?,
    );

Map<String, dynamic> _$$_BigBannerImageToJson(_$_BigBannerImage instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'url': instance.url,
      'discount': instance.discount,
    };

_$_SmallBannerImage _$$_SmallBannerImageFromJson(Map<String, dynamic> json) =>
    _$_SmallBannerImage(
      imageUrl: json['imageUrl'] as String?,
      url: json['url'] as String?,
      discount: json['discount'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_SmallBannerImageToJson(_$_SmallBannerImage instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'url': instance.url,
      'discount': instance.discount,
      'id': instance.id,
    };
