import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/common_widgets/shop_products_widget.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/products/single_product_view_brand.dart';
import 'package:millat/utils/color_manager.dart';

class WishListView extends StatefulWidget {
  const WishListView({super.key});

  @override
  State<WishListView> createState() => _WishListViewState();
}

class _WishListViewState extends State<WishListView> {
  @override
  void initState() {
    BlocProvider.of<ShopProductsBloc>(context).add(FetchWishList(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: const Text("Wishlist",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            context
                .read<ShopProductsBloc>()
                .add(const TabIndexChangeEvent(index: 0));
          },
        ),
      ),
      body: BlocBuilder<ShopProductsBloc, ShopProductsState>(
        builder: (context, state) {
          return state.isLoading ||
                  state.wishList?.result?.wishlist.products == null
              ? Center(
                  child: CircularProgressIndicator(
                    color: ColorManager.greenColor1,
                  ),
                )
              : state.wishList!.result!.wishlist.products!.isEmpty
                  ? const Center(
                      child: Text('Wishlist is Empty'),
                    )
                  : GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisExtent: 320,
                      ),
                      itemCount:
                          state.wishList?.result?.wishlist.products!.length,
                      itemBuilder: (context, index) {
                        final data =
                            state.wishList?.result?.wishlist.products?[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return SingleProductViewBrand(
                                passValue: data,
                              );
                            }));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 15),
                                ShopProductWidget(
                                  isWishlisted: state.isWishListed,
                                  brand: data?.brand ?? 'null',
                                  productId: data?.id ?? 'null',
                                  title: data?.title,
                                  image: data?.colors[0].images[0] ?? 'null',
                                  discountPrice:
                                      data?.discountPrice.toInt() ?? 0,
                                  actualPrice: data?.actualPrice.toInt() ?? 0,
                                  discount: data?.discount.toInt() ?? 0,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
        },
      ),
    );
  }
}
