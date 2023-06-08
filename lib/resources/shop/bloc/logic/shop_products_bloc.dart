import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/shop/bloc/models/articles/articles_model.dart';
import 'package:millat/resources/shop/bloc/models/recent_products/recent_products_model.dart';
import 'package:millat/resources/shop/bloc/service/shop_services.dart';
import '../models/banners/banners_model.dart';
import '../models/shop_products/shop_products_model.dart';

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
  }

  FutureOr<void> _fetchFlashSaleProducts(
      FetchFlashSaleProducts event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(flashSaleLoading: true));

    try {
      final data = await _shopService.fetchFlashSaleProducts();
      emit(state.copyWith(flashSaleproducts: data, flashSaleLoading: false));
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", flashSaleLoading: false));
    }
  }

  FutureOr<void> _fetchPopularProducts(
      FetchPopularProducts event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(popularProductLoading: true));

    try {
      final data = await _shopService.fetchPopularProducts();
      emit(state.copyWith(popularProducts: data, popularProductLoading: false));
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", popularProductLoading: false));
    }
  }

  FutureOr<void> _recentProductProducts(
      FetchRecentProductProducts event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(recentProductLoading: true));

    try {
      final data = await _shopService.fetchRecentProducts();
      emit(state.copyWith(recentProducts: data, recentProductLoading: false));
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", recentProductLoading: false));
    }
  }

  FutureOr<void> _fetchHomeBanners(
      FetchHomeBanners event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(bannersLoading: true));
    try {
      final data = await _shopService.fetchHomeBanners();
      emit(state.copyWith(homeBanner: data, bannersLoading: false));
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", bannersLoading: false));
    }
  }

  FutureOr<void> _fetchShopBanners(
      FetchShopBanners event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(shopBannerLoading: true));
    try {
      final data = await _shopService.fetchHomeBanners();
      emit(state.copyWith(shopBanner: data, shopBannerLoading: false));
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", shopBannerLoading: false));
    }
  }

  FutureOr<void> _fetchArticles(
      FetchArticles event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(articleLoading: true));
    try {
      final data = await _shopService.fetchArticles();
      emit(state.copyWith(articles: data, articleLoading: false));
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", articleLoading: false));
    }
  }
}
