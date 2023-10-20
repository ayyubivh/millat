import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/rewards/bloc/logic/bloc/rewards_bloc_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/address_bloc/address_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/cart/widgets/cart_product_widget.dart';
import 'package:millat/resources/shop/view/checkout/checkout_payment.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import '../../bloc/logic/cart_bloc/cart_bloc.dart';

class CheckoutConfirmation extends StatefulWidget {
  final int paymentType;
  final CheckoutType? checkoutType;
  const CheckoutConfirmation(
      {Key? key, required this.paymentType, this.checkoutType})
      : super(key: key);

  @override
  State<CheckoutConfirmation> createState() => _CheckoutConfirmationState();
}

class _CheckoutConfirmationState extends State<CheckoutConfirmation> {
  final promocodeController = TextEditingController();
  final Razorpay _razorpay = Razorpay();

  @override
  void initState() {
    context
        .read<ShopProductsBloc>()
        .add(const ShopProductsEvent.isPromoCodeAvailable(value: false));
    BlocProvider.of<AddressBloc>(context).add(FetchAddressByIdEvent(
        context: context,
        id: context.read<AddressBloc>().state.addressId.toString()));
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _onPaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _onPaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _onExternalWallet);
    super.initState();
  }

  // bool showMore = false;
  bool isGift = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        title: Text(
          Appstrings.reviewOrder,
          style: TextStyle(
              color: ColorManager.blackColor, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: ColorManager.whiteColor,
      ),
      body: BlocConsumer<ShopProductsBloc, ShopProductsState>(
        listener: (context, state) {
          if (state.orderIdRazorPay != "") {
            final cartItems = context
                .read<CartBloc>()
                .state
                .cartModel
                ?.result
                ?.cartProducts
                ?.cartItems;
            final userData =
                context.read<DatabaseBloc>().state.authUserModel?.result?.user;

            var options = {
              'order_id': state.orderIdRazorPay,
              'key': 'rzp_live_CPvXnR4zHHC8cD',
              'amount': state.totalAmount * 100,
              'name': 'Millat',
              'description': cartItems![0].productId?.title,
              'retry': {'enabled': true, 'max_count': 1},
              'send_sms_hash': true,
              'timeout': 120,
              'prefill': {
                'contact': userData?.pohneNumber,
                'email': userData?.email,
              },
              // 'external': {
              //   'wallets': ['paytm']
              // }
            };
            _razorpay.open(options);
          } else if (state.orderId != null && state.orderSucces) {
            context.pushNamed(MyAppRouteConstants.paymentSuccessfullRouteName,
                extra: {'subTotal': state.totalAmount, 'delivery': 90});
          }
        },
        builder: (context, state) => state.isLoading
            ? const Loader()
            : widget.checkoutType == CheckoutType.rewards
                ? BlocBuilder<RewardsBloc, RewardsState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Loader();
                      } else if (state
                              .rewardsProductByIdModel?.result?.product ==
                          null) {
                        return const SizedBox();
                      }

                      final data = state
                          .rewardsProductByIdModel?.result?.product?.productId;

                      return CartProductWidget(
                        showQuantity: false,
                        id: data?.id,
                        title: data?.title,
                        subTitle: data?.description,
                        size: data?.size?[0].size,
                        image: data?.images?[0],
                        price: data?.salePrice?.toInt() ?? 0,
                        actualPrice: data?.regularPrice.toString(),
                        jsonColor: data?.color,
                        colorName: data?.color,
                        quantity: 1,
                        productId: data?.id,
                      );
                    },
                  )
                : BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      if (state.cartLoading) {
                        return const Loader();
                      } else if (state
                              .cartModel?.result?.cartProducts?.cartItems ==
                          null) {
                        return const Center(
                          child: Text(''),
                        );
                      }

                      final cartItems =
                          state.cartModel?.result?.cartProducts?.cartItems;
                      final itemCount = cartItems?.length ?? 0;

                      return ListView.builder(
                        padding: EdgeInsets.only(
                            top: 20,
                            bottom: state.showExapnd
                                ? SizeUtility(context).height * 0.53
                                : SizeUtility(context).height * 0.41),
                        itemCount: itemCount,
                        itemBuilder: (context, index) {
                          final data = cartItems![index];
                          return CartProductWidget(
                            showQuantity: true,
                            id: data.productId!.id,
                            title: data.productId!.title,
                            subTitle: data.productId!.description,
                            size: data.size,
                            image: data.productId?.images![0],
                            price: data.productId?.salePrice?.toInt() ?? 0,
                            actualPrice:
                                data.productId?.regularPrice.toString(),
                            jsonColor: data.color,
                            colorName: data.color,
                            quantity: data.quantity!.toInt(),
                            productId: data.productId?.id,
                          );
                        },
                      );
                    },
                  ),
      ),
      bottomSheet: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          final cartItems = state.cartModel?.result?.cartProducts?.cartItems;

          final subTotal = _getTotalPrice(
            cartItems?.map((e) => e.sellingPrice).toList(),
            cartItems?.map((e) => e.quantity).toList(),
          );
          // final tax = cartItems?[0].tax.toString();
          final quantity = cartItems?.map((e) => e.quantity).toList();
          final shippingCharge = widget.paymentType == 0 ? 45 : 90;
          final shippingFee = cartItems!.length > 1
              ? shippingCharge * 2
              : quantity![0]! > 1
                  ? shippingCharge * 2
                  : shippingCharge;
          final taxRate = cartItems
              .map((item) => item.productId?.tax)
              .reduce((a, b) => a! + b!)!
              .toDouble();
          // final giftPrice = isGift ? 89 : 0;
          final averageTax = (taxRate / cartItems.length);
          final estimatingTax = (averageTax / 100) * subTotal;
          final total = subTotal + shippingFee + estimatingTax;
          final isShow = state.showExapnd;
          return Container(
            color: ColorManager.whiteColor,
            padding:
                const EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                kHeight10,
                paymentMethod(context),
                isShow
                    ? InkWell(
                        onTap: () {
                          context.read<CartBloc>().add(const ShowExpandEvent());
                        },
                        child: const Icon(
                          Icons.expand_more,
                          size: 30,
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          context.read<CartBloc>().add(const ShowExpandEvent());
                        },
                        child: const Icon(
                          Icons.expand_less,
                          size: 30,
                        ),
                      ),
                kHeight15,
                isShow
                    ? Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Appstrings.subTotal,
                                style: TextStyle(
                                  color: ColorManager.blackColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '₹$subTotal',
                                style: TextStyle(
                                    color: ColorManager.blackColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          kHeight16,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Appstrings.deliveryCharge,
                                style: TextStyle(
                                  color: ColorManager.blackColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '₹$shippingFee',
                                style: TextStyle(
                                    color: ColorManager.blackColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          kHeight16,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(Appstrings.tax,
                                  style: TextStyle(
                                      color: ColorManager.blackColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text(estimatingTax.toStringAsFixed(2),
                                  style: TextStyle(
                                      color: ColorManager.blackColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          kHeight16,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total',
                                  style: TextStyle(
                                      color: ColorManager.blackColor,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w700)),
                              Text(
                                '₹$total',
                                style: TextStyle(
                                    color: ColorManager.black4A,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          kHeight20,
                        ],
                      )
                    : Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total',
                                  style: TextStyle(
                                      color: ColorManager.blackColor,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w700)),
                              const Text(
                                ':',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '₹$total',
                                style: TextStyle(
                                    color: ColorManager.black4A,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          kHeight16,
                        ],
                      ),
                widget.checkoutType == CheckoutType.rewards
                    ? BlocBuilder<RewardsBloc, RewardsState>(
                        builder: (context, state) => MainButton(
                          title: Appstrings.placeOrder,
                          onPressed: () {
                            final pickUpaddress = context
                                .read<AddressBloc>()
                                .state
                                .addressIdModel!
                                .result
                                .address;

                            print(
                                "here is the address ${context.read<AddressBloc>().state.addressIdModel!.result.address.addressLine}");
                            final userCoins = context
                                    .read<RewardsBloc>()
                                    .state
                                    .rewardsModel
                                    ?.result
                                    ?.reward
                                    ?.coins ??
                                0;
                            final productCoin = state.rewardsProductByIdModel
                                    ?.result?.product?.coins
                                    ?.toInt() ??
                                0;
                            print('here is the address id ${pickUpaddress.id}');
                            final data = state.rewardsProductByIdModel?.result
                                ?.product?.productId;
                            if (userCoins >= productCoin) {
                              context.read<ShopProductsBloc>().add(
                                  PostOrdersRewards(
                                      context: context,
                                      price: data?.salePrice?.toDouble() ?? 0,
                                      coins: productCoin,
                                      addressId: pickUpaddress.id,
                                      totalQuantity: 1,
                                      productId: data?.id ?? "",
                                      brandId: data?.brand ?? "",
                                      size: data?.size![0].size ?? "",
                                      color: data?.color ?? ""));

                              // Navigator.of(context).push(MaterialPageRoute(
                              //   builder: (context) => PaymentSuccessful(
                              //       subTotal: data?.salePrice?.toDouble() ?? 0,
                              //       delivery: 27),
                              // ));
                            } else {
                              showSnackBar(
                                  context, "Not enough coins to buy product!");
                            }
                          },
                        ),
                      )
                    : MainButton(
                        title: Appstrings.placeOrder,
                        onPressed: () {
                          final pickUpaddress = context
                              .read<AddressBloc>()
                              .state
                              .addressIdModel!
                              .result
                              .address;

                          // print(
                          //     "here is the address ${context.read<AddressBloc>().state.addressIdModel!.result.address.addressLine}");

                          // print('here is the address id ${pickUpaddress.id}');
                          // final isPromo = context
                          //     .read<ShopProductsBloc>()
                          //     .state
                          //     .isPromoCodeAvailable;
                          // final discount = context
                          //     .read<ShopProductsBloc>()
                          //     .state
                          //     .couponModel
                          //     ?.result
                          //     .data?[0]
                          //     .discount;
                          if (widget.paymentType == 1) {
                            context.read<ShopProductsBloc>().add(PostOrders(
                                  id: pickUpaddress.id,
                                  shippingCharges: shippingFee,
                                  totalDiscount: 0,
                                  weight: 0,
                                  pickupLocation: pickUpaddress.addressLine,
                                  quantity: state.cartLength,
                                  totalPrice: total.toDouble(),
                                  context: context,
                                ));
                          } else {
                            context.read<ShopProductsBloc>().add(
                                ShopProductsEvent.postOrderIdOnlinePayment(
                                    context: context, amount: total));
                          }
                        }),
              ],
            ),
          );
        },
      ),
    );
  }

  paymentMethod(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Appstrings.paymentMethod,
              style: TextStyle(
                  color: ColorManager.blackColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            )
          ],
        ),
        kHeight20,
        widget.paymentType == 1
            ? _codPaymentWidget(context)
            : _onlinePayment(context),
        kHeight20,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    'By placing an order, you acknowledge that you have read the ',
                style: TextStyle(
                  color: ColorManager.textGrey, // Color for the regular text
                  fontSize: 14, fontWeight: FontWeight.w400,
                  height: 1.3,
                ),
              ),
              TextSpan(
                text: 'Terms of Service',
                style: TextStyle(
                  color: ColorManager.primary, // Color for "Terms of Service"
                  fontSize: 14, fontWeight: FontWeight.w400,
                  height: 1.3,
                ),
              ),
              TextSpan(
                text: ' and ',
                style: TextStyle(
                  color: ColorManager.textGrey, // Color for the regular text
                  fontSize: 14, fontWeight: FontWeight.w400,
                  height: 1.3,
                ),
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(
                  color: ColorManager.primary, // Color for "Privacy Policy"
                  fontSize: 14, fontWeight: FontWeight.w400,
                  height: 1.3,
                ),
              ),
              TextSpan(
                text:
                    ' of Linger Shop. Payment will be processed separately by PIPO ',
                style: TextStyle(
                  color: ColorManager.textGrey, // Color for the regular text
                  fontSize: 14, fontWeight: FontWeight.w400,
                  height: 1.3,
                ),
              ),
              TextSpan(
                text: ' according to ',
                style: TextStyle(
                  color: ColorManager.textGrey, // Color for the regular text
                  fontSize: 14, fontWeight: FontWeight.w400,
                  height: 1.3,
                ),
              ),
              TextSpan(
                text: 'PIPO Privacy Policy.',
                style: TextStyle(
                  color:
                      ColorManager.primary, // Color for "PIPO Privacy Policy"
                  fontSize: 14, fontWeight: FontWeight.w400,
                  height: 1.3,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget makeaGift(BuildContext context) {
    return Container(
      height: 80,
      width: SizeUtility(context).width,
      padding: const EdgeInsets.all(8).copyWith(left: 12),
      decoration: BoxDecoration(
        color: ColorManager.whiteColor,
        border: Border.all(
          color: ColorManager.greyD1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            height: 48,
            width: 48,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorManager.primary,
            ),
            child: Image.asset(
              AppAssetsStrings.gift,
            ),
          ),
          kWidth15,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                Appstrings.makeGift,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight5,
              Text(
                Appstrings.giftSubTitle,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: ColorManager.lightBlackColor),
              ),
            ],
          ),
          const Spacer(),
          Switch(
            activeColor: ColorManager.primary,
            value: isGift,
            onChanged: (value) {
              setState(() {
                isGift = !isGift;
              });
            },
          )
        ],
      ),
    );
  }

  void _onPaymentSuccess(
    PaymentSuccessResponse response,
  ) {
    context.read<ShopProductsBloc>().add(ShopProductsEvent.postOnlieOrders(
        context: context,
        razorpayOrderId: response.orderId ?? "",
        razorpayPaymentId: response.paymentId ?? "",
        razorpaySignature: response.signature ?? "",
        addressId: context.read<AddressBloc>().state.addressId.toString()));
  }

  void _onPaymentError(
    PaymentFailureResponse response,
  ) {
    showSnackBar(context, response.error.toString());
  }

  void _onExternalWallet(
    ExternalWalletResponse response,
  ) {}
  Widget _onlinePayment(BuildContext context) {
    return Container(
      height: 96,
      width: SizeUtility(context).width,
      decoration: BoxDecoration(
          color: ColorManager.whiteColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              spreadRadius: 4,
              blurRadius: 4,
              color: ColorManager.grey08,
            ),
          ]),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Text(
                    Appstrings.payOnline,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kWidth8,
                  ImageIcon(
                    AssetImage(AppAssetsStrings.lock),
                    size: 15,
                  )
                ],
              ),
              kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  paymentRowWidget(AppAssetsStrings.masterCard),
                  paymentRowWidget(AppAssetsStrings.phonePay),
                  paymentRowWidget(AppAssetsStrings.visa),
                  paymentRowWidget(AppAssetsStrings.discover),
                  paymentRowWidget(AppAssetsStrings.googlePay),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _codPaymentWidget(BuildContext context) {
    return Container(
      height: 96,
      width: SizeUtility(context).width,
      decoration: BoxDecoration(
          color: ColorManager.whiteColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              spreadRadius: 4,
              blurRadius: 4,
              color: ColorManager.grey08,
            ),
          ]),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            children: [
              Text(
                Appstrings.cashOnDeliver,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidth8,
              ImageIcon(
                AssetImage(AppAssetsStrings.lock),
                size: 15,
              )
            ],
          ),
          kHeight8,
          Container(
            height: 32,
            width: 50,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                border: Border.all(
              color: ColorManager.grey08,
            )),
            child: Image.asset(
              AppAssetsStrings.cashOnDelivery,
              height: 20,
              width: 20,
            ),
          ),
          kHeight10,
        ],
      ),
    );
  }

  int _getTotalPrice(List<int?>? prices, List<int?>? quantities) {
    int total = 0;

    if (prices != null && quantities != null) {
      for (int i = 0; i < prices.length; i++) {
        int price = prices[i] ?? 0;
        int quantity = quantities[i] ?? 0;
        total += price * quantity;
      }
    }

    return total;
  }
}

class PromoCode extends StatelessWidget {
  const PromoCode({
    super.key,
    required this.promocodeController,
  });

  final TextEditingController promocodeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorManager.whiteColor,
          boxShadow: [
            BoxShadow(
              spreadRadius: 4,
              blurRadius: 2,
              color: ColorManager.grey08,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Appstrings.promoCode,
              style: TextStyle(
                color: ColorManager.blackColor,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: SizeUtility(context).width * 50 / 100,
                  child: TextField(
                    controller: promocodeController,
                    cursorColor: ColorManager.primary,
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    final isPromocode = context
                        .read<ShopProductsBloc>()
                        .state
                        .couponModel
                        ?.result
                        .data
                        ?.any((e) => e.couponCode == promocodeController.text);
                    context.read<ShopProductsBloc>().add(
                        ShopProductsEvent.isPromoCodeAvailable(
                            value: isPromocode ?? false));
                  },
                  child: Container(
                      height: 45,
                      width: 85,
                      decoration: BoxDecoration(
                        color: ColorManager.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          Appstrings.apply,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: ColorManager.whiteColor,
                          ),
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
