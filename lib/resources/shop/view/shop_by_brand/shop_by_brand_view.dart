import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/utils/globals.dart';

import '../../../../components/common_widgets/filters_row_widgets.dart';
import '../../../../components/common_widgets/shop_products_widget.dart';

import '../../../../utils/size_utility.dart';
import '../../bloc/logic/shop_bloc/shop_products_bloc.dart';
import '../products/single_product_view.dart';

class ShopByBrandView extends StatelessWidget {
  final String brandName;
  const ShopByBrandView({super.key, required this.brandName});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ShopProductsBloc>(context)
          .add(FetchShopByBrandProducts(brandName: brandName));
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text(brandName,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ImageIcon(
              AssetImage(
                'assets/icons/search.png',
              ),
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ImageIcon(
              AssetImage(
                'assets/icons/cart.png',
              ),
              color: Colors.black,
            ),
          ),
        ],
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: BlocBuilder<ShopProductsBloc, ShopProductsState>(
        builder: (context, state) => state.isLoading
            ? Center(
                child: CircularProgressIndicator(
                  color: green77,
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    FiltersRowWidgets(),
                    const SizedBox(
                      height: 30,
                    ),
                    state.brandProduct?.products == null
                        ? Center(
                            child: CircularProgressIndicator(
                              color: green77,
                            ),
                          )
                        : SizedBox(
                            height: SizeUtility(context).height,
                            child: GridView.builder(
                              itemCount: state.brandProduct!.products.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 20,
                                      mainAxisSpacing: 20,
                                      mainAxisExtent: 350),
                              itemBuilder: (context, index) {
                                final data =
                                    state.brandProduct!.products[index];
                                return GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => SingleProductView(
                                          passValue: data,
                                        ),
                                      ));
                                    },
                                    child: ShopProductWidget(
                                        productId: data.id,
                                        image: data.colors[0].images[0],
                                        title: data.title,
                                        actualPrice: data.actualPrice,
                                        discount: data.discount,
                                        discountPrice: data.discountPrice));
                              },
                            ),
                          ),
                  ],
                )),
              ),
      ),
    );
  }
}
