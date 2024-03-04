import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/loader.dart';
import '../../../../components/common_widgets/shop_products_widget.dart';
import '../../../../utils/utils.dart';
import '../../bloc/logic/category_bloc/category_bloc.dart';

class ShopSpecificCategoryBannerView extends StatelessWidget {
  final String imageUrl;
  final String category;
  final List<String> subCategory;
  const ShopSpecificCategoryBannerView(
      {super.key,
      required this.imageUrl,
      required this.category,
      required this.subCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => CategoryBloc()
          ..add(
            FetchProductsByFilter(
              color: [],
              category: category,
              subCategory: [],
              minPrice: 0,
              maxPrice: 0,
              brand: [],
              itemId: subCategory,
            ),
          ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Utilities().buildCachedNetworkImage(imageUrl: imageUrl),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20)
                        .copyWith(top: 20),
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
                              state.multiFilterProduct == null
                          ? const Loader()
                          : GridView.builder(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20,
                                mainAxisExtent: 315,
                                mainAxisSpacing: 20,
                              ),
                              itemCount: state.multiFilterProduct?.length,
                              itemBuilder: (context, index) {
                                final data = state.multiFilterProduct?[index];
                                return GestureDetector(
                                  onTap: () {
                                    context.pushNamed(
                                        MyAppRouteConstants
                                            .singleProductRouteName,
                                        pathParameters: {'id': data?.id ?? ""});
                                  },
                                  child: ShopProductWidget(
                                    color: data?.color ?? "",
                                    size: data?.size?[0].size ?? "",
                                    brandId: data?.brand!.id,
                                    isWishlisted: false,
                                    brand: data?.brand!.name.toString(),
                                    productId: data?.id,
                                    title: data?.title,
                                    image: data?.images?[0],
                                    discountPrice: data?.salePrice ?? 0,
                                    actualPrice:
                                        data?.regularPrice?.toInt() ?? 0,
                                    discount: data?.discount?.toInt() ?? 0,
                                  ),
                                );
                              },
                            );
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, top: 40),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: ColorManager.whiteColor),
                  child: BackButton(
                    onPressed: () {
                      context.pop();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
