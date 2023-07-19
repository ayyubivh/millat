part of 'shop_products_bloc.dart';

@freezed
class ShopProductsEvent with _$ShopProductsEvent {
  const factory ShopProductsEvent.fetchFlashSaleProducts() =
      FetchFlashSaleProducts;
  const factory ShopProductsEvent.fetchPopularProducts() = FetchPopularProducts;
  const factory ShopProductsEvent.fetchRecentProductProducts() =
      FetchRecentProductProducts;
  const factory ShopProductsEvent.fetchHomeBanners() = FetchHomeBanners;
  const factory ShopProductsEvent.fetchShopBanners() = FetchShopBanners;
  const factory ShopProductsEvent.fetchArticles() = FetchArticles;
  const factory ShopProductsEvent.fetchShopByBrand() = FetchShopByBrand;
  const factory ShopProductsEvent.fetchWishList(BuildContext context) =
      FetchWishList;
  const factory ShopProductsEvent.searchProduct(String query) = SearchProduct;
  const factory ShopProductsEvent.addWishListEvent(
      {required String productId,
      required BuildContext context}) = AddWishListEvent;
  const factory ShopProductsEvent.removeWishlistEvent(
      {required String productId,
      required BuildContext context}) = RemoveWishlistEvent;
  const factory ShopProductsEvent.fetchShopByBrandProducts(
      {required String brandName}) = FetchShopByBrandProducts;
  const factory ShopProductsEvent.tabIndexChangeEvent({
    required int index,
  }) = TabIndexChangeEvent;

  const factory ShopProductsEvent.postOrders({
    required BuildContext context,
    required int totalPrice,
    required String pickupLocation,
    required int quantity,
    required int totalDiscount,
    required int shippingCharges,
    required int weight,
    required String id,
  }) = PostOrders;
  const factory ShopProductsEvent.fetchOrders(
    BuildContext context,
  ) = FetchOrders;
  const factory ShopProductsEvent.fetchOrdersById(
    BuildContext context,
    int id,
  ) = FetchOrdersById;
  const factory ShopProductsEvent.fetchOrdersbyFilterEvent({
    required BuildContext context,
    required String filterName,
  }) = FetchOrdersbyFilterEvent;
}
