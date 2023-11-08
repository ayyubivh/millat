import 'dart:async';
import 'package:flutter/material.dart';
import 'package:millat/components/common_widgets/full_screen_widget.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/utils/utils.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/components/common_widgets/cart_icon_widget.dart';
import '../../../../components/common_widgets/shop_products_widget.dart';
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
      context
          .read<ShopProductsBloc>()
          .add(ShopProductsEvent.fetchProductsById(id: id));
      context.read<ReviewBloc>()
        ..add(ReviewEvent.fetchRatingEvent(id: id, context: context))
        ..add(ReviewEvent.fetchReviewComments(id: id, context: context));
    });
    int selectedSize = 0;
    print(id);

    int quantity = 1;
    int selectedColor = 0;
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        final data = state.productByIdModel?.result?.product;

        final divider = Divider(
          thickness: 6,
          color: ColorManager.grey08,
        );
        return state.isLoading || data == null
            ? const Loader()
            : Scaffold(
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
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CarouselView(data: data),
                        Text(
                          data.title ?? "",
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            height: 2,
                          ),
                        ),
                        Text('₹${data.regularPrice}',
                            style: const TextStyle(
                                color: black60,
                                fontSize: 17,
                                decoration: TextDecoration.lineThrough,
                                height: 1.5)),
                        Text(data.brand?.name ?? 'Millat',
                            style: const TextStyle(
                                color: black60, fontSize: 17, height: 1.5)),
                        Text('${data.salePrice} ₹',
                            style: TextStyle(
                                color: ColorManager.greenColor1,
                                fontSize: 22,
                                height: 1.5)),
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
                          data.description ?? "",
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
                        const Text(
                          'Colors',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        kHeight10,
                        SizedBox(
                          height: 30,
                          child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor:
                                    Utilities.getColorFromApiString(
                                        data.color ?? ""),
                              )),
                        ),
                        kHeight20,
                        Text(
                          data.brand?.name ?? "",
                          style: TextStyle(
                              fontSize: 16, color: ColorManager.textGrey99),
                        ),
                        kHeight16,
                        divider,
                        kHeight10,
                        Text(
                          'Recently Added',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: ColorManager.blackColor),
                        ),
                        kHeight10,
                        BlocBuilder<ShopProductsBloc, ShopProductsState>(
                          builder: (context, state) {
                            if (state.productModel?.result?.products == null) {
                              return const SizedBox();
                            }
                            return SizedBox(
                              height: 310,
                              child: ListView.builder(
                                itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  final data = state
                                      .productModel?.result!.products![index];
                                  return GestureDetector(
                                      onTap: () {
                                        context.pushNamed(
                                            MyAppRouteConstants
                                                .singleProductRouteName,
                                            pathParameters: {
                                              "id": data.id.toString()
                                            });
                                      },
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15),
                                        child: ShopProductWidget(
                                            color: data?.color ?? "",
                                            size: data?.size?[0].size ?? "",
                                            brandId: data?.brand!.id,
                                            isWishlisted: state.isWishListed,
                                            brand: data!.brand!.name.toString(),
                                            productId: data.id,
                                            image: data.images?[0],
                                            title: data.title,
                                            actualPrice:
                                                data.regularPrice?.toInt() ?? 0,
                                            discount: data.discount!.toInt(),
                                            discountPrice:
                                                data.salePrice?.toInt() ?? 0),
                                      ));
                                },
                              ),
                            );
                          },
                        ),
                        kHeight10,
                      ],
                    ),
                  ),
                ),
                // floatingActionButton: const IconButton.filled(
                //   onPressed: null,
                //   icon: Icon(Icons.favorite_border_outlined),
                // ),
                bottomSheet: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) => buildShowModelSheet(
                            color: data.color ?? "",
                            size: data.size!
                                .map((e) => e.size.toString())
                                .toList(),
                            context,
                            selectedColor,
                            selectedSize,
                            quantity,
                            brandId: data.brand!.id!,
                            productId: id,
                            image: data.images![0],
                            regularPrice: data.regularPrice!.toInt(),
                            salePrice: data.salePrice!.toInt(),
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
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      RatingBar.builder(
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
                        onRatingUpdate: (value) {
                          final name = context
                                  .read<DatabaseBloc>()
                                  .state
                                  .authUserModel
                                  ?.result
                                  ?.user
                                  ?.name ??
                              "null";
                          context.read<ReviewBloc>().add(AddReview(
                              context: context,
                              productId: id,
                              name: name,
                              rating: value,
                              comment: ""));
                        },
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
                  GestureDetector(
                    onTap: () {
                      context.read<ReviewBloc>().add(const ExpandReviewList());
                    },
                    child: Icon(
                      state.isExpandedReview
                          ? Icons.expand_more_outlined
                          : Icons.navigate_next_outlined,
                      color: ColorManager.greenColor1,
                      size: 30,
                    ),
                  ),
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

  GestureDetector selectOptions(BuildContext context, Product data,
      int selectedColor, int selectedSize, int quantity, Divider divider) {
    return GestureDetector(
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
              salePrice: data.salePrice!.toInt(),
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
    required int salePrice,
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
              child: Column(
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
                                Text('$salePrice ₹',
                                    style: TextStyle(
                                        color: ColorManager.greenColor1,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24)),
                                kHeight20,
                                Text('$regularPrice ₹',
                                    style: const TextStyle(
                                        decoration: TextDecoration.lineThrough,
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    kHeight10,
                    // for (var i = 0; i < size.length; i++)
                    //   Container(
                    //     alignment: Alignment.center,
                    //     height: 45,
                    //     width: 45,
                    //     padding: const EdgeInsets.all(5),
                    //     margin: const EdgeInsets.symmetric(horizontal: 10),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(4),
                    //       border: Border.all(
                    //           color: ColorManager.lightBlackColor.withOpacity(0.4)),
                    //     ),
                    //     child: Text(
                    //       size[i],
                    //       style: const TextStyle(fontSize: 20),
                    //     ),
                    //   ),
                    Row(
                      children: List.generate(
                        size.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedSize = index;
                              final selectedSizeValue = size[selectedSize];
                              print(selectedSizeValue);
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            // height: 45,
                            // width: 45,
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: selectedSize == index
                                  ? ColorManager.lightGreen
                                  : null,
                              border: Border.all(
                                  color: ColorManager.lightBlackColor
                                      .withOpacity(0.5)),
                            ),
                            child: Text(
                              size[index],
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
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
                                height: 50,
                                width: 50,
                                padding: const EdgeInsets.all(5),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(color: black208)),
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (quantity > 1) {
                                          quantity -= 1;
                                          print('quantity: $quantity');
                                        }
                                      });
                                    },
                                    icon: const Icon(Icons.remove)),
                              ),
                              Text(
                                quantity.toString(),
                                style: const TextStyle(fontSize: 17),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 50,
                                padding: const EdgeInsets.all(5),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
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
                            onTap: () {
                              context.pop();
                              context.read<CartBloc>().add(AddCartEvent(
                                    productId: productId,
                                    basePrice: salePrice,
                                    size: size[selectedSize],
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
                                    basePrice: salePrice,
                                    size: size[selectedSize],
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
                  ]),
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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
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
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: orange255,
                ),
                onRatingUpdate: (value) {
                  return;
                },
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
      ),
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
        return Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: SizeUtility(context).height * 30 / 100,
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
                  width: SizeUtility(context).width / 1.5,
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
            kHeight10,
            Row(
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
          ],
        );
      },
    );
  }
}
