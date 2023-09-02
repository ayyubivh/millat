import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/string_constants.dart';

import '../../../../components/common_widgets/shop_products_widget.dart';
import '../../../../utils/size_utility.dart';
import '../../bloc/logic/category_bloc/category_bloc.dart';
import '../products/single_product_view.dart';

class WomensCareSubCategoryView extends StatelessWidget {
  const WomensCareSubCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CategoryBloc>(context)
          .add(const FetchFilterProducts(category: "women", subCategory: ""));
    });
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.whiteColor,
        foregroundColor: ColorManager.blackColor,
        title: const Text(
          Appstrings.womensCare,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            return state.productLoading
                ? Center(
                    child: CircularProgressIndicator(
                        color: ColorManager.greenColor1),
                  )
                : SizedBox(
                    // padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: SizeUtility(context).height,
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisExtent: 250,
                      ),
                      itemCount: state.product!.result!.products.length,
                      itemBuilder: (context, index) {
                        final data = state.product!.result!.products[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SingleProductView(
                                  passValue: data,
                                ),
                              ),
                            );
                          },
                          child: ShopProductWidget(
                            color: data.colors[0].text,
                            size: data.size[0].value,
                            brandId: data.brand!.id,
                            isWishlisted: false,
                            brand: data.brand!.name.toString(),
                            productId: data.id,
                            title: data.title,
                            image: data.colors[0].images![0],
                            discountPrice: data.discountPrice.toInt(),
                            actualPrice: data.actualPrice.toInt(),
                            discount: data.discount.toInt(),
                          ),
                        );
                      },
                    ),
                  );
          },
        ),
      ),
    );
  }
}
