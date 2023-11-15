// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_sub_category_healthy_diet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopHomeBackgroundCardHealthyDietModelImpl
    _$$ShopHomeBackgroundCardHealthyDietModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ShopHomeBackgroundCardHealthyDietModelImpl(
          status: json['status'] as int,
          message: json['message'] as String,
          error: json['error'] as String,
          result: Result.fromJson(json['result'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ShopHomeBackgroundCardHealthyDietModelImplToJson(
        _$ShopHomeBackgroundCardHealthyDietModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      design: Design.fromJson(json['design'] as Map<String, dynamic>),
      bigBannerImage: BigBannerImage.fromJson(
          json['bigBannerImage'] as Map<String, dynamic>),
      id: json['_id'] as String,
      sliderImage: (json['sliderImage'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      smallBannerImage: (json['smallBannerImage'] as List<dynamic>)
          .map((e) => SmallBannerImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      slug: json['slug'] as String,
      subCategoryId: json['subCategoryId'] == null
          ? null
          : SubCategory.fromJson(json['subCategoryId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'design': instance.design,
      'bigBannerImage': instance.bigBannerImage,
      '_id': instance.id,
      'sliderImage': instance.sliderImage,
      'smallBannerImage': instance.smallBannerImage,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'slug': instance.slug,
      'subCategoryId': instance.subCategoryId,
    };

_$DesignImpl _$$DesignImplFromJson(Map<String, dynamic> json) => _$DesignImpl(
      image: json['image'] as String?,
      bgcolor: json['bgcolor'] as String?,
      color: json['color'] as String?,
      text: json['text'] as String?,
      subText: json['subText'] as String?,
    );

Map<String, dynamic> _$$DesignImplToJson(_$DesignImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'bgcolor': instance.bgcolor,
      'color': instance.color,
      'text': instance.text,
      'subText': instance.subText,
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
      imageUrl: json['imageUrl'] as String,
      url: json['url'] as String,
      discount: json['discount'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$SmallBannerImageImplToJson(
        _$SmallBannerImageImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'url': instance.url,
      'discount': instance.discount,
      '_id': instance.id,
    };

_$SubCategoryImpl _$$SubCategoryImplFromJson(Map<String, dynamic> json) =>
    _$SubCategoryImpl(
      id: json['_id'] as String,
      categoryId: json['categoryId'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$SubCategoryImplToJson(_$SubCategoryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
