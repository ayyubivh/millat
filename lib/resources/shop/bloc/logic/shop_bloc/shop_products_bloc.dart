import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/shop/bloc/models/articles/articles_model.dart';
import 'package:millat/resources/shop/bloc/models/products/products_model.dart';
import 'package:millat/resources/shop/bloc/models/recent_products/recent_products_model.dart';
import 'package:millat/resources/shop/bloc/service/shop_services.dart';
import '../../models/banners/banners_model.dart';
import '../../models/orders/orders_model.dart';
import '../../models/shop_by_brand/shop_by_brand_models.dart';
import '../../models/shop_by_brand/shop_by_brand_products.dart';
import '../../models/shop_products/shop_products_model.dart';
import '../../models/wishlist/wishllist_models.dart';

part 'shop_products_event.dart';
part 'shop_products_state.dart';
part 'shop_products_bloc.freezed.dart';

class ShopProductsBloc extends Bloc<ShopProductsEvent, ShopProductsState> {
  ShopService shopService = ShopService();
  ShopProductsBloc() : super(ShopProductsState.initial()) {
    on<FetchFlashSaleProducts>(_fetchFlashSaleProducts);
    on<FetchPopularProducts>(_fetchPopularProducts);
    on<FetchRecentProductProducts>(_recentProductProducts);
    on<FetchHomeBanners>(_fetchHomeBanners);
    on<FetchShopBanners>(_fetchShopBanners);
    on<FetchArticles>(_fetchArticles);
    on<FetchShopByBrand>(_fetchShopByBrand);
    on<FetchWishList>(_fetchWishList);
    on<SearchProduct>(_searchProduct);
    on<AddWishListEvent>(_addWishListEvent);
    on<RemoveWishlistEvent>(_removeWishlistEvent);
    on<FetchShopByBrandProducts>(_fetchShopByBrandProducts);
    on<TabIndexChangeEvent>(_tabIndexChangeEvent);
    on<FetchOrders>(_fetchOrders);
    on<PostOrders>(_postOrders);
  }

  FutureOr<void> _fetchFlashSaleProducts(
      FetchFlashSaleProducts event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await shopService.fetchFlashSaleProducts();
      emit(state.copyWith(flashSaleproducts: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(errorMessage: "An error occurred", isLoading: false));
    }
  }

  FutureOr<void> _fetchPopularProducts(
      FetchPopularProducts event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await shopService.fetchPopularProducts();
      emit(state.copyWith(popularProducts: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(errorMessage: "An error occurred", isLoading: false));
    }
  }

  FutureOr<void> _recentProductProducts(
      FetchRecentProductProducts event, Emitter<ShopProductsState> emit) async {
    try {
      final data = await shopService.fetchRecentProducts();
      emit(state.copyWith(
        recentProducts: data,
      ));
    } catch (e) {
      emit(state.copyWith(
        errorMessage: "An error occurred",
      ));
    }
  }

  FutureOr<void> _fetchHomeBanners(
      FetchHomeBanners event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await shopService.fetchHomeBanners();
      emit(state.copyWith(homeBanner: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(errorMessage: "An error occurred", isLoading: false));
    }
  }

  FutureOr<void> _fetchShopBanners(
      FetchShopBanners event, Emitter<ShopProductsState> emit) async {
    try {
      final data = await shopService.fetchShopBanner();
      emit(state.copyWith(
        shopBanner: data,
      ));
    } catch (e) {
      emit(state.copyWith(
        errorMessage: "An error occurred",
      ));
    }
  }

  FutureOr<void> _fetchArticles(
      FetchArticles event, Emitter<ShopProductsState> emit) async {
    try {
      final data = await shopService.fetchArticles();
      emit(state.copyWith(
        articles: data,
      ));
    } catch (e) {
      emit(state.copyWith(
        errorMessage: "An error occurred",
      ));
    }
  }

  FutureOr<void> _fetchShopByBrand(
      FetchShopByBrand event, Emitter<ShopProductsState> emit) async {
    try {
      final data = await shopService.fetchShopByBrand();
      emit(state.copyWith(
        shopBrandModel: data,
      ));
    } catch (e) {
      emit(state.copyWith(
        errorMessage: "An error occurred",
      ));
    }
  }

  Future<void> _fetchWishList(
      FetchWishList event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await shopService.fetchWishlist(event.context);

      final wishListItems =
          data.result?.wishlist.products?.map((item) => item.id).toList() ?? [];

      emit(
        state.copyWith(
            wishList: data,
            isLoading: false,
            wishListItems: wishListItems.toSet()),
      );
    } catch (e) {
      emit(state.copyWith(
        errorMessage: "An error occurred",
        isLoading: false,
      ));
    }
  }

  FutureOr<void> _searchProduct(
      SearchProduct event, Emitter<ShopProductsState> emit) async {
    try {
      final data = await shopService.fetchSearchProduct(event.query);
      emit(state.copyWith(
        searchProducts: data,
      ));
      print('serch result product on the data ${data}');
    } catch (e) {
      emit(state.copyWith(
        errorMessage: "An error occurred",
      ));
    }
  }

  _addWishListEvent(
      AddWishListEvent event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(
      wishListMessage: "",
    ));
    try {
      final data = await shopService.addWishList(
        context: event.context,
        productId: event.productId,
      );
      final updatedWishList = state.wishListItems?.toSet() ?? {}
        ..add(event.productId);

      emit(
        state.copyWith(
            isLoading: false,
            wishListMessage: '${data['message']}',
            wishListItems: updatedWishList),
      );
      print('${data['message']}');
    } catch (e) {
      emit(state.copyWith(errorMessage: "An error occurred", isLoading: false));
    }
  }

  _removeWishlistEvent(
      RemoveWishlistEvent event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(wishListMessage: ""));
    try {
      final data = await shopService.removeWishList(
        context: event.context,
        productId: event.productId,
      );
      final updatedWishList = state.wishListItems?.toSet() ?? {};
      updatedWishList.remove(event.productId);

      final newWishLists = state.wishList!.copyWith(
        result: state.wishList?.result?.copyWith(
          wishlist: state.wishList!.result!.wishlist.copyWith(
            products: state.wishList!.result!.wishlist.products
                ?.where((element) => element.id != event.productId)
                .toList(),
          ),
        ),
      );

      emit(
        state.copyWith(
          wishListItems: updatedWishList,
          wishList: newWishLists,
        ),
      );
      print('${data['message']}');
    } catch (e) {
      emit(state.copyWith(errorMessage: "An error occurred"));
    }
  }

  _fetchShopByBrandProducts(
      FetchShopByBrandProducts event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await shopService.fetchProductsByBrand(event.brandName);
      emit(state.copyWith(brandProduct: data, isLoading: false));
      print('on bloc here of the shop by brand ${data}');
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _tabIndexChangeEvent(
      TabIndexChangeEvent event, Emitter<ShopProductsState> emit) {
    emit(state.copyWith(index: event.index));
  }

  FutureOr<void> _fetchOrders(
      FetchOrders event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: ""));
    try {
      final data = await shopService.fetchOrders(event.context);
      emit(state.copyWith(orderModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString(), isLoading: false));
    }
  }

  FutureOr<void> _postOrders(
      PostOrders event, Emitter<ShopProductsState> emit) {
    emit(state.copyWith(errorMessage: ""));
    try {
      final data = shopService.postOrder(
        context: event.context,
        productId: event.productId,
        totalPrice: event.totalPrice,
      );
      print('data on the bloc  of the orders$data');
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }
}
