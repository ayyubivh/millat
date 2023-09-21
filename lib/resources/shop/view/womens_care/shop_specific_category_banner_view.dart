import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/utils/loader.dart';
import '../../../../components/common_widgets/shop_products_widget.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/size_utility.dart';
import '../../bloc/logic/category_bloc/category_bloc.dart';
import '../products/single_product_view.dart';

class ShopSpecificCategoryBannerView extends StatelessWidget {
  final String imageUrl;
  final String category;
  const ShopSpecificCategoryBannerView(
      {super.key, required this.imageUrl, required this.category});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CategoryBloc>(context)
          .add(FetchFilterProducts(category: "", subCategory: category));
    });
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(imageUrl),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ).copyWith(top: 30),
              child: const Text(
                "Discount Products",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                return state.productLoading ||
                        state.product?.result?.products == null
                    ? const Loader()
                    : Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        height: SizeUtility(context).height,
                        width: SizeUtility(context).width,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisExtent: 250,
                          ),
                          itemCount: state.product!.result!.products?.length,
                          itemBuilder: (context, index) {
                            final data =
                                state.product!.result!.products?[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => SingleProductView(
                                      id: data?.id ?? "",
                                    ),
                                  ),
                                );
                              },
                              child: ShopProductWidget(
                                color: data?.color ?? "",
                                size: data?.size?[0].size ?? "",
                                brandId: data?.brand!.id,
                                isWishlisted: false,
                                brand: data?.brand!.name.toString(),
                                productId: data?.id,
                                title: data?.title,
                                image: data?.images![0],
                                discountPrice: data?.salePrice?.toInt() ?? 0,
                                actualPrice: data?.regularPrice?.toInt() ?? 0,
                                discount: data?.discount?.toInt() ?? 0,
                              ),
                            );
                          },
                        ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
