part of 'shop_products_bloc.dart';

@freezed
class ShopProductsState with _$ShopProductsState {
  const factory ShopProductsState(
      {required ShopProducts? flashSaleproducts,
      required bool flashSaleLoading,
      required ShopProducts? popularProducts,
      required bool popularProductLoading,
      required RecentProducts? recentProducts,
      required bool recentProductLoading,
      required BannersModel? homeBanner,
      required bool bannersLoading,
      required BannersModel? shopBanner,
      required bool shopBannerLoading,
      required ArticleModel? articles,
      required bool articleLoading,
      required bool isLoading,
      required ShopBrandModel? shopBrandModel,
      required Wishlist? wishList,
      required String? wishListMessage,
      required Set<String>? wishListItems,
      required ProductModel? searchProducts,
      required ShopBrandProductModel? brandProduct,
      required String errorMessage}) = _Initial;

  factory ShopProductsState.initial() => ShopProductsState(
      popularProducts: null,
      flashSaleproducts: null,
      flashSaleLoading: false,
      popularProductLoading: false,
      recentProducts: null,
      recentProductLoading: false,
      homeBanner: null,
      bannersLoading: false,
      shopBanner: null,
      shopBannerLoading: false,
      articles: null,
      articleLoading: false,
      shopBrandModel: null,
      errorMessage: "",
      searchProducts: null,
      wishListMessage: "",
      wishListItems: {},
      wishList: null,
      brandProduct: null,
      isLoading: false);
}
