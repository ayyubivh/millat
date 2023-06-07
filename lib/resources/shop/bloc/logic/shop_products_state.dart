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
      required String errorMessage}) = _Initial;
  factory ShopProductsState.initial() => ShopProductsState(
        popularProducts: null,
        flashSaleproducts: null,
        flashSaleLoading: false,
        popularProductLoading: false,
        recentProducts: null,
        recentProductLoading: false,
        errorMessage: "",
      );
}
