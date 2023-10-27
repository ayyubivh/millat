import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/routes/app_router_constants.dart';

import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../../utils/utils.dart';

class SingleArticleView extends StatelessWidget {
  final String id;
  const SingleArticleView({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ShopProductsBloc>(context)
          .add(ShopProductsEvent.fetchArticlesbyId(id: id));
    });
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorManager.whiteColor,
        elevation: 0,
        centerTitle: false,
        title: Text(
          Appstrings.articles,
          style: TextStyle(
              color: ColorManager.blackColor, fontWeight: FontWeight.w700),
        ),
        leading: BackButton(
          color: ColorManager.blackColor,
        ),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<ShopProductsBloc, ShopProductsState>(
          builder: (context, state) {
            final data = state.articleModelById?.result?.article;
            if (data == null) {
              return const Loader();
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 350,
                  width: SizeUtility(context).width,
                  child: Stack(
                    children: [
                      Container(
                        height: 240,
                        color: ColorManager.darkGreenClr4f.withOpacity(0.3),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30)
                            .copyWith(top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.title ?? "",
                              style: const TextStyle(
                                  color: black16,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            kHeight30,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '${data.brand} • ${Utilities.formatDate(data.date ?? "")}',
                                  style: TextStyle(
                                      color: ColorManager.textGrey84,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: ColorManager.darkGreenClr4f,
                                  ),
                                  child: Text(
                                    Appstrings.popular,
                                    style: TextStyle(
                                        color: ColorManager.whiteColor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 140,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          width: SizeUtility(context).width / 4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Utilities().buildCachedNetworkImage(
                              imageUrl: data.image!,
                              height: 202,
                              width: double.infinity,
                              boxFit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                kHeight15,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    data.content ?? "",
                    style: TextStyle(
                        color: ColorManager.textGrey99,
                        fontSize: 17,
                        height: 1.3),
                  ),
                ),
                kHeight100,
                kHeight50,
              ],
            );
          },
        ),
      ),
      bottomSheet: BlocBuilder<ShopProductsBloc, ShopProductsState>(
        builder: (context, state) {
          final data = state.articleModelById?.result?.article;
          // if (data == null) {
          //   return const Loader();
          // }
          return GestureDetector(
            onTap: () {
              context.pushNamed(MyAppRouteConstants.singleProductRouteName);
            },
            child: Container(
              height: 70,
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                  color: ColorManager.darkGreenClr4f,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Utilities().buildCachedNetworkImage(
                          imageUrl: data?.product?.images?[0],
                          boxFit: BoxFit.cover,
                          height: 56,
                          width: 56,
                        )),
                  ),
                  kWidth10,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 144,
                        child: Text(
                          data?.product?.title ?? "",
                          style: TextStyle(
                            color: ColorManager.whiteColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      kHeight10,
                      Text(
                        data?.product?.salePrice.toString() ?? "0",
                        style: TextStyle(
                            color: ColorManager.whiteColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    'Buy Now',
                    style: TextStyle(
                        color: ColorManager.whiteColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                    onPressed: () {
                      // context.read<CartBloc>().add(CartEvent.addCart(
                      //       productId: passValue!.product!.id,
                      //       basePrice: passValue!.product!.actualPrice!,
                      //       size: passValue!.product!.size![0].value!,
                      //       context: context,
                      //       color: passValue!.product!.colors![0].text!,
                      //       quantity: 1,
                      //       brandId: passValue!.product!.brand!,
                      //     ));
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                  kWidth10,
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
