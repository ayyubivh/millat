// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_large_discounts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LargeDiscountModel _$$_LargeDiscountModelFromJson(
        Map<String, dynamic> json) =>
    _$_LargeDiscountModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LargeDiscountModelToJson(
        _$_LargeDiscountModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      banners: (json['banners'] as List<dynamic>)
          .map((e) => BannerItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'banners': instance.banners,
    };

_$_BannerItem _$$_BannerItemFromJson(Map<String, dynamic> json) =>
    _$_BannerItem(
      id: json['_id'] as String,
      subCategoryId: json['subCategoryId'] == null
          ? null
          : SubCategory.fromJson(json['subCategoryId'] as Map<String, dynamic>),
      subCategoryName: json['subCategoryName'] as String?,
      image: json['image'] as String?,
      url: json['url'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_BannerItemToJson(_$_BannerItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'subCategoryId': instance.subCategoryId,
      'subCategoryName': instance.subCategoryName,
      'image': instance.image,
      'url': instance.url,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_SubCategory _$$_SubCategoryFromJson(Map<String, dynamic> json) =>
    _$_SubCategory(
      id: json['_id'] as String,
      categoryId: json['categoryId'] == null
          ? null
          : Category.fromJson(json['categoryId'] as Map<String, dynamic>),
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
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

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
