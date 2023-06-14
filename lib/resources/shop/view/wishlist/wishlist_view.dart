import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/common_widgets/shop_products_widget.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import '../products/single_product_view.dart';

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
        title: Text("Wishlist",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: BlocBuilder<ShopProductsBloc, ShopProductsState>(
        builder: (context, state) => GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            // mainAxisSpacing: 20,
            mainAxisExtent: 320,
          ),
          itemCount: state.wishList?.products?.length,
          itemBuilder: (context, index) {
            final data = state.wishList?.products![index];
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SingleProductView(
                          passValue: data,
                        )));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 15),
                    Container(
                      child: ShopProductWidget(
                        productId: data?.id,
                        title: data!.title,
                        image: data.colors[0].images[0],
                        discountPrice: data.discountPrice.toInt(),
                        actualPrice: data.actualPrice.toInt(),
                        discount: data.discount.toInt(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
