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
}
