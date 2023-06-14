import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/shop/bloc/models/articles/articles_model.dart';
import 'package:millat/resources/shop/bloc/models/products/products_model.dart';
import 'package:millat/resources/shop/bloc/models/recent_products/recent_products_model.dart';
import 'package:millat/resources/shop/bloc/service/shop_services.dart';
import '../../models/banners/banners_model.dart';
import '../../models/shop_by_brand/shop_by_brand_models.dart';
import '../../models/shop_products/shop_products_model.dart';
import '../../models/wishlist/wishllist_models.dart';

part 'shop_products_event.dart';
part 'shop_products_state.dart';
part 'shop_products_bloc.freezed.dart';

class ShopProductsBloc extends Bloc<ShopProductsEvent, ShopProductsState> {
  ShopService _shopService = ShopService();
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
  }

  FutureOr<void> _fetchFlashSaleProducts(
      FetchFlashSaleProducts event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await _shopService.fetchFlashSaleProducts();
      emit(state.copyWith(flashSaleproducts: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(errorMessage: "An error occurred", isLoading: false));
    }
  }

  FutureOr<void> _fetchPopularProducts(
      FetchPopularProducts event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await _shopService.fetchPopularProducts();
      emit(state.copyWith(popularProducts: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(errorMessage: "An error occurred", isLoading: false));
    }
  }

  FutureOr<void> _recentProductProducts(
      FetchRecentProductProducts event, Emitter<ShopProductsState> emit) async {
    try {
      final data = await _shopService.fetchRecentProducts();
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
      final data = await _shopService.fetchHomeBanners();
      emit(state.copyWith(homeBanner: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(errorMessage: "An error occurred", isLoading: false));
    }
  }

  FutureOr<void> _fetchShopBanners(
      FetchShopBanners event, Emitter<ShopProductsState> emit) async {
    try {
      final data = await _shopService.fetchHomeBanners();
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
      final data = await _shopService.fetchArticles();
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
      final data = await _shopService.fetchShopByBrand();
      emit(state.copyWith(
        shopBrandModel: data,
      ));
    } catch (e) {
      emit(state.copyWith(
        errorMessage: "An error occurred",
      ));
    }
  }

  FutureOr<void> _fetchWishList(
      FetchWishList event, Emitter<ShopProductsState> emit) async {
    try {
      final data = await _shopService.fetchWishlist(event.context);
      emit(state.copyWith(
        wishList: data,
      ));
    } catch (e) {
      emit(state.copyWith(
        errorMessage: "An error occurred",
      ));
    }
  }

  FutureOr<void> _searchProduct(
      SearchProduct event, Emitter<ShopProductsState> emit) async {
    try {
      final data = await _shopService.fetchSearchProduct(event.query);
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
    emit(state.copyWith(wishListMessage: ""));
    try {
      final data = await _shopService.addWishList(
        context: event.context,
        productId: event.productId,
      );
      emit(state.copyWith(wishListMessage: '${data['message']}'));
      print('${data['message']}');
    } catch (e) {
      emit(state.copyWith(errorMessage: "An error occurred"));
    }
  }

  _removeWishlistEvent(
      RemoveWishlistEvent event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(wishListMessage: ""));
    try {
      final data = await _shopService.addWishList(
        context: event.context,
        productId: event.productId,
      );
      emit(state.copyWith(wishListMessage: '${data['message']}'));
      print('${data['message']}');
    } catch (e) {
      emit(state.copyWith(errorMessage: "An error occurred"));
    }
  }
}
