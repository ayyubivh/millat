import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/components/common_widgets/shop_products_widget.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:millat/utils/size_utility.dart';

import '../../../../routes/app_router_constants.dart';

class WishListView extends StatelessWidget {
  const WishListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.appBarColor,
        elevation: 0,
        centerTitle: false,
        title: const Text("Wishlist",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: ColorManager.blackColor,
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: BlocProvider(
        create: (context) => ShopProductsBloc()..add(FetchWishList(context)),
        child: BlocBuilder<ShopProductsBloc, ShopProductsState>(
          builder: (context, state) {
            return state.wishList?.result?.wishlist?.products?.isEmpty ?? true
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kHeight10,
                        Text(
                          'Oops!!',
                          style: TextStyle(
                            color: ColorManager.redColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        kHeight10,
                        Text(
                          'Your Wishlist is Empty',
                          style: TextStyle(
                            color: ColorManager.blackColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: SizeUtility(context).height / 8,
                          ),
                          child:
                              Image.asset("assets/images/wishlist_empty.png"),
                        ),
                      ],
                    ),
                  )
                : GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                    ),
                    itemCount:
                        state.wishList?.result?.wishlist?.products!.length,
                    itemBuilder: (context, index) {
                      final data =
                          state.wishList?.result?.wishlist?.products?[index];
                      if (state.isLoading || data == null) {
                        return ShimmerUtils.productsShimmers(context: context);
                      }
                      return GestureDetector(
                        onTap: () {
                          context.pushNamed(
                              MyAppRouteConstants.singleProductRouteName,
                              pathParameters: {"id": data.id.toString()});
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: ShopProductWidget(
                            color: data.color ?? "",
                            size: data.size?[0].size ?? "",
                            brandId: data.id,
                            isWishlisted: state.isWishListed,
                            brand: "",
                            productId: data.id ?? 'null',
                            title: data.title,
                            image: data.images?[0] ?? 'null',
                            discountPrice: data.salePrice ?? 0,
                            actualPrice: data.regularPrice?.toInt() ?? 0,
                            discount: data.discount?.toInt() ?? 0,
                          ),
                        ),
                      );
                    },
                  );
          },
        ),
      ),
      bottomSheet: BlocBuilder<ShopProductsBloc, ShopProductsState>(
        builder: (context, state) {
          final data = state.wishList?.result?.wishlist?.products;
          if (data == null) {
            return const SizedBox();
          }
          return data.isNotEmpty
              ? const SizedBox()
              : Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  height: 150,
                  child: Column(
                    children: [
                      const Text(
                        'Start adding items to your wishlist and save your favorite products for later.',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                      kHeight20,
                      MainButton(
                        title: 'Start Exploring',
                        onPressed: () {
                          context.pop();
                        },
                      )
                    ],
                  ),
                );
        },
      ),
    );
  }
}
