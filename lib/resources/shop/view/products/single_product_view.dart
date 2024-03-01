import 'dart:async';
import 'package:flutter/material.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:millat/utils/utils.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/components/common_widgets/cart_icon_widget.dart';
import 'package:millat/resources/shop/bloc/logic/cart_bloc/cart_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/review_bloc/bloc/review_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/bloc/models/products/product_by_id_model.dart';

class SingleProductView extends StatelessWidget {
  final String id;
  const SingleProductView({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ShopProductsBloc>()
        ..add(ShopProductsEvent.fetchProductsById(id: id))
        ..add(const ShopProductsEvent.changeSizeIndex(0));
      context.read<ReviewBloc>()
        ..add(ReviewEvent.fetchRatingEvent(id: id, context: context))
        ..add(ReviewEvent.fetchReviewComments(id: id, context: context));
    });
    // int selectedSize = 0;

    int quantity = 1;
    int selectedColor = 0;
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        final data = state.productByIdModel?.result?.product;
        int selectedSize = state.selectedSizeIndex;
        final divider = Divider(
          thickness: 6,
          color: ColorManager.grey08,
        );
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: BackButton(color: ColorManager.blackColor),
            actions: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () => context
                      .pushNamed(MyAppRouteConstants.shopSearchRouteName),
                  child: ImageIcon(
                    const AssetImage(
                      'assets/icons/search.png',
                    ),
                    color: ColorManager.blackColor,
                  ),
                ),
              ),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return CartIconWidget(
                    color: ColorManager.blackColor,
                    cartLength: state.cartLength,
                  );
                },
              )
            ],
          ),
          body: state.isLoading || data == null
              ? ShimmerUtils.singleProductShimmer(context)
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      CarouselView(data: data),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25)
                            .copyWith(bottom: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            kHeight10,
                            Text(
                              data.title ?? "",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                              ),
                            ),
                            Text(data.brand?.name ?? 'Millat',
                                style: const TextStyle(
                                    color: black60, fontSize: 17, height: 1.5)),
                            Row(
                              children: [
                                Text('${data.size?[selectedSize].salePrice} ₹',
                                    style: TextStyle(
                                      color: ColorManager.primary,
                                      fontSize: 21,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5,
                                    )),
                                kWidth10,
                                Text('₹${data.regularPrice}',
                                    style: const TextStyle(
                                      color: black60,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.lineThrough,
                                      height: 1.5,
                                    )),
                              ],
                            ),
                            kHeight10,
                            reviews(),
                            selectOptions(context, data, selectedColor,
                                selectedSize, quantity, divider),
                            Text(
                              'Product Description',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: ColorManager.blackColor),
                            ),
                            kHeight20,
                            Text(
                              Utilities.removeFootnotesFromMeaning(
                                  data.description ?? ""),
                              style: TextStyle(
                                  fontSize: 16, color: ColorManager.textGrey99),
                            ),
                            kHeight20,
                            Text(
                              'Made of: ${data.madeFrom ?? ""}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  color: ColorManager.blackColor),
                            ),
                            kHeight20,
                            Text(
                              'Care: ${data.productCareInfo ?? ""}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  color: ColorManager.blackColor),
                            ),
                            kHeight20,
                            data.color == ""
                                ? const SizedBox()
                                : Column(
                                    children: [
                                      Text(
                                        'Colors: ${data.color ?? ""}',
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      kHeight10,
                                      // SizedBox(
                                      //   height: 30,
                                      //   child: Padding(
                                      //       padding: const EdgeInsets.only(
                                      //           right: 20),
                                      //       child: CircleAvatar(
                                      //         radius: 15,
                                      //         backgroundColor: Utilities
                                      //             .getColorFromApiString(
                                      //                 data.color ?? ""),
                                      //       )),
                                      // ),
                                    ],
                                  ),
                            kHeight20,
                            Text(
                              data.brand?.name ?? "",
                              style: TextStyle(
                                  fontSize: 16, color: ColorManager.textGrey99),
                            ),
                            kHeight16,
                            divider,
                            kHeight30,
                            // Text(
                            //   'Recently Added',
                            //   style: TextStyle(
                            //       fontWeight: FontWeight.w600,
                            //       fontSize: 18,
                            //       color: ColorManager.blackColor),
                            // ),
                            // kHeight10,
                            // BlocBuilder<ShopProductsBloc, ShopProductsState>(
                            //   builder: (context, state) {
                            //     if (state.productModel?.result?.products ==
                            //         null) {
                            //       return const SizedBox();
                            //     }
                            //     return SizedBox(
                            //       height: 310,
                            //       child: ListView.builder(
                            //         itemCount: 10,
                            //         scrollDirection: Axis.horizontal,
                            //         itemBuilder: (context, index) {
                            //           final data = state.productModel?.result!
                            //               .products![index];
                            //           return GestureDetector(
                            //               onTap: () {
                            //                 context.pushNamed(
                            //                     MyAppRouteConstants
                            //                         .singleProductRouteName,
                            //                     pathParameters: {
                            //                       "id": data.id.toString()
                            //                     });
                            //               },
                            //               child: Padding(
                            //                 padding: const EdgeInsets.only(
                            //                     right: 15),
                            //                 child: ShopProductWidget(
                            //                     color: data?.color ?? "",
                            //                     size: data?.size?[0].size ?? "",
                            //                     brandId: data?.brand!.id,
                            //                     isWishlisted:
                            //                         state.isWishListed,
                            //                     brand: data!.brand!.name
                            //                         .toString(),
                            //                     productId: data.id,
                            //                     image: data.images?[0],
                            //                     title: data.title,
                            //                     actualPrice: data.regularPrice
                            //                             ?.toInt() ??
                            //                         0,
                            //                     discount:
                            //                         data.discount!.toInt(),
                            //                     discountPrice:
                            //                         data.salePrice?.toInt() ??
                            //                             0),
                            //               ));
                            //         },
                            //       ),
                            //     );
                            //   },
                            // ),
                            // kHeight10,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
          // floatingActionButton: const IconButton.filled(
          //   onPressed: null,
          //   icon: Icon(Icons.favorite_border_outlined),
          // ),
          bottomSheet: state.isLoading || data == null
              ? const SizedBox()
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) => buildShowModelSheet(
                          color: data.color ?? "",
                          size:
                              data.size!.map((e) => e.size.toString()).toList(),
                          context,
                          selectedColor,
                          selectedSize,
                          quantity,
                          brandId: data.brand!.id!,
                          productId: id,
                          image: data.images![0],
                          regularPrice: data.regularPrice!.toInt(),
                        ),
                      );
                    },
                    child: Container(
                      height: 55,
                      width: SizeUtility(context).width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: ColorManager.mainColor.withOpacity(0.2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/add_cart.png",
                            width: 21,
                            height: 21,
                            color: ColorManager.primary,
                          ),
                          kWidth10,
                          Text(
                            "Add to cart",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: ColorManager.primary,
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
        );
      },
    );
  }

  Widget reviews() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Reviews',
            style: TextStyle(
                color: ColorManager.blackColor,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
          kHeight10,
          BlocBuilder<ReviewBloc, ReviewState>(
            builder: (context, state) {
              final data = state.reviewModel?.result;
              final isComment = state
                  .reviewCommentsModel?.result?.data!.reviewComments!
                  .every((e) => e.comment?.isEmpty ?? true);
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      RatingBar.builder(
                        ignoreGestures: true,
                        onRatingUpdate: (value) {},
                        itemSize: 20,
                        initialRating:
                            state.reviewModel?.result?.data?.averageRating ?? 0,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: orange255,
                        ),
                      ),
                      kWidth10,
                      Text(
                        '${data?.data?.averageRating?.toInt() ?? 0}/5',
                        style: TextStyle(
                            color: ColorManager.blackColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                      kWidth10,
                      Text(
                        '(${data?.data?.totalUsers ?? 0} reviews)',
                        style: TextStyle(
                            color: ColorManager.textGrey99,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                    ],
                  ),
                  isComment == false
                      ? GestureDetector(
                          onTap: () {
                            context
                                .read<ReviewBloc>()
                                .add(const ExpandReviewList());
                          },
                          child: Icon(
                            state.isExpandedReview
                                ? Icons.expand_more_outlined
                                : Icons.navigate_next_outlined,
                            color: ColorManager.greenColor1,
                            size: 30,
                          ),
                        )
                      : const SizedBox(),
                ],
              );
            },
          ),
          BlocBuilder<ReviewBloc, ReviewState>(
            builder: (context, state) {
              return !state.isExpandedReview
                  ? const SizedBox()
                  : ListView.builder(
                      itemCount: state.reviewCommentsModel?.result?.data
                          ?.reviewComments?.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final data = state.reviewCommentsModel?.result?.data
                            ?.reviewComments?[index];
                        return buildReviewItem(
                            comment: data?.comment ?? "",
                            context: context,
                            name: data?.name ?? "",
                            rating: data?.rating ?? 0.0,
                            dob: data?.userId?.dateOfBirth ?? "",
                            image: data?.userId?.picture ?? "");
                      },
                    );
            },
          ),
        ],
      ),
    );
  }

  Widget selectOptions(BuildContext context, Product data, int selectedColor,
      int selectedSize, int quantity, Divider divider) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          isScrollControlled: true,
          builder: (context) => buildShowModelSheet(
              color: data.color ?? "",
              size: data.size!.map((e) => e.size.toString()).toList(),
              brandId: data.brand?.id ?? "",
              productId: id,
              image: data.images![0],
              regularPrice: data.regularPrice!.toInt(),
              context,
              selectedColor,
              selectedSize,
              quantity),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
        child: Column(
          children: [
            divider,
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select options',
                  style: TextStyle(
                      color: ColorManager.greenColor1,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Icon(
                  Icons.navigate_next_outlined,
                  color: ColorManager.greenColor1,
                  size: 30,
                )
              ],
            ),
            kHeight10,
            divider,
          ],
        ),
      ),
    );
  }

  Widget buildShowModelSheet(
    BuildContext context,
    int selectedColor,
    int selectedSize,
    int quantity, {
    required String brandId,
    required String productId,
    required String image,
    required int regularPrice,
    required List<String> size,
    required String color,
  }) {
    return StatefulBuilder(
        builder: (context, setState) => Container(
              height: SizeUtility(context).height / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorManager.whiteColor,
              ),
              padding: const EdgeInsets.all(25),
              child: BlocBuilder<ShopProductsBloc, ShopProductsState>(
                builder: (context, state) {
                  final price = state.productByIdModel?.result?.product
                      ?.size?[state.selectedSizeIndex].salePrice;
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          image,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: black208)),
                                ),
                                kWidth20,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('$price ₹',
                                        style: TextStyle(
                                            color: ColorManager.greenColor1,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 24)),
                                    kHeight20,
                                    Text(
                                        '${state.productByIdModel?.result?.product?.size?[state.selectedSizeIndex].price} ₹',
                                        style: const TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: 20)),
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {
                                  context.pop();
                                },
                                icon: Icon(
                                  Icons.close,
                                  color: ColorManager.textGrey99,
                                ))
                          ],
                        ),
                        kHeight16,
                        const Text(
                          'Size',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        kHeight10,
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: size.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  BlocProvider.of<ShopProductsBloc>(context)
                                      .add(ShopProductsEvent.changeSizeIndex(
                                          index));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: state.selectedSizeIndex == index
                                        ? ColorManager.lightGreen
                                        : null,
                                    border: Border.all(
                                      color: ColorManager.lightBlackColor
                                          .withOpacity(0.5),
                                    ),
                                  ),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      size[index],
                                      style: const TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        kHeight15,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Quantity',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            BlocBuilder<CartBloc, CartState>(
                              builder: (context, state) => Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 40,
                                    width: 40,
                                    padding: const EdgeInsets.all(2),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(color: black208)),
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (quantity > 1) {
                                              quantity -= 1;
                                            }
                                          });
                                        },
                                        icon: const Icon(Icons.remove),
                                        iconSize: 20),
                                  ),
                                  Text(
                                    quantity.toString(),
                                    style: const TextStyle(fontSize: 17),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 40,
                                    width: 40,
                                    padding: const EdgeInsets.all(2),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(color: black208)),
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            quantity += 1;
                                          });
                                        },
                                        icon: Icon(Icons.add,
                                            size: 20,
                                            color: ColorManager.greenColor1)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BlocBuilder<CartBloc, CartState>(
                              builder: (context, state) => GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  context.pop();
                                  context.read<CartBloc>().add(AddCartEvent(
                                        productId: productId,
                                        basePrice: price ?? 0.0,
                                        size: size[context
                                            .read<ShopProductsBloc>()
                                            .state
                                            .selectedSizeIndex],
                                        color: color,
                                        context: context,
                                        quantity: quantity,
                                        brandId: brandId,
                                      ));

                                  showSnackBar(
                                      context, "Product Added Successfully!");
                                },
                                child: Container(
                                  width: SizeUtility(context).width / 2.5,
                                  height: 54,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                        color: ColorManager.primary,
                                      )),
                                  child: Center(
                                    child: Text(
                                      "Add to cart",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color: ColorManager.primary,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              width: SizeUtility(context).width / 2.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: MainButton(
                                  title: "Buy Now",
                                  onPressed: () {
                                    context.read<CartBloc>().add(AddCartEvent(
                                        productId: productId,
                                        basePrice: price ?? 0.0,
                                        size: size[state.selectedSizeIndex],
                                        color: color,
                                        context: context,
                                        quantity: quantity,
                                        brandId: brandId));

                                    Future.delayed(
                                        const Duration(milliseconds: 400), () {
                                      context.pushNamed(
                                          MyAppRouteConstants.cartRouteName);
                                    });
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ]);
                },
              ),
            ));
  }

  // Padding buildShowBottomModel(
  buildReviewItem({
    required String comment,
    required BuildContext context,
    required String name,
    required double rating,
    required String dob,
    required String image,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: ColorManager.scaffoldBgColor,
          backgroundImage: NetworkImage(image),
          radius: 30,
        ),
        kWidth15,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: SizeUtility(context).width * 70 / 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 17),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RatingBar.builder(
              itemSize: 20,
              initialRating: rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              ignoreGestures: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: orange255,
              ),
              onRatingUpdate: (value) {},
            ),
            kHeight15,
            SizedBox(
                width: SizeUtility(context).width * 70 / 100,
                child: Text(
                  comment,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 17),
                )),
            kHeight15,
            Text(
              dob,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: ColorManager.textGrey99),
            ),
          ],
        )
      ],
    );
  }
}

