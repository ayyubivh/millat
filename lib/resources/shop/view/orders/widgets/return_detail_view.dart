import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import '../../../../../components/buttons/main_button.dart';
import '../../../../../utils/assets_paths.dart';
import '../../../../../utils/color_manager.dart';
import '../../../../../utils/string_constants.dart';
import '../../../bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'orders_card_widget.dart';

class OrderRetunDetailView extends StatelessWidget {
  const OrderRetunDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.whiteColor,
        appBar: AppBar(
          foregroundColor: ColorManager.blackColor,
          backgroundColor: ColorManager.whiteColor,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            Appstrings.returnDetails,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              kHeight20,
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 160,
                      width: SizeUtility(context).width,
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: ColorManager.lightBlackColor99,
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order #FDS45347",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: ColorManager.textGrey2,
                            ),
                          ),
                          kHeight10,
                          Row(
                            children: [
                              Text(
                                "Placed on Jun 1, 2021",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: ColorManager.blackColor,
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: ColorManager.textGrey2,
                              ),
                            ],
                          ),
                          kHeight5,
                          const Divider(),
                          kHeight10,
                          Row(
                            children: [
                              progressWidget(
                                isShowDivider: true,
                                isCancelled: false,
                                text: "Ordered",
                                isProcessing: false,
                                isOrdered: true,
                              ),
                              progressWidget(
                                isShowDivider: true,
                                isCancelled: false,
                                text: "Processing",
                                isProcessing: false,
                                isOrdered: true,
                              ),
                              progressWidget(
                                isShowDivider: true,
                                isCancelled: false,
                                text: "Packed",
                                isProcessing: false,
                                isOrdered: true,
                              ),
                              progressWidget(
                                isShowDivider: true,
                                isCancelled: false,
                                text: "Shipped",
                                isProcessing: true,
                                isOrdered: true,
                              ),
                              progressWidget(
                                isShowDivider: false,
                                isCancelled: false,
                                text: "Delivered",
                                isProcessing: true,
                                isOrdered: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    kHeight20,
                    const Text(
                      Appstrings.pickUpAddress,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              kHeight20,
              BlocBuilder<ShopProductsBloc, ShopProductsState>(
                builder: (context, state) {
                  final data = state.ordersByIdModel?.result?.order?.address;

                  return _buildAddresses(
                      name: data?.name,
                      address:
                          "${data?.addressLine} ${data?.city} ${data?.landmark} ${data?.pincode}",
                      isSelected: false,
                      phoneNumber: data?.mobile.toString() ?? "",
                      email: "",
                      type: data?.addressType ?? "",
                      onTap: () {},
                      context: context);
                },
              ),
              kHeight10,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Return Product",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              kHeight10,
              Container(
                height: 150,
                width: SizeUtility(context).width,
                decoration: BoxDecoration(
                  color: ColorManager.scaffoldBgColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: BlocBuilder<ShopProductsBloc, ShopProductsState>(
                  builder: (context, state) {
                    final data = state.ordersByIdModel?.result?.order;
                    return SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          kHeight10,
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            data?.productId?.images![0] ?? ""),
                                      ),
                                    ),
                                  ),
                                  kHeight5,
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ImageIcon(
                                        const AssetImage(
                                          AppAssetsStrings.orderIdIcon,
                                        ),
                                        size: 16,
                                        color: ColorManager.blackColor
                                            .withOpacity(0.5),
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
                                ],
                              ),
                              kWidth10,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: Text(
                                      data?.productId?.title ?? "",
                                      style: const TextStyle(
                                        color: textBlack,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
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
                                  Text(
                                    "Status : Delivered",
                                    style: TextStyle(
                                      color: ColorManager.textGrey7A,
                                      fontSize: 13,
                                    ),
                                  ),
                                  kHeight8,
                                  Text(
                                    data?.sellingPrice.toString() ?? "",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: ColorManager.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              height: 30,
                              width: 60,
                              child: MainButton(
                                title: "Track",
                                onPressed: () {},
                                textSize: 11,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          padding:
              const EdgeInsets.only(top: 10, bottom: 30, left: 20, right: 20),
          height: 100,
          width: double.infinity,
          child: MainButton(
            title: Appstrings.submit,
            onPressed: () {
              final id = context
                  .read<ShopProductsBloc>()
                  .state
                  .ordersByIdModel!
                  .result!
                  .order!
                  .shiprocketOrderId;
              context.read<ShopProductsBloc>().add(
                  ReturnOrder(context: context, shiprockeId: int.parse(id!)));

              context.pushNamed(MyAppRouteConstants.orderReturnSuccesRouteName,
                  extra: {'orderType': OrderType.returnOrder});
            },
          ),
        ));
  }

  Widget _buildAddresses({
    required String? name,
    required String? address,
    required bool isSelected,
    required String phoneNumber,
    required String email,
    required String type,
    required Function() onTap,
    required BuildContext context,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 200,
      width: SizeUtility(context).width,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ColorManager.whiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Deliver To : ${name.toString()}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: ColorManager.blackColor,
                ),
              ),
              kHeight10,
              Container(
                height: 25,
                width: 55,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorManager.primary,
                    ),
                    borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.all(2),
                child: Center(
                  child: Text(
                    type,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: ColorManager.primary,
                    ),
                  ),
                ),
              ),
              kHeight10,
              SizedBox(
                height: 35,
                width: 200,
                child: Text(
                  "Address:${address.toString()}",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.textGrey2,
                    height: 1.3,
                  ),
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                ),
              ),
              kHeight15,
              SizedBox(
                width: 200,
                child: Text(
                  "Phone Number:${phoneNumber.toString()}",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: ColorManager.textGrey2,
                    fontSize: 12,
                  ),
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                ),
              ),
              kHeight10,
              SizedBox(
                width: 200,
                child: Text(
                  "Email:${email.toString()}",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: ColorManager.textGrey2,
                    fontSize: 12,
                  ),
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
