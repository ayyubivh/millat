part of 'shop_products_bloc.dart';

@freezed
class ShopProductsEvent with _$ShopProductsEvent {
  const factory ShopProductsEvent.fetchFlashSaleProducts() =
      FetchFlashSaleProducts;
  const factory ShopProductsEvent.fetchPopularProducts() = FetchPopularProducts;
  const factory ShopProductsEvent.fetchRecentProductProducts() =
      FetchRecentProductProducts;
}
