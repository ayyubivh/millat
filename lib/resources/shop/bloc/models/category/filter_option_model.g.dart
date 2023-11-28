// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterOptionModelImpl _$$FilterOptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FilterOptionModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FilterOptionModelImplToJson(
        _$FilterOptionModelImpl instance) =>
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
      (json['brand'] as List<dynamic>?)
          ?.map((e) => Brand.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['subcategory'] as List<dynamic>?)
          ?.map((e) => Subcategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['itemList'] as List<dynamic>?)
          ?.map((e) => Subcategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['maxPrice'] as int?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'subcategory': instance.subcategory,
      'itemList': instance.itemList,
      'colors': instance.colors,
      'maxPrice': instance.maxPrice,
    };

_$BrandImpl _$$BrandImplFromJson(Map<String, dynamic> json) => _$BrandImpl(
      brandName: json['brandName'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$BrandImplToJson(_$BrandImpl instance) =>
    <String, dynamic>{
      'brandName': instance.brandName,
      '_id': instance.id,
    };

_$SubcategoryImpl _$$SubcategoryImplFromJson(Map<String, dynamic> json) =>
    _$SubcategoryImpl(
      json['_id'] as String?,
      json['title'] as String?,
    );

Map<String, dynamic> _$$SubcategoryImplToJson(_$SubcategoryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
    };