class CarouselView extends StatelessWidget {
  const CarouselView({
    super.key,
    required this.data,
  });

  final Product data;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        return Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                scrollPhysics: data.images?.length == 1
                    ? const NeverScrollableScrollPhysics()
                    : null,
                height: SizeUtility(context).height * 55 / 100,
                viewportFraction: 1,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                onPageChanged: (index, reason) {
                  context
                      .read<ShopProductsBloc>()
                      .add(ChangeShopBannerIndex(index));
                },
              ),
              items: data.images?.map((imageUrl) {
                return Utilities().buildCachedNetworkImage(
                  imageUrl: imageUrl,
                  width: SizeUtility(context).width,
                  boxFit: BoxFit.cover,
                  onTap: () {
                    context.pushNamed(
                        MyAppRouteConstants.imageFullViewRoutename,
                        extra: {
                          "imageUrls": data.images,
                          "initialIndex": state.shopBannerIndex,
                        });
                  },
                );
              }).toList(),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: data.images!.map((banner) {
                  int index = data.images!.indexOf(banner);
                  return Container(
                    width: state.shopBannerIndex == index ? 24 : 6,
                    height: 6,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: state.shopBannerIndex == index
                          ? ColorManager.primary
                          : ColorManager.textGrey,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        );
      },
    );
  }
}
