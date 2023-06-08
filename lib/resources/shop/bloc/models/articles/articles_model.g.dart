// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleModel _$$_ArticleModelFromJson(Map<String, dynamic> json) =>
    _$_ArticleModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ArticleModelToJson(_$_ArticleModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'articles': instance.articles,
    };

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      id: json['_id'] as String,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      content: json['content'] as String?,
      brand: json['brand'] as String?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      image: json['image'] as String?,
      date: json['date'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'content': instance.content,
      'brand': instance.brand,
      'product': instance.product,
      'image': instance.image,
      'date': instance.date,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['_id'] as String,
      title: json['title'] as String?,
      brand: json['brand'] as String?,
      description: json['description'] as String?,
      otherInfo: json['otherInfo'] as String?,
      category: json['category'] as String?,
      subcategory: json['subcategory'] as String?,
      actualPrice: json['actualPrice'] as int?,
      discountPrice: json['discountPrice'] as int?,
      discount: json['discount'] as int?,
      colors: (json['colors'] as List<dynamic>?)
          ?.map((e) => Color.fromJson(e as Map<String, dynamic>))
          .toList(),
      size: (json['size'] as List<dynamic>?)
          ?.map((e) => Size.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: (json['meta'] as List<dynamic>?)
          ?.map((e) => Meta.fromJson(e as Map<String, dynamic>))
          .toList(),
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'brand': instance.brand,
      'description': instance.description,
      'otherInfo': instance.otherInfo,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'actualPrice': instance.actualPrice,
      'discountPrice': instance.discountPrice,
      'discount': instance.discount,
      'colors': instance.colors,
      'size': instance.size,
      'meta': instance.meta,
      'keywords': instance.keywords,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_Color _$$_ColorFromJson(Map<String, dynamic> json) => _$_Color(
      text: json['text'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ColorToJson(_$_Color instance) => <String, dynamic>{
      'text': instance.text,
      'images': instance.images,
    };

_$_Size _$$_SizeFromJson(Map<String, dynamic> json) => _$_Size(
      value: json['value'] as String?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$$_SizeToJson(_$_Size instance) => <String, dynamic>{
      'value': instance.value,
      'price': instance.price,
    };

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
