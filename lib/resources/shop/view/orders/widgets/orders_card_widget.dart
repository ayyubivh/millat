import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/view/tabs/shop_tabs_vilew.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';
import '../../../../../utils/color_manager.dart';
import '../../../bloc/logic/shop_bloc/shop_products_bloc.dart';

class OrdersProfileWidget extends StatelessWidget {
  final String? id;
  final String? title;
  final String? size;
  final String? image;
  final double price;
  final String? jsonColor;
  final String? colorName;
  final int quantity;
  final String? productId;
  final String? orderStatus;
  final String? orderId;
  final VoidCallback onTap;
  final String date;
  final int isIndex;
  const OrdersProfileWidget({
    super.key,
    required this.id,
    required this.title,
    required this.size,
    required this.image,
    required this.price,
    required this.jsonColor,
    required this.colorName,
    required this.quantity,
    required this.productId,
    required this.orderStatus,
    required this.orderId,
    required this.onTap,
    required this.date,
    required this.isIndex,
  });

  @override
  Widget build(BuildContext context) {
    // final backgroundColor = _getColorFromJson(jsonColor);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(5),
          color: ColorManager.whiteColor,
          child: BlocBuilder<ShopProductsBloc, ShopProductsState>(
            builder: (context, state) {
              return SizedBox(
                height:
                    state.showProgress && state.ordereProgressIndex == isIndex
                        ? 356
                        : 275,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: ColorManager.veryLightGreen,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                orderStatus == Appstrings.processing
                                    ? AppAssetsStrings.processing
                                    : orderStatus == Appstrings.cancelled
                                        ? AppAssetsStrings.orderStatusCancel
                                        : orderStatus == Appstrings.delivered
                                            ? AppAssetsStrings.delivered
                                            : AppAssetsStrings.processing,
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ),
                          kWidth15,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                orderStatus ?? "",
                                style: TextStyle(
                                  color: ColorManager.black4F,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              kHeight8,
                              Text(
                                "On ${Utilities.formatDate(date)}",
                                style: TextStyle(
                                  color: ColorManager.textGrey2,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      kHeight10,
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: ColorManager.scaffolBgColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image: NetworkImage(image ?? "")),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.4,
                                            child: Text(
                                              title.toString(),
                                              style: const TextStyle(
                                                color: textBlack,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          BlocBuilder<ShopProductsBloc,
                                              ShopProductsState>(
                                            builder: (context, state) =>
                                                GestureDetector(
                                                    onTap: () {
                                                      context.read<
                                                          ShopProductsBloc>()
                                                        ..add(
                                                            const ShowOrderProgressEvent())
                                                        ..add(
                                                            IndexChangeOnOrderProgress(
                                                                index:
                                                                    isIndex));
                                                    },
                                                    child: state.showProgress &&
                                                            state.ordereProgressIndex ==
                                                                isIndex
                                                        ? Icon(
                                                            Icons.expand_more,
                                                            size: 20,
                                                            color: ColorManager
                                                                .blackColor,
                                                          )
                                                        : Icon(
                                                            Icons
                                                                .arrow_forward_ios,
                                                            size: 15,
                                                            color: ColorManager
                                                                .blackColor,
                                                          )),
                                          )
                                        ],
                                      ),
                                      kHeight8,
                                      Text(
                                        '$colorName, $size',
                                        style: TextStyle(
                                          color: ColorManager.textGrey7A,
                                          fontSize: 13,
                                        ),
                                      ),
                                      kHeight5,
                                      Row(
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
                                            orderId ?? '',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: ColorManager.textGrey7A,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          state.showProgress &&
                                  state.ordereProgressIndex == isIndex
                              ? Container(
                                  color: ColorManager.scaffolBgColor,
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    height: 60,
                                    width: SizeUtility(context).width,
                                    decoration: BoxDecoration(
                                        color: ColorManager.whiteColor,
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        progressWidget(
                                          isShowDivider: true,
                                          isCancelled: orderStatus ==
                                              Appstrings.cancelled,
                                          text: Appstrings.ordered,
                                          onTap: () {},
                                          isProcessing: false,
                                          isOrdered: true,
                                        ),
                                        progressWidget(
                                          isShowDivider: true,
                                          isCancelled: orderStatus ==
                                              Appstrings.cancelled,
                                          text: Appstrings.processing,
                                          onTap: () {},
                                          isProcessing: true,
                                          isOrdered: false,
                                        ),
                                        progressWidget(
                                          cancelled2: orderStatus ==
                                              Appstrings.cancelled,
                                          isShowDivider: true,
                                          isCancelled: false,
                                          text: "OUT FOR PICKUP",
                                          onTap: () {},
                                          isProcessing: false,
                                          isOrdered: false,
                                        ),
                                        progressWidget(
                                          cancelled2: orderStatus ==
                                              Appstrings.cancelled,
                                          isShowDivider: true,
                                          isCancelled: false,
                                          text: "PICKED UP",
                                          onTap: () {},
                                          isProcessing: false,
                                          isOrdered: false,
                                        ),
                                        progressWidget(
                                          isShowDivider: false,
                                          isCancelled: orderStatus ==
                                              Appstrings.cancelled,
                                          text: orderStatus ==
                                                  Appstrings.cancelled
                                              ? "Cancelled"
                                              : "Delivered",
                                          onTap: () {},
                                          isProcessing: false,
                                          isOrdered: false,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                          kHeight3,
                          Container(
                            height: 40,
                            width: SizeUtility(context).width,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: ColorManager.scaffolBgColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              orderStatus != Appstrings.cancelled
                                  ? "Exchange/Return closed by 31st July"
                                  : Appstrings.orderCancelled,
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          kHeight3,
                          orderStatus == Appstrings.delivered
                              ? Container(
                                  height: 40,
                                  width: SizeUtility(context).width,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: ColorManager.scaffolBgColor,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: const Text(
                                    "Rate Product",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ShopTabsView()));
                                    context.read<ShopProductsBloc>().add(
                                        const TabIndexChangeEvent(index: 0));
                                  },
                                  child: Container(
                                    height: 40,
                                    width: SizeUtility(context).width,
                                    margin: const EdgeInsets.only(top: 3),
                                    decoration: BoxDecoration(
                                      color: ColorManager.primary,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        Appstrings.keepShopping,
                                        style: TextStyle(
                                          color: ColorManager.whiteColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  // Color _getColorFromJson(String? color) {
  //   switch (color) {
  //     case 'Pink':
  //       return Colors.pink;
  //     case 'Green':
  //       return Colors.green;
  //     case 'Grey':
  //       return Colors.grey;
  //     case 'Red':
  //       return Colors.red;
  //     case 'Black':
  //       return Colors.black;
  //     default:
  //       return Colors.black;
  //   }
  // }
}

Widget progressWidget({
  required String text,
  required bool isOrdered,
  required VoidCallback onTap,
  required bool isProcessing,
  required bool isCancelled,
  required bool isShowDivider,
  bool? cancelled2,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        text,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: ColorManager.blackColor,
        ),
      ),
      kHeight5,
      GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 28,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              isOrdered == true
                  ? CircleAvatar(
                      backgroundColor: ColorManager.primary,
                      radius: 11,
                      child: Icon(
                        Icons.check,
                        size: 18,
                        color: ColorManager.whiteColor,
                      ),
                    )
                  : isProcessing == true
                      ? Image.asset(AppAssetsStrings.processingLoading)
                      : isCancelled == true
                          ? Container(
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorManager.redColor,
                              ),
                              padding: const EdgeInsets.all(1),
                              child: Icon(
                                Icons.close,
                                color: ColorManager.whiteColor,
                                size: 16,
                              ),
                            )
                          : CircleAvatar(
                              radius: 10,
                              backgroundColor: cancelled2 == true
                                  ? ColorManager.redColor
                                  : ColorManager.greyD1,
                              child: CircleAvatar(
                                radius: 4,
                                backgroundColor: cancelled2 == true
                                    ? ColorManager.whiteColor
                                    : ColorManager.whiteColor,
                              ),
                            ),
              isShowDivider == true
                  ? Container(
                      width: 40,
                      height: 2,
                      color: isProcessing == true || isOrdered == true
                          ? ColorManager.primary
                          : cancelled2 == true || isCancelled == true
                              ? ColorManager.redColor
                              : ColorManager.greyD9,
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
      kHeight8,
    ],
  );
}
