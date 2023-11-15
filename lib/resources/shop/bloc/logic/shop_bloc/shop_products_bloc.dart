import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/shop/bloc/models/articles/article_category/article_categories_model.dart';
import 'package:millat/resources/shop/bloc/models/articles/articles_model.dart';
import 'package:millat/resources/shop/bloc/models/category/specific_category_model.dart';
import 'package:millat/resources/shop/bloc/models/coupon_model/coupen_model.dart';
import 'package:millat/resources/shop/bloc/models/orders/reason_model.dart';
import 'package:millat/resources/shop/bloc/models/products/product_by_id_model.dart';
import 'package:millat/resources/shop/bloc/models/products/products_model.dart';
import 'package:millat/resources/shop/bloc/models/recent_products/recent_products_model.dart';
import 'package:millat/resources/shop/bloc/models/shop_by_brand/brand_model.dart';
import 'package:millat/resources/shop/bloc/service/orders_service.dart';
import 'package:millat/resources/shop/bloc/service/shop_services.dart';
import '../../models/articles/article_by_id_model.dart';
import '../../models/banners/banners_model.dart';
import '../../models/home_sub_category_card/home_sub_category_card_model.dart';
import '../../models/home_sub_category_card/home_sub_category_healthy_diet.dart';
import '../../models/home_sub_category_card/home_sub_category_sunnah_model.dart';
import '../../models/orders/fetch_order_byId_model.dart';
import '../../models/orders/orders_model.dart';
import '../../models/products/product_item_health/product_item_health_model.dart';
import '../../models/products/product_item_sunnah/products_items_sunnah_model.dart';
import '../../models/products/product_item_women/products_item_women_model.dart';
import '../../models/shop_by_brand/shop_ad_brand_by_id.dart';
import '../../models/shop_by_brand/shop_ad_brand_model.dart';
import '../../models/shop_by_brand/shop_by_brand_models.dart';
import '../../models/shop_by_brand/shop_by_brand_products.dart';
import '../../models/shop_by_brand/top_brands/brand_items_by_id_model.dart';
import '../../models/shop_by_brand/top_brands/top_brands_model.dart';
import '../../models/shop_products/shop_products_model.dart';
import '../../models/wishlist/wishllist_models.dart';

part 'shop_products_event.dart';
part 'shop_products_state.dart';
part 'shop_products_bloc.freezed.dart';

