class ShopBrandProductModel {
  final int status;
  final String message;
  final String error;
  final List<BrandProduct> products;

  ShopBrandProductModel({
    required this.status,
    required this.message,
    required this.error,
    required this.products,
  });

  factory ShopBrandProductModel.fromJson(Map<String, dynamic> json) {
    final List<dynamic> productListJson = json['result']['products'];
    final List<BrandProduct> products = productListJson
        .map((productJson) => BrandProduct.fromJson(productJson))
        .toList();
    return ShopBrandProductModel(
      status: json['status'],
      message: json['message'],
      error: json['error'],
      products: products,
    );
  }
}

class BrandProduct {
  final String id;
  final String title;
  final Brand brand;
  final String description;
  final String otherInfo;
  final Category category;
  final Subcategory subcategory;
  final int actualPrice;
  final int discountPrice;
  final int discount;
  final List<ColorOption> colors;
  final List<SizeOption> size;
  final List<Meta> meta;
  final List<String> keywords;
  final String createdAt;
  final String updatedAt;

  BrandProduct({
    required this.id,
    required this.title,
    required this.brand,
    required this.description,
    required this.otherInfo,
    required this.category,
    required this.subcategory,
    required this.actualPrice,
    required this.discountPrice,
    required this.discount,
    required this.colors,
    required this.size,
    required this.meta,
    required this.keywords,
    required this.createdAt,
    required this.updatedAt,
  });

  factory BrandProduct.fromJson(Map<String, dynamic> json) {
    return BrandProduct(
      id: json['_id'],
      title: json['title'],
      brand: Brand.fromJson(json['brand']),
      description: json['description'],
      otherInfo: json['otherInfo'],
      category: Category.fromJson(json['category']),
      subcategory: Subcategory.fromJson(json['subcategory']),
      actualPrice: json['actualPrice'],
      discountPrice: json['discountPrice'],
      discount: json['discount'],
      colors: (json['colors'] as List<dynamic>)
          .map((colorJson) => ColorOption.fromJson(colorJson))
          .toList(),
      size: (json['size'] as List<dynamic>)
          .map((sizeJson) => SizeOption.fromJson(sizeJson))
          .toList(),
      meta: (json['meta'] as List<dynamic>)
          .map((metaJson) => Meta.fromJson(metaJson))
          .toList(),
      keywords: (json['keywords'] as List<dynamic>)
          .map((keyword) => keyword.toString())
          .toList(),
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}

class Brand {
  final String id;
  final String name;

  Brand({
    required this.id,
    required this.name,
  });

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      id: json['_id'],
      name: json['name'],
    );
  }
}

class Category {
  final String id;
  final String title;

  Category({
    required this.id,
    required this.title,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['_id'],
      title: json['title'],
    );
  }
}

class Subcategory {
  final String id;
  final String title;

  Subcategory({
    required this.id,
    required this.title,
  });

  factory Subcategory.fromJson(Map<String, dynamic> json) {
    return Subcategory(
      id: json['_id'],
      title: json['title'],
    );
  }
}

class ColorOption {
  final String text;
  final List<String> images;

  ColorOption({
    required this.text,
    required this.images,
  });

  factory ColorOption.fromJson(Map<String, dynamic> json) {
    return ColorOption(
      text: json['text'],
      images: (json['images'] as List<dynamic>)
          .map((image) => image.toString())
          .toList(),
    );
  }
}

class SizeOption {
  final String value;
  final int? price;

  SizeOption({
    required this.value,
    required this.price,
  });

  factory SizeOption.fromJson(Map<String, dynamic> json) {
    return SizeOption(
      value: json['value'],
      price: json['price'],
    );
  }
}

class Meta {
  final String key;
  final String value;

  Meta({
    required this.key,
    required this.value,
  });

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      key: json['key'],
      value: json['value'],
    );
  }
}
