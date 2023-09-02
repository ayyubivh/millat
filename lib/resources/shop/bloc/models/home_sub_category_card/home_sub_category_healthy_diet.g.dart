// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_sub_category_healthy_diet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopHomeBackgroundCardHealthyDietModel
    _$$_ShopHomeBackgroundCardHealthyDietModelFromJson(
            Map<String, dynamic> json) =>
        _$_ShopHomeBackgroundCardHealthyDietModel(
          status: json['status'] as int,
          message: json['message'] as String,
          error: json['error'] as String,
          result: Result.fromJson(json['result'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_ShopHomeBackgroundCardHealthyDietModelToJson(
        _$_ShopHomeBackgroundCardHealthyDietModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
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
      subCategoryId:
          SubCategory.fromJson(json['subCategoryId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
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

_$_Design _$$_DesignFromJson(Map<String, dynamic> json) => _$_Design(
      image: json['image'] as String,
      bgcolor: json['bgcolor'] as String,
      color: json['color'] as String,
      text: json['text'] as String,
      subText: json['subText'] as String,
    );

Map<String, dynamic> _$$_DesignToJson(_$_Design instance) => <String, dynamic>{
      'image': instance.image,
      'bgcolor': instance.bgcolor,
      'color': instance.color,
      'text': instance.text,
      'subText': instance.subText,
    };

_$_BigBannerImage _$$_BigBannerImageFromJson(Map<String, dynamic> json) =>
    _$_BigBannerImage(
      imageUrl: json['imageUrl'] as String,
      url: json['url'] as String,
      discount: json['discount'] as String,
    );

Map<String, dynamic> _$$_BigBannerImageToJson(_$_BigBannerImage instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'url': instance.url,
      'discount': instance.discount,
    };

_$_SmallBannerImage _$$_SmallBannerImageFromJson(Map<String, dynamic> json) =>
    _$_SmallBannerImage(
      imageUrl: json['imageUrl'] as String,
      url: json['url'] as String,
      discount: json['discount'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$_SmallBannerImageToJson(_$_SmallBannerImage instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'url': instance.url,
      'discount': instance.discount,
      '_id': instance.id,
    };

_$_SubCategory _$$_SubCategoryFromJson(Map<String, dynamic> json) =>
    _$_SubCategory(
      id: json['_id'] as String,
      categoryId: json['categoryId'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_SubCategoryToJson(_$_SubCategory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