class ShopProductsBloc extends Bloc<ShopProductsEvent, ShopProductsState> {
  ShopService shopService = ShopService();
  OrdersService ordersService = OrdersService();
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
    on<PostOnlieOrders>(_postOnlieOrders);
    on<PostOrderIdOnlinePayment>(_postOrderIdOnlinePayment);
    on<PostOrdersRewards>(_postOrderRewards);
    on<FetchOrdersById>(_fetchOrdersById);
    on<FetchOrdersbyFilterEvent>(_fetchOrdersbyFilterEvent);
    on<CancelOrder>(_cancelOrder);
    on<FetchShopHomeBackgroundCard>(_fetchShopHomeBackgroundCard);
    on<FetchShopHomeBackgroundCardHelthyDiet>(
        _fetchShopHomeBackgroundCardHelthyDiet);
    on<FetchShopHomeBackgroundCardSunnah>(_fetchShopHomeBackgroundCardSunnah);
    on<FetchShopAdBrands>(_fetchShopAdBrands);
    on<FetchTopBrands>(_fetchTopBrands);
    on<FetchProductItemsSubcategorySunnah>(_fetchProductItemsSubcategorySunnah);
    on<FetchProductItemsSubcategoryWomen>(_fetchProductItemsSubcategoryWomen);
    on<FetchProductItemsSubcategoryHealth>(_fetchProductItemsSubcategoryHealth);
    on<ChangeShopBannerIndex>(_changeShopBannerIndex);
    on<ChangeBrandBannerIndex>(_changeBrandBannerIndex);
    on<ShowOrderProgressEvent>(_showProgressEvent);
    on<IndexChangeOnOrderProgress>(_indexChangeOnOrderProgress);
    on<IndexChangeOnWomensCareBanner>(indexChangeOnWomensCareBanner);
    on<FetchShopAdBrandsById>(_fetchShopAdBrandsById);
    on<SavePaymentMethodType>(_saveMethodType);
    on<FetchSpecificCategeryItems>(_fetchSpecificCategeryItems);
    on<FetchProductsById>(_fetchProductsById);
    on<FetchBrandProducts>(_fetchBrandProducts);
    on<FetchCoupons>(_fetchCoupons);
    on<IsPromoCodeAvailable>(_isPromoCodeAvailable);
    on<ChangeIndexEvent>(_changeIndex);
    on<ReturnOrder>(_returnOrder);
    on<FetchBrandItemsbyId>(_fetchbrandItemsById);
    on<FetchAllBrandsEvent>(_fetchAllBrandsEvent);
    on<FetchOrderReasons>(_fetchOrderReasons);
    on<AddReasons>(_addReasons);
    on<FetchArticlesId>(_fetchArticlesById);
    on<FetchProducts>(_fetchProducts);
    on<FetchArticlesCategory>(_fetchArticlesCategory);
    on<SaveArticleCategoryFilterVal>(_saveArticleCategoryFilterVal);
    on<FetchArticlesByCategory>(_fetchArticlesByCategory);
    on<FetchBrandProductsItemCount>(_fetchBrandProductsItemCount);
  }

  FutureOr<void> _fetchFlashSaleProducts(
      FetchFlashSaleProducts event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await shopService.fetchFlashSaleProducts(event.endPointSlug);
      print(data);
      emit(state.copyWith(flashSaleproducts: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(errorMessage: "An error occurred", isLoading: false));
    }
  }

  FutureOr<void> _fetchPopularProducts(
      FetchPopularProducts event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(popularProductLoading: true));

    try {
      final data = await shopService.fetchPopularProducts(event.endPointSlug);
      emit(state.copyWith(popularProducts: data, popularProductLoading: false));
      print("popular products data ========================= $data");
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", popularProductLoading: false));
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

  _fetchArticles(
    FetchArticles event,
    Emitter<ShopProductsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await shopService.fetchArticles();
      if (event.searchQuery.isEmpty) {
        emit(state.copyWith(articles: data.result?.articles, isLoading: false));
      }

      // Filter articles based on the search query (event.searchQuery)
      final filteredArticles = data.result?.articles
          ?.where((article) =>
              article.title
                  ?.toLowerCase()
                  .contains(event.searchQuery.toLowerCase()) ==
              true)
          .toList();

      emit(state.copyWith(articles: filteredArticles, isLoading: false));
    } catch (e) {
      emit(state.copyWith(
        errorMessage: "An error occurred",
        isLoading: false,
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
    FetchWishList event,
    Emitter<ShopProductsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data = await shopService.fetchWishlist(event.context);

      final wishListItems =
          data.result?.wishlist?.products!.map((item) => item.id).toList();

      emit(
        state.copyWith(
          wishList: data,
          isLoading: false,
          wishListItems: Set<String>.from(wishListItems ?? []),
        ),
      );
    } catch (e) {
      emit(state.copyWith(
        errorMessage: "An error occurred: $e",
        isLoading: false,
      ));
    }
  }

  FutureOr<void> _searchProduct(
      SearchProduct event, Emitter<ShopProductsState> emit) async {
    if (event.query == "") {
      emit(state.copyWith(searchProducts: null));
    } else {
      try {
        final data = await shopService.fetchSearchProduct(event.query);
        emit(state.copyWith(
          searchProducts: data,
        ));
        print('serch result product on the data $data');
      } catch (e) {
        emit(state.copyWith(
          errorMessage: "An error occurred",
        ));
      }
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
          wishlist: state.wishList!.result!.wishlist?.copyWith(
            products: state.wishList!.result!.wishlist?.products
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
      print('on bloc here of the shop by brand $data');
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _tabIndexChangeEvent(
      TabIndexChangeEvent event, Emitter<ShopProductsState> emit) {
    emit(state.copyWith(index: event.index));
  }

  _fetchOrders(FetchOrders event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: ""));
    try {
      final data = await ordersService.fetchOrders(event.context);
      emit(state.copyWith(orderModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString(), isLoading: false));
    }
  }

  FutureOr<void> _postOrders(
      PostOrders event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(errorMessage: "", isLoading: true, orderSucces: false));
    try {
      final data = await ordersService.postOrder(
        context: event.context,
        totalPrice: event.totalPrice,
        pickUpAddress: event.pickupLocation,
        totalQuantity: event.quantity,
        shippingCharges: event.shippingCharges,
        totalDiscount: event.totalDiscount,
        weight: event.totalDiscount,
        id: event.id,
      );

      final orderIds = data["result"]["orderIds"][0];
      print('here before $orderIds');

      emit(state.copyWith(
        isLoading: false,
        orderId: orderIds,
        orderSucces: true,
        totalAmount: event.totalPrice,
      ));
      print('here is the order id in the bloc ${state.orderId}');
    } catch (e) {
      emit(state.copyWith(
        errorMessage: e.toString(),
        isLoading: false,
        orderSucces: false,
      ));
    }
  }

  _postOrderIdOnlinePayment(
      PostOrderIdOnlinePayment event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(
        errorMessage: "", orderIdRazorPay: "", orderSucces: false));

    try {
      final data = await ordersService.postOrderIdOnlinePayment(
          context: event.context, amount: event.amount);
      emit(state.copyWith(
          orderIdRazorPay: data, totalAmount: event.amount, orderSucces: true));
      print("order id   ${state.orderIdRazorPay}");
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString(), orderSucces: false));
    }
  }

  FutureOr<void> _postOnlieOrders(
      PostOnlieOrders event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(errorMessage: "", isLoading: true, orderSucces: false));
    try {
      final data = await ordersService.postOnlineOrder(
          context: event.context,
          razorpayOrderId: event.razorpayOrderId,
          razorpayPaymentId: event.razorpayPaymentId,
          razorpaySignature: event.razorpaySignature,
          addressId: event.addressId);
      print("online orders data $data");
      final orderIds = data["result"]["orderIds"][0];
      print('here before $orderIds');

      emit(state.copyWith(
          isLoading: false,
          orderId: orderIds,
          orderIdRazorPay: "",
          orderSucces: true));
      print('here is the order id in the bloc ${state.orderId}');
    } catch (e) {
      emit(state.copyWith(
          errorMessage: e.toString(),
          isLoading: false,
          orderIdRazorPay: "",
          orderSucces: false));
    }
  }

  _fetchOrdersById(
      FetchOrdersById event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      errorMessage: "",
      orderSucces: false,
    ));
    try {
      final data = await ordersService.fetchOrdersById(event.context, event.id);
      print('here ares the results of ordersy by id in the bloc $data');
      emit(state.copyWith(
        ordersByIdModel: data,
        isLoading: false,
        orderId: event.id,
      ));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString(), isLoading: false));
    }
  }

  _fetchOrdersbyFilterEvent(
      FetchOrdersbyFilterEvent event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: ""));
    try {
      final data = await ordersService.fetchFilterOrders(
          event.context, event.filterName);
      emit(state.copyWith(orderModel: data, isLoading: false));
      print('jsone here on a orders the result of filteres bloc $data');
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString(), isLoading: false));
    }
  }

  _cancelOrder(CancelOrder event, Emitter<ShopProductsState> emit) {
    emit(state.copyWith(isLoading: true, errorMessage: ""));
    try {
      ordersService.cancelOrder(
          context: event.context, shiprocketId: event.shiprockeId);
      emit(state.copyWith(isLoading: false, errorMessage: ""));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: "$e"));
    }
  }

  _returnOrder(event, Emitter<ShopProductsState> emit) {
    emit(state.copyWith(isLoading: true, errorMessage: ""));
    try {
      ordersService.returnOrder(
          context: event.context, shiprocketId: event.shiprockeId);
      emit(state.copyWith(isLoading: false, errorMessage: ""));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: "$e"));
    }
  }

  _fetchShopHomeBackgroundCard(FetchShopHomeBackgroundCard event,
      Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: ""));
    try {
      final data = await shopService.fetchShopHomeBackgroundCard(
          slug: "women_product_home_card");
      emit(state.copyWith(
          isLoading: false, shopHomeBackgroundCardModelWomens: data));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: "$e"));
    }
  }

  _fetchShopHomeBackgroundCardHelthyDiet(
      FetchShopHomeBackgroundCardHelthyDiet event,
      Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: ""));
    try {
      final data = await shopService.fetchShopHomeBackgroundCardHelthyDiet(
          slug: "healthy_diet_product_home_card");

      emit(state.copyWith(
          isLoading: false, shopHomeBackgroundCardModelHealthyDiet: data));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: "$e"));
    }
  }

  _fetchShopHomeBackgroundCardSunnah(FetchShopHomeBackgroundCardSunnah event,
      Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: ""));
    try {
      final data = await shopService.fetchShopHomeBackgroundSunnah(
          slug: "sunnah_product_home_card");

      emit(state.copyWith(
          isLoading: false, shopHomeBackgroundCardModelSunnah: data));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: "$e"));
    }
  }

  _fetchShopAdBrands(
      FetchShopAdBrands event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: ""));
    try {
      final data = await shopService.fetchShopBrands();

      emit(state.copyWith(isLoading: false, shopAdBrands: data));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: "$e"));
    }
  }

  _fetchTopBrands(FetchTopBrands event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: ""));
    try {
      final data = await shopService.fetchTopBrands();

      emit(state.copyWith(isLoading: false, topBrandsModel: data));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: "$e"));
    }
  }

  _fetchProductItemsSubcategorySunnah(FetchProductItemsSubcategorySunnah event,
      Emitter<ShopProductsState> emit) async {
    try {
      final data = await shopService.fetchProductItemsSubcategorySunnah();

      emit(state.copyWith(
          isLoading: false, productItemsSubCategorySunnahModel: data));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: "$e"));
    }
  }

  _fetchProductItemsSubcategoryWomen(FetchProductItemsSubcategoryWomen event,
      Emitter<ShopProductsState> emit) async {
    try {
      final data = await shopService.fetchProductItemsSubcategoryWomen();

      emit(state.copyWith(
          isLoading: false, productItemsSubCategoryWomenModel: data));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: "$e"));
    }
  }

  _fetchProductItemsSubcategoryHealth(FetchProductItemsSubcategoryHealth event,
      Emitter<ShopProductsState> emit) async {
    try {
      final data = await shopService.fetchProductItemsSubcategoryHealth();

      emit(state.copyWith(
          isLoading: false, productItemsSubCategoryHealthModel: data));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: "$e"));
    }
  }

  _changeShopBannerIndex(
      ChangeShopBannerIndex event, Emitter<ShopProductsState> emit) {
    emit(state.copyWith(shopBannerIndex: event.index));
  }

  _changeBrandBannerIndex(
      ChangeBrandBannerIndex event, Emitter<ShopProductsState> emit) {
    emit(state.copyWith(brandBannerIndex: event.index));
  }

  _showProgressEvent(
      ShowOrderProgressEvent event, Emitter<ShopProductsState> emit) {
    emit(state.copyWith(showProgress: !state.showProgress));
  }

  _indexChangeOnOrderProgress(
      IndexChangeOnOrderProgress event, Emitter<ShopProductsState> emit) {
    emit(state.copyWith(ordereProgressIndex: event.index));
  }

  indexChangeOnWomensCareBanner(
      IndexChangeOnWomensCareBanner event, Emitter<ShopProductsState> emit) {
    emit(state.copyWith(womensCareBannerIndex: event.index));
  }

  _fetchShopAdBrandsById(
      FetchShopAdBrandsById event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: ""));
    try {
      final data = await shopService.fetchAdShopBrandsbyId(id: event.id);
      emit(state.copyWith(isLoading: false, shopAdBrandsById: data));
      print("ad brands bloc ${state.shopAdBrandsById}");
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: "$e"));
    }
  }

  _saveMethodType(
      SavePaymentMethodType event, Emitter<ShopProductsState> emit) {
    emit(state.copyWith(paymentMethod: event.index));
  }

  _fetchSpecificCategeryItems(
      FetchSpecificCategeryItems event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data =
          await shopService.fetchSpecificCategoryItems(slug: event.slug);
      emit(state.copyWith(specificCategoryModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _fetchProductsById(
      FetchProductsById event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await shopService.fetchProductByid(id: event.id);
      emit(state.copyWith(productByIdModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _fetchBrandProducts(
      FetchBrandProducts event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await shopService.fetchBrandProducts(brandId: event.brandId);
      emit(state.copyWith(brandProductsModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _fetchCoupons(FetchCoupons event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await shopService.fetchCoupons();
      emit(state.copyWith(couponModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _isPromoCodeAvailable(
      IsPromoCodeAvailable event, Emitter<ShopProductsState> emit) {
    emit(state.copyWith(isPromoCodeAvailable: event.value));
  }

  _changeIndex(ChangeIndexEvent event, Emitter<ShopProductsState> emit) {
    emit(state.copyWith(indexVal: event.index));
  }

  _fetchbrandItemsById(
      FetchBrandItemsbyId event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await shopService.fetchBrandItemsById(id: event.id);
      emit(state.copyWith(brandItemsModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _fetchAllBrandsEvent(
      FetchAllBrandsEvent event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await shopService.fetchBrands();

      emit(state.copyWith(brandModels: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _fetchOrderReasons(
      FetchOrderReasons event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await ordersService.fetchReasons(event.endpoint);

      emit(state.copyWith(reasonModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _addReasons(AddReasons event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await ordersService.addReason(
          text: event.text, endPoint: event.endpoint);
      print(data);
      emit(state.copyWith(isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      throw Exception(e);
    }
  }

  _fetchArticlesById(
      FetchArticlesId event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await shopService.fetchArticleById(event.id);

      emit(state.copyWith(articleModelById: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _fetchProducts(FetchProducts event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await shopService.fetchProducts();

      emit(state.copyWith(productModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _postOrderRewards(
      PostOrdersRewards event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(errorMessage: "", isLoading: true, orderSucces: false));
    try {
      final data = await ordersService.postOrderRewards(
        context: event.context,
        price: event.price,
        addressId: event.addressId,
        totalQuantity: event.totalQuantity,
        productId: event.productId,
        brandId: event.brandId,
        coins: event.coins,
        color: event.color,
        size: event.size,
      );

      final orderIds = data["result"]["orderIds"][0];
      print('here orderid $orderIds');

      emit(state.copyWith(
          isLoading: false, orderId: orderIds, orderSucces: true));
      print('here is the order id in the bloc ${state.orderId}');
    } catch (e) {
      emit(state.copyWith(
          errorMessage: e.toString(), isLoading: false, orderSucces: false));
    }
  }

  _fetchArticlesCategory(
      FetchArticlesCategory event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await shopService.fetchingArticleCategory();

      emit(state.copyWith(articleCategories: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _saveArticleCategoryFilterVal(
      SaveArticleCategoryFilterVal event, Emitter<ShopProductsState> emit) {
    emit(state.copyWith(filterVal: event.filterVal));
  }

  _fetchArticlesByCategory(
      FetchArticlesByCategory event, Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      if (state.filterVal == "") {
        final data = await shopService.fetchArticles();

        emit(state.copyWith(articles: data.result?.articles, isLoading: false));
      } else {
        final data = await shopService.fetchArticleByCategory(event.category);

        emit(state.copyWith(articles: data.result?.articles, isLoading: false));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _fetchBrandProductsItemCount(FetchBrandProductsItemCount event,
      Emitter<ShopProductsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data =
          await shopService.fetchBrandProductsItemsCount(productIds: event.ids);

      emit(state.copyWith(brandProductsItemCount: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }
}
