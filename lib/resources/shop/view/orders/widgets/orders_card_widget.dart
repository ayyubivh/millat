import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/shop/bloc/logic/review_bloc/bloc/review_bloc.dart';
import 'package:millat/resources/shop/view/orders/review_view.dart';
import 'package:millat/routes/app_router_constants.dart';
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
    DateTime orderDate = DateTime.parse(date);
    DateTime estimatedDeliveryDate = orderDate.add(const Duration(days: 7));
    String formattedEstimatedDeliveryDate = Utilities.formatDate(
      estimatedDeliveryDate.toLocal().toString(),
    );
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
                        ? 386
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
                            backgroundColor: ColorManager.darkWhite,
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
                              color: ColorManager.scaffoldBgColor,
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
                                      InkWell(
                                        onTap: () {
                                          context.read<ShopProductsBloc>()
                                            ..add(
                                                const ShowOrderProgressEvent())
                                            ..add(IndexChangeOnOrderProgress(
                                                index: isIndex));
                                        },
                                        child: Row(
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
                                              builder: (context, state) => state
                                                          .showProgress &&
                                                      state.ordereProgressIndex ==
                                                          isIndex
                                                  ? Icon(
                                                      Icons.expand_more,
                                                      size: 20,
                                                      color: ColorManager
                                                          .blackColor,
                                                    )
                                                  : Icon(
                                                      Icons.arrow_forward_ios,
                                                      size: 15,
                                                      color: ColorManager
                                                          .blackColor,
                                                    ),
                                            )
                                          ],
                                        ),
                                      ),
                                      kHeight8,
                                      Text(
                                        '$quantity x $size',
                                        style: TextStyle(
                                          color: ColorManager.textGrey7A,
                                          fontSize: 13,
                                        ),
                                      ),
                                      kHeight5,
                                      InkWell(
                                        onTap: () async {
                                          await Clipboard.setData(ClipboardData(
                                                  text: orderId ?? ''))
                                              .whenComplete(() => ScaffoldMessenger
                                                      .of(context)
                                                  .showSnackBar(const SnackBar(
                                                      content: Text(
                                                          "OrderID Copied"))));
                                        },
                                        child: Row(
                                          children: [
                                            ImageIcon(
                                              const AssetImage(
                                                AppAssetsStrings.orderIdIcon,
                                              ),
                                              size: 18,
                                              color: ColorManager.blackColor
                                                  .withOpacity(0.5),
                                            ),
                                            kWidth5,
                                            SelectableText(
                                              orderId ?? '',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: ColorManager.textGrey7A,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          state.showProgress &&
                                  state.ordereProgressIndex == isIndex &&
                                  orderStatus != Appstrings.cancelled
                              ? Padding(
                                  padding: const EdgeInsets.only(top: 25),
                                  child: progressWidget(orderStatus!),
                                )
                              // ? Container(
                              //     color: ColorManager.scaffoldBgColor,
                              //     padding: const EdgeInsets.all(10),
                              //     child: Container(
                              //       height: 80,
                              //       width: SizeUtility(context).width,
                              //       decoration: BoxDecoration(
                              //           color: ColorManager.whiteColor,
                              //           borderRadius: BorderRadius.circular(4)),
                              //       child: Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.center,
                              //         children: [
                              //           // progressWidget(
                              //           //   isShowDivider: true,
                              //           //   isCancelled: orderStatus ==
                              //           //       Appstrings.cancelled,
                              //           //   text: Appstrings.ordered,
                              //           //   isProcessing: false,
                              //           //   isOrdered: true,
                              //           // ),
                              //           // progressWidget(
                              //           //   isShowDivider: true,
                              //           //   isCancelled: orderStatus ==
                              //           //       Appstrings.cancelled,
                              //           //   text: Appstrings.processing,
                              //           //   isProcessing: true,
                              //           //   isOrdered: false,
                              //           // ),
                              //           // progressWidget(
                              //           //   cancelled2: orderStatus ==
                              //           //       Appstrings.cancelled,
                              //           //   isShowDivider: true,
                              //           //   isCancelled: false,
                              //           //   text: "OUT FOR PICKUP",
                              //           //   isProcessing: false,
                              //           //   isOrdered: false,
                              //           // ),
                              //           // progressWidget(
                              //           //   cancelled2: orderStatus ==
                              //           //       Appstrings.cancelled,
                              //           //   isShowDivider: true,
                              //           //   isCancelled: false,
                              //           //   text: "PICKED UP",
                              //           //   isProcessing: false,
                              //           //   isOrdered: false,
                              //           // ),
                              //           // progressWidget(
                              //           //   cancelled2: orderStatus ==
                              //           //       Appstrings.cancelled,
                              //           //   isShowDivider: true,
                              //           //   isCancelled: false,
                              //           //   text: orderStatus ==
                              //           //           Appstrings.cancelled
                              //           //       ? Appstrings.cancelled
                              //           //       : "DEPARTED",
                              //           //   isProcessing: false,
                              //           //   isOrdered: false,
                              //           // ),
                              //           // progressWidget(
                              //           //   isShowDivider: false,
                              //           //   isCancelled: orderStatus ==
                              //           //       Appstrings.cancelled,
                              //           //   text: "DELIVERED",
                              //           //   isProcessing: false,
                              //           //   isOrdered: false,
                              //           // ),
                              //         ],
                              //       ),
                              //     ),
                              //   )
                              : const SizedBox(),
                          kHeight3,
                          Container(
                            height: 40,
                            width: SizeUtility(context).width,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: ColorManager.scaffoldBgColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              orderStatus == Appstrings.cancelled
                                  ? Appstrings.orderCancelled
                                  : orderStatus == Appstrings.delivered
                                      ? "Exchange/Return closed by $formattedEstimatedDeliveryDate"
                                      : orderStatus == Appstrings.processing
                                          ? "${Appstrings.deliveryEstimate} Within 7 working days"
                                          : '${Appstrings.deliveryEstimate} Within 7 working days',
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          kHeight3,
                          orderStatus == Appstrings.delivered
                              ? GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => ReviewView(
                                                  productId: id ?? '',
                                                )));
                                  },
                                  behavior: HitTestBehavior.translucent,
                                  child: Container(
                                    height: 40,
                                    width: SizeUtility(context).width,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: ColorManager.scaffoldBgColor,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Rate Product",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const Spacer(),
                                        RatingBar.builder(
                                          itemSize: 20,
                                          initialRating: 0,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          ignoreGestures: true,
                                          itemCount: 5,
                                          itemPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 4.0),
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: orange255,
                                          ),
                                          onRatingUpdate: (value) {},
                                        ),
                                        kWidth20,
                                      ],
                                    ),
                                  ),
                                )
                              : GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  onTap: () {
                                    context.pushReplacementNamed(
                                        MyAppRouteConstants.shopTabsRouteName);
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
}

