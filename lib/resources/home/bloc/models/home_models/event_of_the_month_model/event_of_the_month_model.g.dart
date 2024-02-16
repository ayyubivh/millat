// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_of_the_month_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventOfTheMonthModelImpl _$$EventOfTheMonthModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EventOfTheMonthModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : EventResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EventOfTheMonthModelImplToJson(
        _$EventOfTheMonthModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$EventResultImpl _$$EventResultImplFromJson(Map<String, dynamic> json) =>
    _$EventResultImpl(
      event: (json['event'] as List<dynamic>?)
          ?.map((e) => EventItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EventResultImplToJson(_$EventResultImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
    };

_$EventItemImpl _$$EventItemImplFromJson(Map<String, dynamic> json) =>
    _$EventItemImpl(
      id: json['id'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      routing: json['routing'] == null
          ? null
          : Routing.fromJson(json['routing'] as Map<String, dynamic>),
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$EventItemImplToJson(_$EventItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'routing': instance.routing,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$RoutingImpl _$$RoutingImplFromJson(Map<String, dynamic> json) =>
    _$RoutingImpl(
      categoryId: json['categoryId'] == null
          ? null
          : CategoryId.fromJson(json['categoryId'] as Map<String, dynamic>),
      subCategoryId: json['subCategoryId'] == null
          ? null
          : SubCategoryId.fromJson(
              json['subCategoryId'] as Map<String, dynamic>),
      itemTypeId: json['itemTypeId'] == null
          ? null
          : ItemTypeId.fromJson(json['itemTypeId'] as Map<String, dynamic>),
      route: json['route'] as String?,
    );

Map<String, dynamic> _$$RoutingImplToJson(_$RoutingImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'subCategoryId': instance.subCategoryId,
      'itemTypeId': instance.itemTypeId,
      'route': instance.route,
    };

_$CategoryIdImpl _$$CategoryIdImplFromJson(Map<String, dynamic> json) =>
    _$CategoryIdImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$CategoryIdImplToJson(_$CategoryIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

_$SubCategoryIdImpl _$$SubCategoryIdImplFromJson(Map<String, dynamic> json) =>
    _$SubCategoryIdImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$SubCategoryIdImplToJson(_$SubCategoryIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

_$ItemTypeIdImpl _$$ItemTypeIdImplFromJson(Map<String, dynamic> json) =>
    _$ItemTypeIdImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$ItemTypeIdImplToJson(_$ItemTypeIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
