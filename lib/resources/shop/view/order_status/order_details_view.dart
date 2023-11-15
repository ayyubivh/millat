import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/bloc/models/cart/cart_models.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';
import '../../../../components/common_widgets/shop_products_widget.dart';
import '../../../../utils/assets_paths.dart';
import '../../bloc/logic/address_bloc/address_bloc.dart';
import '../../bloc/logic/cart_bloc/cart_bloc.dart';
import '../checkout/widgets/order_product_card.dart';

class OrdetailsView extends StatelessWidget {
  final String? orderStatus;
  const OrdetailsView({Key? key, this.orderStatus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   print(context.read<ShopProductsBloc>().state.orderId);
    //   final shopBloc = BlocProvider.of<ShopProductsBloc>(context);
    //   shopBloc.add(FetchOrdersById(
    //       context, context.read<ShopProductsBloc>().state.orderId ?? 0));
    // });
    var containerHeight10 = Container(
      height: 8,
      width: double.infinity,
      color: ColorManager.scaffoldBgColor,
    );
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          Appstrings.viewOrderDetails,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: ColorManager.blackColor,
          ),
        ),
        leading: BackButton(color: ColorManager.blackColor),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: BlocBuilder<ShopProductsBloc, ShopProductsState>(
        builder: (context, state) =>
            state.isLoading || state.ordersByIdModel?.result?.order == null
                ? const Loader()
                : SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        containerHeight10,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              kHeight20,
                              const Text(
                                Appstrings.orderDetails,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              kHeight16,
                              _orderDetailsWidget(),
                              kHeight20,
                            ],
                          ),
                        ),
                        containerHeight10,
                        // Column(
                        //   children: [
                        //     Text(
                        //       Appstrings.trackShipment,
                        //       style: TextStyle(
                        //         fontSize: 17,
                        //         fontWeight: FontWeight.w600,
                        //         color: ColorManager.blackColor,
                        //       ),
                        //     ),
                        //     Row(
                        //       children: [
                        //         Container(
                        //           color: ColorManager.scaffolBgColor,
                        //           child: Container(
                        //             height: 60,
                        //             width: SizeUtility(context).width,
                        //             decoration: BoxDecoration(
                        //                 color: ColorManager.whiteColor,
                        //                 borderRadius: BorderRadius.circular(4)),
                        //             child: Row(
                        //               children: [
                        //                 progressWidget(
                        //                   text: "Ordered",
                        //                   onTap: () {},
                        //                   isProcessing: false,
                        //                   isOrdered: true,
                        //                 ),
                        //                 progressWidget(
                        //                   text: "Processing",
                        //                   onTap: () {},
                        //                   isProcessing: true,
                        //                   isOrdered: false,
                        //                 ),
                        //                 progressWidget(
                        //                   text: "Packed",
                        //                   onTap: () {},
                        //                   isProcessing: false,
                        //                   isOrdered: false,
                        //                 ),
                        //                 progressWidget(
                        //                   text: "Shipped",
                        //                   onTap: () {},
                        //                   isProcessing: false,
                        //                   isOrdered: false,
                        //                 ),
                        //                 progressWidget(
                        //                   text: "Delivered",
                        //                   onTap: () {},
                        //                   isProcessing: false,
                        //                   isOrdered: false,
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         )
                        //       ],
                        //     )
                        //   ],
                        // ),
                        kHeight20,
                        _shipmentDetailsWidget(),
                        kHeight20,
                        containerHeight10,
                        kHeight20,
                        _paymentInformation(context),
                        kHeight16,
                        containerHeight10,
                        kHeight20,
                        _orderSummaryWidget(),
                        kHeight16,
                        containerHeight10,
                        kHeight20,
                        _lastProductWidget(),
                      ],
                    ),
                  ),
      ),
    );
  }

  Widget _lastProductWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            Appstrings.youMaylike,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight15,
          BlocBuilder<ShopProductsBloc, ShopProductsState>(
            builder: (context, state) {
              if (state
                      .popularProducts?.result?.shopProductCategory?.products ==
                  null) {
                return const SizedBox();
              }
              return SizedBox(
                height: 310,
                child: ListView.builder(
                  itemCount: state.popularProducts?.result?.shopProductCategory
                      ?.products!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final data = state.popularProducts?.result
                        ?.shopProductCategory!.products![index];
                    return GestureDetector(
                        onTap: () {
                          context.pushNamed(
                              MyAppRouteConstants.singleProductRouteName,
                              pathParameters: {'id': data.id ?? ""});
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: ShopProductWidget(
                              color: data?.color ?? "",
                              size: data?.size?[0].size ?? "",
                              brandId: data?.brand!.id,
                              isWishlisted: state.isWishListed,
                              brand: data!.brand!.name.toString(),
                              productId: data.id,
                              image: data.images?[0],
                              title: data.title,
                              actualPrice: data.regularPrice?.toInt() ?? 0,
                              discount: data.discount!.toInt(),
                              discountPrice: data.salePrice?.toInt() ?? 0),
                        ));
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _paymentInformation(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: BlocBuilder<ShopProductsBloc, ShopProductsState>(
        builder: (context, state) {
          final data = state.ordersByIdModel?.result?.order;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                Appstrings.paymentInformation,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight20,
              Container(
                height: 228,
                width: SizeUtility(context).width,
                decoration: BoxDecoration(
                  color: ColorManager.whiteColor,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  border: Border.all(
                    color: ColorManager.greyB8,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            Appstrings.paymentMethod,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          kHeight8,
                          Text(
                            data?.paymentMethod ?? "",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(color: ColorManager.blackColor),
                    kHeight10,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          const Text(
                            Appstrings.billingAddress,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          kHeight15,
                          Text(
                            "${data?.address?.addressLine ?? ""}\n${data?.address?.landmark ?? ""}\n${data?.address?.city ?? ""}\n${data?.address?.state ?? ""}\n${data?.address?.pincode ?? ""}",
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              height: 1.2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Widget _orderDetailsWidget() {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        final data = state.ordersByIdModel?.result?.order;
        return Column(
          children: [
            Container(
              height: 150,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              decoration: BoxDecoration(
                color: ColorManager.whiteColor,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                border: Border(
                  left: BorderSide(
                    color: ColorManager.greyB8,
                  ),
                  top: BorderSide(
                    color: ColorManager.greyB8,
                  ),
                  right: BorderSide(
                    color: ColorManager.greyB8,
                  ),
                  bottom: BorderSide(
                    color: ColorManager.greyB8,
                    width: 0,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(Appstrings.orderDate, style: _priceStyle()),
                      data?.orderDate != null
                          ? Text(Utilities.formatDate(data?.orderDate ?? ''),
                              style: _priceStyle())
                          : const SizedBox(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${Appstrings.order} #", style: _priceStyle()),
                      Text(data?.orderId ?? '', style: _priceStyle()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(Appstrings.orderTotal, style: _priceStyle()),
                      Text(data?.subTotal.toString() ?? "0",
                          style: _priceStyle()),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorManager.whiteColor,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(12),
                ),
                border: Border.all(
                  color: ColorManager.greyB8,
                ),
              ),
              padding: const EdgeInsets.all(12),
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: "You'll receive on email at ",
                  style: TextStyle(
                    color: ColorManager.textGrey99,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    height: 1.2,
                  ),
                ),
                TextSpan(
                  text: context
                          .read<DatabaseBloc>()
                          .state
                          .authUserModel
                          ?.result
                          ?.user
                          ?.email ??
                      "",
                  style: TextStyle(
                    color: ColorManager.blackColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                TextSpan(
                  text: " once your order is confirmed",
                  style: TextStyle(
                    color: ColorManager.textGrey99,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    height: 1.2,
                  ),
                ),
              ])),
            )
          ],
        );
      },
    );
  }

  _shipmentDetailsWidget() {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        final data = state.ordersByIdModel?.result?.order;

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              Container(
                height: 48,
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: ColorManager.whiteColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  border: Border.all(
                    color: ColorManager.greyB8,
                  ),
                ),
                child: Text(
                  Appstrings.processing,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: ColorManager.primary,
                  ),
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.symmetric(
                      vertical: BorderSide(
                    color: ColorManager.greyB8,
                  )),
                ),
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Appstrings.deliveryEstimate,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: ColorManager.black4F,
                      ),
                    ),
                    kHeight10,
                    Text(
                      Utilities.formatDate(data?.orderDate ?? ""),
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: ColorManager.primary,
                      ),
                    ),
                    kHeight10,
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: NetworkImage(
                                  data?.productId?.images![0] ?? ""),
                            ),
                          ),
                        ),
                        kWidth10,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Text(
                                data?.productId?.title ?? "",
                                style: const TextStyle(
                                  color: textBlack,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            kHeight8,
                            Text(
                              "${data?.productId?.color ?? ""},${data?.productId?.size?[0].size ?? ""}",
                              style: TextStyle(
                                color: ColorManager.textGrey7A,
                                fontSize: 13,
                              ),
                            ),
                            kHeight8,
                            Row(
                              children: [
                                ImageIcon(
                                  const AssetImage(
                                    AppAssetsStrings.orderIdIcon,
                                  ),
                                  size: 16,
                                  color:
                                      ColorManager.blackColor.withOpacity(0.5),
                                ),
                                kWidth5,
                                Text(
                                  data?.orderId ?? '',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: ColorManager.textGrey7A,
                                  ),
                                ),
                              ],
                            ),
                            kHeight10,
                            Text(
                              "Qty:${data?.quantity}",
                              style: TextStyle(
                                fontSize: 13,
                                color: ColorManager.textGrey7A,
                              ),
                            ),
                            kHeight8,
                            Text(
                              "Sold By: ${data?.brand?.name}",
                              style: TextStyle(
                                fontSize: 13,
                                color: ColorManager.textGrey7A,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 48,
                decoration: BoxDecoration(
                  color: ColorManager.whiteColor,
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(14),
                  ),
                  border: Border.all(
                    color: ColorManager.greyB8,
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    orderStatus == Appstrings.processing
                        ? context
                            .pushNamed(MyAppRouteConstants.orderCancelRouteName)
                        : orderStatus == Appstrings.cancelled
                            ? null
                            : context.pushNamed(
                                MyAppRouteConstants.orderReturnRouteName);
                  },
                  child: Row(
                    children: [
                      kWidth10,
                      orderStatus == "Delivered"
                          ? Text(
                              Appstrings.returnOrder,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: ColorManager.redColor,
                              ),
                            )
                          : orderStatus == Appstrings.cancelled
                              ? Text(
                                  Appstrings.cancelled,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: ColorManager.redColor,
                                  ),
                                )
                              : Text(
                                  Appstrings.cancelOrder,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: ColorManager.redColor,
                                  ),
                                ),
                      const Spacer(),
                      orderStatus == Appstrings.cancelled
                          ? const SizedBox()
                          : Icon(
                              Icons.arrow_forward_ios,
                              color: ColorManager.redColor,
                              size: 18,
                            ),
                      kWidth10
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  BlocBuilder<ShopProductsBloc, ShopProductsState> _orderSummaryWidget() {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        final data = state.ordersByIdModel?.result?.order;

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Appstrings.orderSummary,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.blackColor,
                ),
              ),
              kHeight16,
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                decoration: BoxDecoration(
                  color: ColorManager.whiteColor,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  border: Border.all(
                    color: ColorManager.greyB8,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Appstrings.itemCost, style: _priceStyle()),
                        Text(data?.subTotal.toString() ?? '0',
                            style: _priceStyle()),
                      ],
                    ),
                    kHeight10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Appstrings.postPacking, style: _priceStyle()),
                        Text(data?.shippingCharges.toString() ?? '0',
                            style: _priceStyle()),
                      ],
                    ),
                    kHeight10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Appstrings.totalbfTax, style: _priceStyle()),
                        Text(
                          data?.subTotal.toString() ?? '',
                          style: _priceStyle(),
                        ),
                      ],
                    ),
                    kHeight10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Appstrings.tax, style: _priceStyle()),
                        Text(
                          data?.tax.toString() ?? '',
                          style: _priceStyle(),
                        ),
                      ],
                    ),
                    kHeight10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Appstrings.total, style: _priceStyle()),
                        Text(
                          data?.sellingPrice.toString() ?? '',
                          style: _priceStyle(),
                        ),
                      ],
                    ),
                    kHeight10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(Appstrings.orderTotal,
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w900,
                            )),
                        Text(
                          data?.sellingPrice.toString() ?? '',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w900,
                              color: ColorManager.primary),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  TextStyle _priceStyle() {
    return TextStyle(
      color: ColorManager.blackColor,
      fontSize: 17,
      fontWeight: FontWeight.bold,
    );
  }

  Widget productsCard(int itemCount, int itemsToShow, List<CartItem>? cartItems,
      bool showMoreButton, BuildContext context, CartState state) {
    return Column(
      children: [
        if (itemCount > 0)
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: itemCount == 1 ? 1 : itemsToShow,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final data = cartItems![index];
              return OrderProductCard(
                id: data.productId!.id,
                title: data.productId?.title,
                size: data.size,
                image: data.productId?.images?[0],
                price: data.sellingPrice ?? 0,
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
              context.read<CartBloc>().add(const ToggleShowMoreEvent());
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
  }

  Card addressCard() {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: BlocBuilder<AddressBloc, AddressState>(
          builder: (context, state) {
            final data = state.addressIdModel?.result.address;
            if (data == null) {
              return Center(
                child: CircularProgressIndicator(
                  color: ColorManager.greenColor1,
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
              children: [
                const Icon(Icons.location_on_outlined),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.name,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: ColorManager.blackColor),
                    ),
                    kHeight10,
                    SizedBox(
                        width: SizeUtility(context).width * 60 / 100,
                        child: Text(
                          address.toString(),
                          style: TextStyle(
                              height: 1.7,
                              fontWeight: FontWeight.w700,
                              color: ColorManager.textGrey99),
                        )),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
 // Widget _orderStatusContainer() {
  //   return BlocBuilder<ShopProductsBloc, ShopProductsState>(
  //     builder: (context, state) {
  //       final data = state.ordersByIdModel?.result?.order;
  //       return data == null
  //           ? const Loader()
  //           : Container(
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(13),
  //               ),
  //               child: Card(
  //                 elevation: 0,
  //                 child: Padding(
  //                   padding: const EdgeInsets.symmetric(
  //                       vertical: 30, horizontal: 20),
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       Row(
  //                         children: [
  //                           SizedBox(
  //                             height: 19,
  //                             width: 16,
  //                             child: Image.asset(
  //                               'assets/icons/preparing_order_icon.png',
  //                             ),
  //                           ),
  //                           const SizedBox(width: 5),
  //                           Text(
  //                             data.shippingStatus.toString(),
  //                             style: TextStyle(
  //                               fontSize: 22,
  //                               color: ColorManager.primary,
  //                               fontWeight: FontWeight.bold,
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                       const SizedBox(height: 8),
  //                       const Text(
  //                         'Your order has been packed and is awaiting shipping',
  //                         style: TextStyle(
  //                           fontSize: 17,
  //                           fontWeight: FontWeight.w400,
  //                           color: black102,
  //                         ),
  //                       ),
  //                       const SizedBox(height: 8),
  //                       const Divider(),
  //                       const SizedBox(height: 8),
  //                       const Text(
  //                         'Est. delivery by Apr 22-Apr 27',
  //                         style: TextStyle(
  //                           fontSize: 17,
  //                           fontWeight: FontWeight.w400,
  //                           color: black102,
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             );
  //     },
  //   );
  // }