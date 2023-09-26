import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/components/common_widgets/cart_icon_widget.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/cart_bloc/cart_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/review_bloc/bloc/review_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/cart/cart.dart';
import 'package:millat/resources/shop/view/reviews/reviews_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/utils.dart';

import '../../../../components/common_widgets/shop_products_widget.dart';

class SingleProductView extends StatelessWidget {
  final String id;
  const SingleProductView({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ShopProductsBloc>().add(FetchFlashSaleProducts(
          endPointSlug: "shop_product_category?slug=flash_sales"));
      BlocProvider.of<ShopProductsBloc>(context).add(FetchProductsById(id: id));
      BlocProvider.of<ReviewBloc>(context)
          .add(ReviewEvent.fetchRatingEvent(id: id, context: context));
    });
    final colorMap = {
      'Pink': Colors.pink,
      'Green': Colors.green,
      'Grey': Colors.grey,
      'Red': Colors.red,
      'Black': ColorManager.blackColor,
    };
    int selectedSize = 0;
    print(id);
    final sizeList = ['S', 'M', 'L', 'ML', 'XL'];
    int quantity = 1;
    int selectedColor = 0;
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        final data = state.productByIdModel?.result?.product;

        final divider = Divider(
          thickness: 7,
          color: ColorManager.grey08,
        );
        return state.isLoading
            ? const Loader()
            : Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: BackButton(color: ColorManager.blackColor),
                  actions: [
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 10),
                    //   child: ImageIcon(
                    //     const AssetImage(
                    //       'assets/icons/search.png',
                    //     ),
                    //     color: ColorManager.blackColor,
                    //   ),
                    // ),
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
                body: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: SizeUtility(context).height * 30 / 100,
                          width: SizeUtility(context).width,
                          decoration: BoxDecoration(
                            color: black247,
                            image: DecorationImage(
                              image: NetworkImage(data?.images?[0] ?? ""),
                            ),
                          ),
                        ),
                        kHeight10,
                        Text(
                          data?.title ?? "",
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            height: 2,
                          ),
                        ),
                        Text('${data?.regularPrice} ₹',
                            style: const TextStyle(
                                color: black60,
                                fontSize: 17,
                                decoration: TextDecoration.lineThrough,
                                height: 1.5)),
                        Text(data?.brand?.name ?? 'null',
                            style: const TextStyle(
                                color: black60, fontSize: 17, height: 1.5)),
                        Text('${data?.salePrice} ₹',
                            style: TextStyle(
                                color: ColorManager.greenColor1,
                                fontSize: 22,
                                height: 1.5)),
                        kHeight10,
                        Container(
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          RatingBar.builder(
                                            itemSize: 20,
                                            initialRating: state.reviewModel
                                                    ?.result?.avgRating ??
                                                0,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 4.0),
                                            itemBuilder: (context, _) =>
                                                const Icon(
                                              Icons.star,
                                              color: orange255,
                                            ),
                                            onRatingUpdate: (rating) {
                                              final userData = context
                                                  .read<DatabaseBloc>()
                                                  .state
                                                  .authUserModel
                                                  ?.result
                                                  ?.user;
                                              final name = userData?.name;
                                              final userId = userData?.id;

                                              final ratingExists = data
                                                  ?.data?.ratings
                                                  ?.any((e) =>
                                                      e.userId == userId);

                                              if (ratingExists ?? false) {
                                                context
                                                    .read<ReviewBloc>()
                                                    .add(UpdateReiview(
                                                      context: context,
                                                      productId: id,
                                                      rating: rating.toDouble(),
                                                      comment: "",
                                                    ));
                                                context.read<ReviewBloc>().add(
                                                    FetchRatingEvent(
                                                        id: id,
                                                        context: context));
                                              } else {
                                                context
                                                    .read<ReviewBloc>()
                                                    .add(AddReview(
                                                      context: context,
                                                      productId: id,
                                                      name: name ?? "",
                                                      rating: rating.toDouble(),
                                                      comment: "",
                                                    ));
                                                context.read<ReviewBloc>().add(
                                                    FetchRatingEvent(
                                                        id: id,
                                                        context: context));
                                              }
                                            },
                                          ),
                                          kWidht10,
                                          Text(
                                            '${data?.avgRating ?? 0}/5',
                                            style: TextStyle(
                                                color: ColorManager.blackColor,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15),
                                          ),
                                          kWidht10,
                                          Text(
                                            '(${data?.data?.count ?? 0} reviews)',
                                            style: TextStyle(
                                                color: ColorManager.textGrey99,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: ColorManager.greenColor1,
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   crossAxisAlignment: CrossAxisAlignment.end,
                        //   children: [
                        //     Row(
                        //       children: [
                        //         const Icon(Icons.star,
                        //             color: orange255, size: 20),
                        //         const Icon(Icons.star,
                        //             color: orange255, size: 20),
                        //         const Icon(Icons.star,
                        //             color: orange255, size: 20),
                        //         const Icon(Icons.star,
                        //             color: orange255, size: 20),
                        //         const Icon(Icons.star,
                        //             color: orange255, size: 20),
                        //         kWidht10,
                        //         BlocBuilder<ReviewBloc, ReviewState>(
                        //           builder: (context, state) => Text(
                        //             state.reviewModel?.result?.data?.ratings?[0]
                        //                     .rating
                        //                     .toString() ??
                        //                 "0",
                        //             style: TextStyle(
                        //                 color: ColorManager.blackColor,
                        //                 fontWeight: FontWeight.w700,
                        //                 fontSize: 15),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //     const ImageIcon(
                        //       AssetImage(
                        //         'assets/icons/heart.png',
                        //       ),
                        //       color: black60,
                        //     )
                        //   ],
                        // ),

                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 0),
                          child: Column(
                            children: [
                              divider,
                              kHeight10,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Select options',
                                    style: TextStyle(
                                        color: ColorManager.greenColor1,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        isScrollControlled: true,
                                        builder: (context) =>
                                            buildShowModelSheet(
                                                brandId: data?.brand?.id ?? "",
                                                productId: id,
                                                image: data!.images![0],
                                                regularPrice:
                                                    data.regularPrice!.toInt(),
                                                salePrice:
                                                    data.salePrice!.toInt(),
                                                context,
                                                colorMap,
                                                selectedColor,
                                                sizeList,
                                                selectedSize,
                                                quantity),
                                      );
                                    },
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: ColorManager.greenColor1,
                                    ),
                                  )
                                ],
                              ),
                              kHeight10,
                              divider,
                            ],
                          ),
                        ),
                        Text(
                          'Product Description',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: ColorManager.blackColor),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          data?.description ?? "",
                          style: TextStyle(
                              fontSize: 16, color: ColorManager.textGrey99),
                        ),
                        kHeight20,
                        Text(
                          'Made of: ${data?.madeFrom ?? ""}',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: ColorManager.blackColor),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Care: ${data?.productCareInfo ?? ""}',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: ColorManager.blackColor),
                        ),
                        kHeight20,
                        Text(
                          data?.brand?.name ?? "",
                          style: TextStyle(
                              fontSize: 16, color: ColorManager.textGrey99),
                        ),
                        BlocBuilder<ReviewBloc, ReviewState>(
                          builder: (context, state) => ListView.builder(
                            itemCount: state.reviewModel?.result?.data?.ratings
                                    ?.length ??
                                0,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final data = state.reviewModel?.result?.data;
                              return buildReviewItem(
                                  comment: data?.ratings?[index].comment ?? "",
                                  context: context,
                                  name: data?.ratings?[index].name ?? "",
                                  rating: data?.ratings?[index].rating ?? 0.0,
                                  dob: data?.ratings?[index].user?.dob ?? "",
                                  image: data?.ratings?[index].user?.picture ??
                                      "");
                            },
                          ),
                        ),

                        kHeight10,
                        BlocBuilder<ShopProductsBloc, ShopProductsState>(
                          builder: (context, state) {
                            if (state.isLoading) {
                              return const Loader();
                            }

                            final products = state.flashSaleproducts?.result
                                ?.shopProductCategory?.products;

                            if (products == null || products.isEmpty) {
                              return const SizedBox();
                            }
                            return SizedBox(
                              height: 240,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: products.length,
                                itemBuilder: (context, index) {
                                  final data = products[index];

                                  return GestureDetector(
                                    onTap: () {
                                      print(data.id);

                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => SingleProductView(
                                          id: data.id ?? "",
                                        ),
                                      ));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: ShopProductWidget(
                                        color: data.color ?? "",
                                        size: data.size?[0].size ?? "",
                                        brandId: data.brand?.id,
                                        isWishlisted: state.isWishListed,
                                        brand: data.brand?.name ?? "",
                                        productId: data.id,
                                        image: data.images?[0] ?? "",
                                        title: data.title ?? "",
                                        actualPrice:
                                            data.regularPrice?.toInt() ?? 0,
                                        discount: data.discount?.toInt() ?? 0,
                                        discountPrice:
                                            data.salePrice?.toInt() ?? 0,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        kHeight100,
                      ],
                    ),
                  ),
                ),
                floatingActionButton: const Padding(
                  padding: EdgeInsets.only(right: 12, bottom: 40),
                  child: Icon(
                    Icons.favorite_border_outlined,
                  ),
                ),
                bottomSheet: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, left: 30, right: 30),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) => buildShowModelSheet(
                            context,
                            colorMap,
                            selectedColor,
                            sizeList,
                            selectedSize,
                            quantity,
                            brandId: data!.brand!.id!,
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
                            kWidht10,
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

  Widget buildShowModelSheet(BuildContext context, Map<String, Color> colorMap,
      int selectedColor, List<String> sizeList, int selectedSize, int quantity,
      {required String brandId,
      required String productId,
      required String image,
      required int salePrice,
      required int regularPrice}) {
    return StatefulBuilder(
      builder: (context, setState) => Container(
        height: SizeUtility(context).height / 1.6,
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
                      height: 130,
                      width: 130,
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
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$salePrice ₹',
                            style: TextStyle(
                                color: ColorManager.greenColor1,
                                fontWeight: FontWeight.w700,
                                fontSize: 24)),
                        const SizedBox(
                          height: 20,
                        ),
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
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      color: ColorManager.textGrey99,
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Colors',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: colorMap.length,
                  itemBuilder: (BuildContext context, int index) {
                    final colorEntry = colorMap.entries.toList()[index];
                    // final colorName = colorEntry.key;
                    final colorValue = colorEntry.value;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedColor = index;
                          print(selectedColor);
                          final selectedColorName =
                              colorMap.keys.toList()[selectedColor];
                          print(selectedColorName);
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: colorValue,
                          child: selectedColor == index
                              ? Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                )
                              : null,
                        ),
                      ),
                    );
                  },
                )),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Sizes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: List.generate(
                sizeList.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSize = index;
                      final selectedSizeValue = sizeList[selectedSize];
                      print(selectedSizeValue);
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: selectedSize == index ? Colors.green : null,
                      border: Border.all(color: ColorManager.blackColor),
                    ),
                    child: Text(
                      sizeList[index],
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Quantity',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) => Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration:
                            BoxDecoration(border: Border.all(color: black208)),
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
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration:
                            BoxDecoration(border: Border.all(color: black208)),
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
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      context.read<CartBloc>().add(AddCartEvent(
                            productId: productId,
                            basePrice: salePrice,
                            size: sizeList[selectedSize],
                            color: colorMap.keys.elementAt(selectedColor),
                            context: context,
                            quantity: quantity,
                            brandId: brandId,
                          ));

                      showSnackBar(context, "Product Added Successfully!");
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
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  width: SizeUtility(context).width / 2.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: MainButton(
                      title: "Buy Now",
                      onPressed: () {
                        context.read<CartBloc>().add(AddCartEvent(
                            productId: productId,
                            basePrice: salePrice,
                            size: sizeList[selectedSize],
                            color: colorMap.keys.elementAt(selectedColor),
                            context: context,
                            quantity: quantity,
                            brandId: brandId));

                        Future.delayed(const Duration(milliseconds: 400), () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const CartView()),
                          );
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
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
            backgroundColor: ColorManager.scaffolBgColor,
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
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
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
                  return null;
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
