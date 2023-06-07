import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/shop/bloc/models/recent_products_model.dart';
import 'package:millat/resources/shop/bloc/service/shop_services.dart';

import '../models/shop_products_model.dart';

part 'shop_products_event.dart';
part 'shop_products_state.dart';
part 'shop_products_bloc.freezed.dart';

class ShopProductsBloc extends Bloc<ShopProductsEvent, ShopProductsState> {
  ShopService _shopService = ShopService();
  ShopProductsBloc() : super(ShopProductsState.initial()) {
    on<FetchFlashSaleProducts>(_fetchFlashSaleProducts);
    on<FetchPopularProducts>(_fetchPopularProducts);
    on<FetchRecentProductProducts>(_recentProductProducts);
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
}
