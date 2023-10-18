part of 'shop_products_bloc.dart';

@freezed
class ShopProductsEvent with _$ShopProductsEvent {
  const factory ShopProductsEvent.fetchFlashSaleProducts(
      {required String endPointSlug}) = FetchFlashSaleProducts;
  const factory ShopProductsEvent.fetchPopularProducts(
      {required String endPointSlug}) = FetchPopularProducts;
  const factory ShopProductsEvent.fetchRecentProductProducts() =
      FetchRecentProductProducts;
  const factory ShopProductsEvent.fetchHomeBanners() = FetchHomeBanners;
  const factory ShopProductsEvent.fetchShopBanners() = FetchShopBanners;
  const factory ShopProductsEvent.fetchArticles({
    required String searchQuery,
  }) = FetchArticles;
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
    required double totalPrice,
    required String pickupLocation,
    required int quantity,
    required int totalDiscount,
    required int shippingCharges,
    required int weight,
    required String id,
  }) = PostOrders;
  const factory ShopProductsEvent.postOnlieOrders({
    required BuildContext context,
    required String razorpayOrderId,
    required String razorpayPaymentId,
    required String razorpaySignature,
    required String addressId,
  }) = PostOnlieOrders;
  const factory ShopProductsEvent.postOrderIdOnlinePayment({
    required BuildContext context,
    required double amount,
  }) = PostOrderIdOnlinePayment;
  const factory ShopProductsEvent.postOrdersRewards({
    required BuildContext context,
    required double price,
    required int coins,
    required String addressId,
    required int totalQuantity,
    required String productId,
    required String brandId,
    required String size,
    required String color,
  }) = PostOrdersRewards;
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
  const factory ShopProductsEvent.cancelOrder({
    required BuildContext context,
    required int shiprockeId,
  }) = CancelOrder;
  const factory ShopProductsEvent.returnOrder({
    required BuildContext context,
    required int shiprockeId,
  }) = ReturnOrder;
  const factory ShopProductsEvent.fetchShopHomeBackgroundCard() =
      FetchShopHomeBackgroundCard;
  const factory ShopProductsEvent.fetchShopHomeBackgroundCardHelthyDiet() =
      FetchShopHomeBackgroundCardHelthyDiet;
  const factory ShopProductsEvent.fetchShopHomeBackgroundCardSunnah() =
      FetchShopHomeBackgroundCardSunnah;
  const factory ShopProductsEvent.fetchShopAdBrands() = FetchShopAdBrands;
  const factory ShopProductsEvent.fetchTopBrands() = FetchTopBrands;
  const factory ShopProductsEvent.fetchProductItemsSubcategorySunnah() =
      FetchProductItemsSubcategorySunnah;
  const factory ShopProductsEvent.fetchProductItemsSubcategoryHealth() =
      FetchProductItemsSubcategoryHealth;
  const factory ShopProductsEvent.fetchProductItemsSubcategoryWomen() =
      FetchProductItemsSubcategoryWomen;
  const factory ShopProductsEvent.changeShopBannerIndex(int index) =
      ChangeShopBannerIndex;
  const factory ShopProductsEvent.changeBrandBannerIndex(int index) =
      ChangeBrandBannerIndex;
  const factory ShopProductsEvent.showOrderProgressEvent() =
      ShowOrderProgressEvent;
  const factory ShopProductsEvent.indexChangeOnOrderProgress({
    required int index,
  }) = IndexChangeOnOrderProgress;
  const factory ShopProductsEvent.indexChangeOnWomensCareBanner({
    required int index,
  }) = IndexChangeOnWomensCareBanner;
  const factory ShopProductsEvent.fetchShopAdBrandsById({required String id}) =
      FetchShopAdBrandsById;
  const factory ShopProductsEvent.savePaymentMethodType({
    required int index,
  }) = SavePaymentMethodType;
  const factory ShopProductsEvent.fetchProductItemsbyCategory() =
      FetchProductItemsbyCategory;
  const factory ShopProductsEvent.fetchSpecificCategeryItems({
    required String slug,
  }) = FetchSpecificCategeryItems;
  const factory ShopProductsEvent.fetchProductsById({
    required String id,
  }) = FetchProductsById;
  const factory ShopProductsEvent.fetchBrandProducts(
      {required String brandId}) = FetchBrandProducts;
  const factory ShopProductsEvent.fetchCoupons() = FetchCoupons;
  const factory ShopProductsEvent.isPromoCodeAvailable({
    required bool value,
  }) = IsPromoCodeAvailable;
  const factory ShopProductsEvent.changeIndexEvent({required int index}) =
      ChangeIndexEvent;
  const factory ShopProductsEvent.fetchBrandItemsbyId({required String id}) =
      FetchBrandItemsbyId;
  const factory ShopProductsEvent.fetchAllBrandsEvent() = FetchAllBrandsEvent;
  const factory ShopProductsEvent.fetchOrderReasons({
    required String endpoint,
  }) = FetchOrderReasons;
  const factory ShopProductsEvent.addReasons({
    required String endpoint,
    required String text,
  }) = AddReasons;
  const factory ShopProductsEvent.fetchArticlesbyId({required String id}) =
      FetchArticlesbyId;
  const factory ShopProductsEvent.fetchProducts() = FetchProducts;
  const factory ShopProductsEvent.fetchArticlesCategory() =
      FetchArticlesCategory;
  const factory ShopProductsEvent.saveArticleCategoryFilterVal(
      {required String filterVal}) = SaveArticleCategoryFilterVal;
  const factory ShopProductsEvent.fetchArticlesByCategory(String category) =
      FetchArticlesByCategory;
  const factory ShopProductsEvent.fetchBrandProductsItemCount(
      {required List<String>? ids}) = FetchBrandProductsItemCount;
}
