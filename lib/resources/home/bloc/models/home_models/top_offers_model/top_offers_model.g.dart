// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_offers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopOffersModelImpl _$$TopOffersModelImplFromJson(Map<String, dynamic> json) =>
    _$TopOffersModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: TopOffersResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopOffersModelImplToJson(
        _$TopOffersModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$TopOffersResultImpl _$$TopOffersResultImplFromJson(
        Map<String, dynamic> json) =>
    _$TopOffersResultImpl(
      banners: (json['banners'] as List<dynamic>)
          .map((e) => BannerItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopOffersResultImplToJson(
        _$TopOffersResultImpl instance) =>
    <String, dynamic>{
      'banners': instance.banners,
    };

_$BannerItemImpl _$$BannerItemImplFromJson(Map<String, dynamic> json) =>
    _$BannerItemImpl(
      id: json['_id'] as String,
      subCategoryId: json['subCategoryId'] == null
          ? null
          : SubCategoryId.fromJson(
              json['subCategoryId'] as Map<String, dynamic>),
      subCategoryName: json['subCategoryName'] as String,
      image: json['image'] as String,
      discount: json['discount'] as int?,
      url: json['url'] as String?,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$BannerItemImplToJson(_$BannerItemImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'subCategoryId': instance.subCategoryId,
      'subCategoryName': instance.subCategoryName,
      'image': instance.image,
      'discount': instance.discount,
      'url': instance.url,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$SubCategoryIdImpl _$$SubCategoryIdImplFromJson(Map<String, dynamic> json) =>
    _$SubCategoryIdImpl(
      id: json['_id'] as String,
      categoryId: json['categoryId'] == null
          ? null
          : CategoryId.fromJson(json['categoryId'] as Map<String, dynamic>),
      title: json['title'] as String,
      image: json['image'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$SubCategoryIdImplToJson(_$SubCategoryIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$CategoryIdImpl _$$CategoryIdImplFromJson(Map<String, dynamic> json) =>
    _$CategoryIdImpl(
      id: json['_id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$CategoryIdImplToJson(_$CategoryIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
