// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_offers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopOffersModel _$$_TopOffersModelFromJson(Map<String, dynamic> json) =>
    _$_TopOffersModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: TopOffersResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TopOffersModelToJson(_$_TopOffersModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_TopOffersResult _$$_TopOffersResultFromJson(Map<String, dynamic> json) =>
    _$_TopOffersResult(
      banners: (json['banners'] as List<dynamic>)
          .map((e) => BannerItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TopOffersResultToJson(_$_TopOffersResult instance) =>
    <String, dynamic>{
      'banners': instance.banners,
    };

_$_BannerItem _$$_BannerItemFromJson(Map<String, dynamic> json) =>
    _$_BannerItem(
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

Map<String, dynamic> _$$_BannerItemToJson(_$_BannerItem instance) =>
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

_$_SubCategoryId _$$_SubCategoryIdFromJson(Map<String, dynamic> json) =>
    _$_SubCategoryId(
      id: json['_id'] as String,
      categoryId: json['categoryId'] == null
          ? null
          : CategoryId.fromJson(json['categoryId'] as Map<String, dynamic>),
      title: json['title'] as String,
      image: json['image'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_SubCategoryIdToJson(_$_SubCategoryId instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_CategoryId _$$_CategoryIdFromJson(Map<String, dynamic> json) =>
    _$_CategoryId(
      id: json['_id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_CategoryIdToJson(_$_CategoryId instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