getStatus(String status) {
  switch (status) {
    case "PROCESSING":
      return 1;
    case "OUT FOR PICKUP":
      return 2;
    case "PICKED UP":
      return 3;
    case "DEPARTED":
      return 4;
    case "DELIVERED":
      return 5;
    default:
      return 0;
  }
}

Widget progressWidget(String orderStatus) {
  return EasyStepper(
    activeStep: 6,
    activeStepTextColor: Colors.black87,
    finishedStepTextColor: Colors.black87,
    internalPadding: 0,
    stepRadius: 12,
    finishedStepBorderType: BorderType.normal,
    defaultStepBorderType: BorderType.normal,
    lineStyle: LineStyle(
      lineType: LineType.normal,
      lineThickness: 2,
      finishedLineColor: ColorManager.primary,
    ),
    activeStepBackgroundColor: ColorManager.primary,
    finishedStepBackgroundColor: ColorManager.primary,
    activeStepBorderColor: ColorManager.primary,
    finishedStepBorderColor: Colors.transparent,
    steps: [
      EasyStep(
        customStep: CircleAvatar(
          radius: 8,
          backgroundColor: ColorManager.primary,
          child: const Icon(
            Icons.check,
            color: Colors.white,
            size: 16,
          ),
        ),
        title: "ORDERED",
        // customTitle: kText('ORDERED'),
      ),
      EasyStep(
        customStep: CircleAvatar(
          radius: 8,
          backgroundColor:
              getStatus(orderStatus) >= 1 ? ColorManager.primary : Colors.white,
          child: getStatus(orderStatus) > 1
              ? const Icon(Icons.check, color: Colors.white, size: 16)
              : getStatus(orderStatus) == 1
                  ? Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        backgroundColor: Colors.white.withOpacity(0.5),
                        strokeWidth: 3,
                      ),
                    )
                  : const SizedBox(),
        ),
        topTitle: true,
        title: "PROCESSING",
        // customTitle: kText('PROCESSING'),
      ),
      EasyStep(
        customStep: CircleAvatar(
          radius: 8,
          backgroundColor:
              getStatus(orderStatus) >= 2 ? ColorManager.primary : Colors.white,
          child: getStatus(orderStatus) > 2
              ? const Icon(Icons.check, color: Colors.white, size: 16)
              : getStatus(orderStatus) == 2
                  ? Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        backgroundColor: Colors.white.withOpacity(0.5),
                        strokeWidth: 3,
                      ),
                    )
                  : const SizedBox(),
        ),
        title: "OUT FOR\nPICKUP",
        // customTitle: kText('OUT FOR PICKUP'),
      ),
      EasyStep(
        customStep: CircleAvatar(
          radius: 8,
          backgroundColor:
              getStatus(orderStatus) >= 3 ? ColorManager.primary : Colors.white,
          child: getStatus(orderStatus) > 3
              ? const Icon(Icons.check, color: Colors.white, size: 16)
              : getStatus(orderStatus) == 3
                  ? Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        backgroundColor: Colors.white.withOpacity(0.5),
                        strokeWidth: 3,
                      ),
                    )
                  : const SizedBox(),
        ),
        topTitle: true,
        title: "PICKED UP",
        // customTitle: kText('PICKED UP'),
      ),
      EasyStep(
        customStep: CircleAvatar(
          radius: 8,
          backgroundColor:
              getStatus(orderStatus) >= 4 ? ColorManager.primary : Colors.white,
          child: getStatus(orderStatus) > 4
              ? const Icon(Icons.check, color: Colors.white, size: 16)
              : getStatus(orderStatus) == 4
                  ? Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        backgroundColor: Colors.white.withOpacity(0.5),
                        strokeWidth: 3,
                      ),
                    )
                  : const SizedBox(),
        ),
        title: "DEPARTED",
        // customTitle: kText('DEPARTED'),
      ),
      EasyStep(
        customStep: CircleAvatar(
          radius: 8,
          backgroundColor:
              getStatus(orderStatus) >= 5 ? ColorManager.primary : Colors.white,
          child: getStatus(orderStatus) >= 5
              ? const Icon(Icons.check, color: Colors.white, size: 16)
              : const SizedBox(),
        ),
        topTitle: true,
        title: "DELIVERED",
        // customTitle: kText("DELIVERED"),
      ),
    ],
  );
  // return Column(
  //   crossAxisAlignment: CrossAxisAlignment.start,
  //   mainAxisAlignment: MainAxisAlignment.center,
  //   children: [
  //     Container(
  //       padding: const EdgeInsets.only(right: 2),
  //       height: 30,
  //       width: 60,
  //       child: Text(
  //         text,
  //         style: TextStyle(
  //           fontSize: 11,
  //           fontWeight: FontWeight.w600,
  //           color: ColorManager.blackColor,
  //         ),
  //         maxLines: 2,
  //         // overflow: TextOverflow.fade,
  //       ),
  //     ),
  //     kHeight5,
  //     SizedBox(
  //       height: 28,
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         children: [
  //           isOrdered == true
  //               ? CircleAvatar(
  //                   backgroundColor: ColorManager.primary,
  //                   radius: 11,
  //                   child: Icon(
  //                     Icons.check,
  //                     size: 18,
  //                     color: ColorManager.whiteColor,
  //                   ),
  //                 )
  //               : isProcessing == true
  //                   ? Image.asset(AppAssetsStrings.processingLoading)
  //                   : isCancelled == true
  //                       ? Container(
  //                           height: 26,
  //                           width: 26,
  //                           decoration: BoxDecoration(
  //                             shape: BoxShape.circle,
  //                             color: ColorManager.redColor,
  //                           ),
  //                           padding: const EdgeInsets.all(1),
  //                           child: Icon(
  //                             Icons.close,
  //                             color: ColorManager.whiteColor,
  //                             size: 16,
  //                           ),
  //                         )
  //                       : CircleAvatar(
  //                           radius: 10,
  //                           backgroundColor: cancelled2 == true
  //                               ? ColorManager.redColor
  //                               : ColorManager.greyD1,
  //                           child: CircleAvatar(
  //                             radius: 4,
  //                             backgroundColor: cancelled2 == true
  //                                 ? ColorManager.whiteColor
  //                                 : ColorManager.whiteColor,
  //                           ),
  //                         ),
  //           isShowDivider == true
  //               ? Container(
  //                   width: 40,
  //                   height: 2,
  //                   color: isProcessing == true || isOrdered == true
  //                       ? ColorManager.primary
  //                       : cancelled2 == true || isCancelled == true
  //                           ? ColorManager.redColor
  //                           : ColorManager.greyD9,
  //                 )
  //               : const SizedBox(),
  //         ],
  //       ),
  //     ),
  //     kHeight8,
  //   ],
  // );
}

kText(String text) => Text(
      text,
      overflow: TextOverflow.visible,
      style: const TextStyle(fontSize: 12),
    );
