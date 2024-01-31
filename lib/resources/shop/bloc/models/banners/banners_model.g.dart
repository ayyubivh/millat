// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banners_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannersModelImpl _$$BannersModelImplFromJson(Map<String, dynamic> json) =>
    _$BannersModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : BannerResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BannersModelImplToJson(_$BannersModelImpl instance) =>
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
      routing: json['routing'] == null
          ? null
          : Routing.fromJson(json['routing'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      image: json['image'] as String?,
      url: json['url'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      v: json['__v'] as int?,
      discount: json['discount'] as int?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$BannersImplToJson(_$BannersImpl instance) =>
    <String, dynamic>{
      'routing': instance.routing,
      '_id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'image': instance.image,
      'url': instance.url,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.v,
      'discount': instance.discount,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'status': instance.status,
    };

_$RoutingImpl _$$RoutingImplFromJson(Map<String, dynamic> json) =>
    _$RoutingImpl(
      route: json['route'] as String?,
      categoryId: json['categoryId'] == null
          ? null
          : CategoryId.fromJson(json['categoryId'] as Map<String, dynamic>),
      subCategoryId: json['subCategoryId'] == null
          ? null
          : CategoryId.fromJson(json['subCategoryId'] as Map<String, dynamic>),
      itemTypeId: json['itemTypeId'] == null
          ? null
          : CategoryId.fromJson(json['itemTypeId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RoutingImplToJson(_$RoutingImpl instance) =>
    <String, dynamic>{
      'route': instance.route,
      'categoryId': instance.categoryId,
      'subCategoryId': instance.subCategoryId,
      'itemTypeId': instance.itemTypeId,
    };

_$CategoryIdImpl _$$CategoryIdImplFromJson(Map<String, dynamic> json) =>
    _$CategoryIdImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$CategoryIdImplToJson(_$CategoryIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
    };
