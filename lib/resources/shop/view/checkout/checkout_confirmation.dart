import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/address_bloc/address_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/checkout/checkout_view.dart';
import 'package:millat/resources/shop/view/checkout/widgets/order_product_card.dart';
import 'package:millat/resources/shop/view/order_status/payment_successful.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';
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
      appBar: AppBar(
        title: const Text('Confirmation',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        centerTitle: false,
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Slider(
                activeColor: green77,
                inactiveColor: black195,
                max: 10,
                min: 0,
                divisions: 2,
                value: 10,
                onChanged: (value) {},
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Personal Info',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, color: green77),
                  ),
                  Text(
                    'Payment',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: green77),
                  ),
                  Text(
                    'Confirmation',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: green77),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Card(
                elevation: 0,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: BlocBuilder<AddressBloc, AddressState>(
                    builder: (context, state) {
                      final data = state.addressIdModel?.result.address;
                      if (data == null) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: green77,
                          ),
                        );
                      }
                      final formatedMobile = data.mobile
                          .toString()
                          .substring(data.mobile.toString().length - 4);
                      final String address =
                          '$formatedMobile ${data.addressLine} ${data.landmark} ${data.city}\n${data.state} ${data.pincode}';

                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.location_on_outlined),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: black26),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: SizeUtility(context).width * 60 / 100,
                                  child: Text(
                                    address.toString(),
                                    style: const TextStyle(
                                        height: 1.7,
                                        fontWeight: FontWeight.w700,
                                        color: black122),
                                  )),
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const CheckoutView(),
                                ));
                              },
                              icon: const Icon(
                                Icons.edit,
                                size: 20,
                                color: green77,
                              )),
                        ],
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Products',
                style: TextStyle(
                    color: black26, fontSize: 17, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  if (state.cartLoading) {
                    return const Center(
                      child: CircularProgressIndicator(color: green77),
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
                  final showMoreButton = itemCount > maxItemsToShow;

                  return Column(
                    children: [
                      if (itemCount > 0)
                        ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: itemCount == 1 ? 1 : itemsToShow,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final data = cartItems![index];
                            return OrderProductCard(
                              id: data.productId!.id,
                              title: data.productId?.title,
                              size: data.size,
                              image: data.productId?.colors![0].images![0],
                              price: data.basePrice!.toInt(),
                              jsonColor: data.color,
                              colorName: data.color,
                              quantity: data.quantity!.toInt(),
                              productId: data.productId?.id,
                            );
                          },
                        ),
                      if (showMoreButton && itemCount > 1)
                        TextButton(
                          onPressed: () {
                            context
                                .read<CartBloc>()
                                .add(const ToggleShowMoreEvent());
                          },
                          child: Text(
                            state.showMore ? 'Show Less' : 'Show More',
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      if (showMoreButton && itemCount <= 1)
                        const Text(
                          'No more items to show',
                          style: TextStyle(
                            color: Colors.grey,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                    ],
                  );
                },
              ),
              const Text(
                'Standard Shipping',
                style: TextStyle(
                    color: black26, fontSize: 17, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Est. delivery by Apr 22 - Apr 27',
                style: TextStyle(
                    color: black122, fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Message',
                style: TextStyle(
                    color: black26, fontSize: 17, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Promo Code',
                        style: TextStyle(
                            color: black26,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: SizeUtility(context).width * 50 / 100,
                            child: const TextField(),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(green77),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: const BorderSide(
                                      color: green77, width: 2.0),
                                ),
                              ),
                              elevation: MaterialStateProperty.all(0),
                              fixedSize: MaterialStateProperty.all(Size(
                                  SizeUtility(context).width * 30 / 100, 50)),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const CheckoutConfirmation(),
                              ));
                            },
                            child: const Text(
                              'Apply',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Payment Method',
                style: TextStyle(
                    color: black26, fontSize: 17, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/icons/cash.png',
                              width: 35, height: 35),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'Cash on Delivery',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const CheckoutPayment(),
                          ));
                        },
                        icon: const Icon(
                          Icons.edit,
                          color: green24,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: SizeUtility(context).width * 90 / 100,
                  child: const Text(
                    'By placing an order, you acknowledge that you have read the Terms of Service and Privacy Policy of Linger Shop. Payment will be processed separately by PIPO according to PIPO Privacy Policy.',
                    style:
                        TextStyle(color: black122, fontSize: 15, height: 1.3),
                  )),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 350,
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
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Sub Total',
                        style: TextStyle(
                            color: black26,
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                    Text('₹$subTotal',
                        style: const TextStyle(
                            color: black26,
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shipping Fee',
                        style: TextStyle(
                            color: black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                    Text('₹$shippingFee',
                        style: TextStyle(
                            color: black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Estimating Tax',
                        style: TextStyle(
                            color: black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                    Text('₹$estimatingTax',
                        style: TextStyle(
                            color: black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Divider(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Total',
                        style: TextStyle(
                            color: black26,
                            fontSize: 19,
                            fontWeight: FontWeight.w700)),
                    const Text(
                      ':',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                    Text('₹$total',
                        style: const TextStyle(
                            color: green24,
                            fontSize: 19,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) => InkWell(
                    onTap: () {
                      print(
                          'on the view total $total and the ${state.cartModel!.result!.cartProducts!.id} ');
                      context.read<ShopProductsBloc>().add(PostOrders(
                          totalPrice: total,
                          productId: state.cartModel!.result!.cartProducts!.id
                              .toString(),
                          context: context));
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PaymentSuccessful(),
                      ));
                    },
                    child: Container(
                        alignment: Alignment.center,
                        width: SizeUtility(context).width,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: green24,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                              color: whiteClr,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        )),
                  ),
                ),
              ],
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
