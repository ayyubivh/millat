// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_item_women_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductItemsSubCategoryWomenModel
    _$$_ProductItemsSubCategoryWomenModelFromJson(Map<String, dynamic> json) =>
        _$_ProductItemsSubCategoryWomenModel(
          status: json['status'] as int?,
          message: json['message'] as String?,
          error: json['error'] as String?,
          result: json['result'] == null
              ? null
              : Result.fromJson(json['result'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_ProductItemsSubCategoryWomenModelToJson(
        _$_ProductItemsSubCategoryWomenModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      data: json['data'] == null
          ? null
          : ItemData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'data': instance.data,
    };

_$_ItemData _$$_ItemDataFromJson(Map<String, dynamic> json) => _$_ItemData(
      id: json['_id'] as String?,
      slug: json['slug'] as String?,
      createdAt: json['createdAt'] as String?,
      itemList: (json['itemList'] as List<dynamic>?)
          ?.map((e) => ItemList.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_ItemDataToJson(_$_ItemData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'slug': instance.slug,
      'createdAt': instance.createdAt,
      'itemList': instance.itemList,
      'updatedAt': instance.updatedAt,
    };

_$_ItemList _$$_ItemListFromJson(Map<String, dynamic> json) => _$_ItemList(
      id: json['_id'] as String?,
      categoryId: json['categoryId'] == null
          ? null
          : CategoryId.fromJson(json['categoryId'] as Map<String, dynamic>),
      subCategoryId: json['subCategoryId'] == null
          ? null
          : SubCategoryId.fromJson(
              json['subCategoryId'] as Map<String, dynamic>),
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      brandId: json['brandId'] as String?,
    );

Map<String, dynamic> _$$_ItemListToJson(_$_ItemList instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'subCategoryId': instance.subCategoryId,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'brandId': instance.brandId,
    };

_$_CategoryId _$$_CategoryIdFromJson(Map<String, dynamic> json) =>
    _$_CategoryId(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_CategoryIdToJson(_$_CategoryId instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_SubCategoryId _$$_SubCategoryIdFromJson(Map<String, dynamic> json) =>
    _$_SubCategoryId(
      id: json['_id'] as String?,
      categoryId: json['categoryId'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
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
