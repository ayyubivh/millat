import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/resources/shop/bloc/logic/address_bloc/address_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/cart/widgets/cart_product_widget.dart';
import 'package:millat/resources/shop/view/order_status/payment_successful.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import '../../bloc/logic/cart_bloc/cart_bloc.dart';
import 'checkout_payment.dart';

class CheckoutConfirmation extends StatefulWidget {
  const CheckoutConfirmation({Key? key}) : super(key: key);

  @override
  State<CheckoutConfirmation> createState() => _CheckoutConfirmationState();
}

class _CheckoutConfirmationState extends State<CheckoutConfirmation> {
  @override
  void initState() {
    BlocProvider.of<AddressBloc>(context).add(FetchAddressByIdEvent(
        context: context,
        id: context.read<AddressBloc>().state.addressId.toString()));
    super.initState();
  }

  // bool showMore = false;
  int maxItemsToShow = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        title: Text(
          Appstrings.confirmation,
          style: TextStyle(
              color: ColorManager.blackColor, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: ColorManager.whiteColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Slider(
              //   activeColor: ColorManager.greenColor1,
              //   inactiveColor: black195,
              //   max: 10,
              //   min: 0,
              //   divisions: 2,
              //   value: 10,
              //   onChanged: (value) {},
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       Appstrings.personalInfo,
              //       style: TextStyle(
              //           fontWeight: FontWeight.w700,
              //           color: ColorManager.greenColor1),
              //     ),
              //     Text(
              //       Appstrings.payment,
              //       style: TextStyle(
              //           fontWeight: FontWeight.w600,
              //           color: ColorManager.greenColor1),
              //     ),
              //     Text(
              //       Appstrings.confirmation,
              //       style: TextStyle(
              //           fontWeight: FontWeight.w600,
              //           color: ColorManager.greenColor1),
              //     ),
              //   ],
              // ),
              kHeight30,
              Text(
                Appstrings.reviewOrder,
                style: TextStyle(
                    color: ColorManager.blackColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w700),
              ),
              kHeight20,
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  if (state.cartLoading) {
                    return Center(
                      child: CircularProgressIndicator(
                          color: ColorManager.greenColor1),
                    );
                  } else if (state.cartModel?.result?.cartProducts?.cartItems ==
                      null) {
                    return const Center(
                      child: Text('Cart is Empty'),
                    );
                  }

                  final cartItems =
                      state.cartModel?.result?.cartProducts?.cartItems;
                  final itemCount = cartItems?.length ?? 0;
                  final itemsToShow =
                      state.showMore ? itemCount : maxItemsToShow;

                  return Column(
                    children: [
                      if (itemCount > 0)
                        ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: itemCount == 1 ? 1 : itemsToShow,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final data = cartItems![index];
                            return CartProductWidget(
                              id: data.productId!.id,
                              title: data.productId!.title,
                              subTitle: data.productId!.description,
                              size: data.size,
                              image: data.productId?.colors![0].images![0],
                              price: data.productId?.discountPrice ?? 0,
                              actualPrice:
                                  data.productId?.actualPrice.toString(),
                              jsonColor: data.color,
                              colorName: data.color,
                              quantity: data.quantity!.toInt(),
                              productId: data.productId?.id,
                            );
                          },
                        ),
                    ],
                  );
                },
              ),
              kHeight10,
              Container(
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
                      value: false,
                      onChanged: (value) {},
                    )
                  ],
                ),
              ),
              kHeight25,
              Container(
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
                            child: const TextField(),
                          ),
                          const Spacer(),
                          Container(
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
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              kHeight20,
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
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  )
                ],
              ),
              kHeight20,
              Container(
                height: 96,
                width: SizeUtility(context).width,
                decoration: BoxDecoration(
                    color: ColorManager.whiteColor,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 2,
                        color: ColorManager.grey08,
                      ),
                    ]),
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
              ),
              kHeight20,
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'By placing an order, you acknowledge that you have read the ',
                      style: TextStyle(
                        color:
                            ColorManager.textGrey, // Color for the regular text
                        fontSize: 14, fontWeight: FontWeight.w400, height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(
                        color: ColorManager
                            .primary, // Color for "Terms of Service"
                        fontSize: 14, fontWeight: FontWeight.w400, height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(
                        color:
                            ColorManager.textGrey, // Color for the regular text
                        fontSize: 14, fontWeight: FontWeight.w400, height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        color:
                            ColorManager.primary, // Color for "Privacy Policy"
                        fontSize: 14, fontWeight: FontWeight.w400, height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' of Linger Shop. Payment will be processed separately by PIPO ',
                      style: TextStyle(
                        color:
                            ColorManager.textGrey, // Color for the regular text
                        fontSize: 14, fontWeight: FontWeight.w400, height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: ' according to ',
                      style: TextStyle(
                        color:
                            ColorManager.textGrey, // Color for the regular text
                        fontSize: 14, fontWeight: FontWeight.w400, height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: 'PIPO Privacy Policy.',
                      style: TextStyle(
                        color: ColorManager
                            .primary, // Color for "PIPO Privacy Policy"
                        fontSize: 14, fontWeight: FontWeight.w400, height: 1.3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            final cartItems = state.cartModel?.result?.cartProducts?.cartItems;

            final subTotal = _getTotalPrice(
              cartItems?.map((e) => e.basePrice).toList(),
              cartItems?.map((e) => e.quantity).toList(),
            );
            const shippingFee = 27;
            const estimatingTax = 2036;
            final total = subTotal + shippingFee + estimatingTax;
            return MainButton(
              title: Appstrings.pay,
              onPressed: () {
                final pickUpaddress = context
                    .read<AddressBloc>()
                    .state
                    .addressIdModel!
                    .result
                    .address;

                print(
                    "here is the address ${context.read<AddressBloc>().state.addressIdModel!.result.address.addressLine}");

                print('here is the address id ${pickUpaddress.id}');

                context.read<ShopProductsBloc>().add(PostOrders(
                      id: pickUpaddress.id,
                      shippingCharges: shippingFee,
                      totalDiscount: 0,
                      weight: 4,
                      pickupLocation: pickUpaddress.addressLine,
                      quantity: 2,
                      totalPrice: total,
                      context: context,
                    ));

                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      PaymentSuccessful(subTotal: total, delivery: shippingFee),
                ));
              },
            );
          },
        ),
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
