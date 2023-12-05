import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/rewards/widget/reward_cart_view.dart';
import 'package:millat/resources/rewards/widget/score_widget.dart';
import 'package:millat/resources/shop/bloc/logic/address_bloc/address_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/cart_bloc/cart_bloc.dart';
import 'package:millat/resources/shop/view/checkout/checkout_details.dart';
import 'package:millat/resources/shop/view/checkout/checkout_view.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';

import '../bloc/logic/rewards_bloc/rewards_bloc_bloc.dart';

class RewardsSingleShopView extends StatefulWidget {
  final String id;
  const RewardsSingleShopView({super.key, required this.id});

  @override
  State<RewardsSingleShopView> createState() => _RewardsSingleShopViewState();
}

class _RewardsSingleShopViewState extends State<RewardsSingleShopView> {
  int selectedSize = 0;
  int quantity = 1;
  @override
  void initState() {
    BlocProvider.of<AddressBloc>(context)
        .add(FetchAddressEvent(context: context));
    BlocProvider.of<RewardsBloc>(context)
        .add(RewardsEvent.fetchRewardProductsById(id: widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.whiteColor,
        appBar: AppBar(
          foregroundColor: ColorManager.blackColor,
          backgroundColor: ColorManager.whiteColor,
          elevation: 0,
          centerTitle: true,
          actions: const [
            ScoreWidget(),
            kWidth20,
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 14.0),
          child: SingleChildScrollView(
            child: BlocBuilder<RewardsBloc, RewardsState>(
              builder: (context, state) {
                final data = state.rewardsProductByIdModel?.result?.product;
                if (data == null) {
                  return ShimmerUtils.singleProductShimmer(context);
                }
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: SizeUtility(context).height * 30 / 100,
                        viewportFraction: 1,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        onPageChanged: (index, reason) {
                          context
                              .read<RewardsBloc>()
                              .add(ChangeCarousselImageIndex(index));
                        },
                      ),
                      items: data.productId?.images?.map((imageUrl) {
                            return Image.network(imageUrl);
                          }).toList() ??
                          [],
                    ),
                    kHeight10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: data.productId!.images!.map((banner) {
                        int index = data.productId!.images!.indexOf(banner);
                        return Container(
                          width: state.carouselImageIndex == index ? 24 : 6,
                          height: 6,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: state.carouselImageIndex == index
                                ? ColorManager.primary
                                : ColorManager.textGrey,
                          ),
                        );
                      }).toList(),
                    ),
                    kHeight16,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                AppAssetsStrings.shop2,
                                height: 12,
                              ),
                              kWidth5,
                              Text(
                                Appstrings.islamicStore,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: ColorManager.black79,
                                ),
                              ),
                            ],
                          ),
                          kHeight16,
                          Text(
                            data.productId?.title ?? "",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: ColorManager.blackColor,
                              height: 1.2,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          kHeight10,
                          Row(
                            children: [
                              Text(
                                data.productId?.salePrice.toString() ?? "",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: ColorManager.blackColor,
                                ),
                              ),
                              kWidth5,
                              Text(
                                data.productId?.regularPrice.toString() ?? '',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: ColorManager.blackColor,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              kWidth3,
                              Text(
                                "${data.productId!.discount}% off",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: ColorManager.primary,
                                ),
                              ),
                            ],
                          ),
                          kHeight16,
                          Row(
                            children: [
                              Text(
                                "By using",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: ColorManager.greyB4,
                                ),
                              ),
                              kWidth8,
                              Container(
                                height: 24,
                                width: 63,
                                decoration: BoxDecoration(
                                  color: ColorManager.greyEB,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                padding: const EdgeInsets.only(right: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      AppAssetsStrings.score,
                                      height: 24,
                                      width: 24,
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      data.coins.toString(),
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: ColorManager.black4F,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              kWidth3,
                              const Icon(
                                Icons.info_outline,
                                size: 16,
                              ),
                            ],
                          ),
                          kWidth5,
                        ],
                      ),
                    ),
                    kHeight20,
                    Container(
                      width: SizeUtility(context).width,
                      height: 10,
                      color: ColorManager.scaffoldBgColor,
                    ),
                    kHeight25,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            data.productId!.description ?? "",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: ColorManager.textGrey99,
                              height: 1.3,
                            ),
                          ),
                          kHeight10,
                        ],
                      ),
                    ),
                    kHeight15,
                    lastWidget(text: Appstrings.composition),
                    lastWidget(text: Appstrings.howToUse),
                    kHeight16,
                    imgStackWidget(context),
                    kHeight16,
                    GestureDetector(
                      onTap: () {
                        cancellationPolicyPopup(context);
                      },
                      child: lastWidget(
                          text: Appstrings.cancellationPolicy,
                          showDivider: false,
                          icon: Icons.navigate_next_outlined),
                    ),
                    lastWidget(
                        text: Appstrings.nonReturnalbe,
                        icon: Icons.navigate_next_outlined),
                    kHeight100,
                  ],
                );
              },
            ),
          ),
        ),
        bottomSheet: BlocBuilder<AddressBloc, AddressState>(
          builder: (context, state) => GestureDetector(
            onTap: () {
              // context.read<ShopProductsBloc>().add(PostOrders(
              //     context: context,
              //     totalPrice: totalPrice,
              //     pickupLocation: pickupLocation,
              //     quantity: quantity,
              //     totalDiscount: totalDiscount,
              //     shippingCharges: shippingCharges,
              //     weight: weight,
              //     id: id));
              if (state.addressModel!.result.addresses.isEmpty) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CheckoutDetails(
                    type: AddressNavType.checkout,
                  ),
                ));
              } else {
                context.pushNamed(MyAppRouteConstants.checkoutRouteName,
                    extra: {'checkoutType': CheckoutType.rewards});
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) =>
                //       const CheckoutView(checkoutType: CheckoutType.rewards),
                // ));
              }
            },
            child: Container(
              color: ColorManager.primary,
              height: 60,
              width: SizeUtility(context).width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Appstrings.buyNow,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                  kWidth3,
                  Icon(
                    Icons.navigate_next,
                    color: ColorManager.whiteColor,
                    size: 24,
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Future<dynamic> cancellationPolicyPopup(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          height: SizeUtility(context).height / 4,
          width: SizeUtility(context).width,
          decoration: BoxDecoration(
            color: ColorManager.whiteColor,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Appstrings.cancellationPolicy,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.blackColor,
                ),
              ),
              kHeight10,
              Divider(
                color: ColorManager.lightBlackColor,
              ),
              kHeight15,
              Text(
                Appstrings.cancellationPolicyDesc,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: ColorManager.black4F,
                  height: 1.3,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                        Size(SizeUtility(context).width, 50)),
                    backgroundColor:
                        MaterialStateProperty.all(ColorManager.primary),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  child: const Text(Appstrings.understood,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ))),
            ],
          ),
        );
      },
    );
  }

  Widget imgStackWidget(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssetsStrings.rewardsQuranImg,
          height: 254,
          width: SizeUtility(context).width,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 25,
          left: 0,
          right: 0,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: ColorManager.scaffoldBgColor,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(4),
            child: Center(
              child: Text(
                Appstrings.islamicStore2,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.blackColor,
                  height: 1.1,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 95),
          child: Container(
            decoration: BoxDecoration(
              color: ColorManager.appBarColor.withOpacity(0.8),
              borderRadius: BorderRadius.circular(8),
            ),
            height: 132,
            width: SizeUtility(context).width,
            padding: const EdgeInsets.all(12),
            child: Center(
              child: Text(
                Appstrings.loremIpsumText,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.black4F,
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget lastWidget(
      {required String text, IconData? icon, bool showDivider = true}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          showDivider
              ? Divider(
                  color: ColorManager.blackColor,
                )
              : const SizedBox.shrink(),
          kHeight10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                icon ?? Icons.add,
                size: 24,
              )
            ],
          ),
          kHeight10,
        ],
      ),
    );
  }

  Widget buildShowModelSheet(
    BuildContext context,
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
                              Navigator.of(context).pop();
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
                              Navigator.of(context).pop();
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
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RewardCartView()),
                                  );
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
}
