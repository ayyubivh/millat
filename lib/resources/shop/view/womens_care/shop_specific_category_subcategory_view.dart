import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/string_constants.dart';

import '../../../../components/common_widgets/shop_products_widget.dart';
import '../../../../utils/size_utility.dart';
import '../../bloc/logic/category_bloc/category_bloc.dart';
import '../products/single_product_view.dart';

class ShopSubCategorySpecificView extends StatelessWidget {
  final String category;
  const ShopSubCategorySpecificView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      debugPrint('here category $category');
      BlocProvider.of<CategoryBloc>(context)
          .add(FetchFilterProducts(category: "", subCategory: category));
    });
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.whiteColor,
        foregroundColor: ColorManager.blackColor,
        title: Text(
          category,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            return state.product?.result == null || state.productLoading
                ? Center(
                    child: CircularProgressIndicator(
                        color: ColorManager.greenColor1),
                  )
                : state.product!.result!.products!.isEmpty
                    ? Center(
                        child: Text(
                          Appstrings.noProductsFound,
                          style: TextStyle(
                            fontSize: 20,
                            color: ColorManager.black79,
                          ),
                        ),
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
                          itemCount: state.product!.result!.products?.length,
                          itemBuilder: (context, index) {
                            if (state.product?.result?.products == null) {
                              return const Loader();
                            }
                            final data =
                                state.product!.result!.products![index];
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
                                color: data.color ?? "",
                                size: data.size?[0].size ?? "",
                                brandId: data.brand!.id,
                                isWishlisted: false,
                                brand: data.brand!.name.toString(),
                                productId: data.id,
                                title: data.title,
                                image: data.images![0],
                                discountPrice: data.salePrice?.toInt() ?? 0,
                                actualPrice: data.regularPrice?.toInt() ?? 0,
                                discount: data.discount?.toInt() ?? 0,
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
