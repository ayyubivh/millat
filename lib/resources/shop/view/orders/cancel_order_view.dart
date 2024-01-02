import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../../routes/app_router_constants.dart';
import '../../../../utils/assets_paths.dart';
import '../../../../utils/constants.dart';

class CancelView extends StatelessWidget {
  const CancelView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final orderId = context.read<ShopProductsBloc>().state.orderId;
      BlocProvider.of<ShopProductsBloc>(context)
        ..add(const ShopProductsEvent.fetchOrderReasons(
            endpoint: Appstrings.cancelReasonEnpoint))
        ..add(ShopProductsEvent.fetchOrdersById(context, orderId!));
    });

    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        foregroundColor: ColorManager.blackColor,
        backgroundColor: ColorManager.whiteColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          Appstrings.cancelOrder,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 150,
              width: SizeUtility(context).width,
              decoration: BoxDecoration(
                color: ColorManager.scaffoldBgColor,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: BlocBuilder<ShopProductsBloc, ShopProductsState>(
                builder: (context, state) {
                  final data = state.ordersByIdModel?.result?.order;
                  return data == null
                      ? const Loader()
                      : SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              kHeight10,
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                data.productId?.images![0] ??
                                                    ""),
                                          ),
                                        ),
                                      ),
                                      kHeight5,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                            data.orderId ?? '',
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        child: Text(
                                          data.productId?.title ?? "",
                                          style: const TextStyle(
                                            color: textBlack,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      kHeight8,
                                      Text(
                                        "${data.productId?.color ?? ""},${data.productId?.size?[0].size ?? ""}",
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
                                        data.sellingPrice.toString() ?? "",
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
            kHeight25,
            const Text(
              Appstrings.returnReasonTitle,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            kHeight25,
            BlocBuilder<ShopProductsBloc, ShopProductsState>(
              builder: (context, state) => Expanded(
                child: ListView.separated(
                  itemCount:
                      state.reasonModel?.result?.data?.reasons?.length ?? 0,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        _reasonTile(index, state, context),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                ),
              ),
            ),
            kHeight15,
            // BlocBuilder<ShopProductsBloc, ShopProductsState>(
            //   builder: (context, state) => Container(
            //       height: 128,
            //       width: SizeUtility(context).width,
            //       decoration: BoxDecoration(
            //         color: ColorManager.scaffolBgColor,
            //         borderRadius: BorderRadius.circular(12),
            //       ),
            //       padding: const EdgeInsets.all(12),
            //       child: TextFormField(
            //         enabled: state.indexVal == 3,
            //         cursorColor: ColorManager.primary,
            //         decoration: const InputDecoration(border: InputBorder.none),
            //         maxLines: 7,
            //       )
            //       // Text(
            //       //   Appstrings.returnDescription,
            //       //   style: TextStyle(
            //       //     fontSize: 14,
            //       //     fontWeight: FontWeight.w500,
            //       //     color: ColorManager.textLightGrey,
            //       //   ),
            //       // ),
            //       ),
            // ),
            kHeight5,
            // Align(
            //   alignment: Alignment.topLeft,
            //   child: Text(
            //     Appstrings.returnCharText,
            //     style: TextStyle(
            //       fontSize: 12,
            //       fontWeight: FontWeight.w500,
            //       color: ColorManager.textLightGrey,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
      bottomSheet: BlocBuilder<ShopProductsBloc, ShopProductsState>(
        builder: (context, state) => Container(
          padding:
              const EdgeInsets.only(top: 10, bottom: 30, left: 20, right: 20),
          height: 100,
          width: double.infinity,
          child: MainButton(
            title: Appstrings.submit,
            onPressed: () {
              final id =
                  state.ordersByIdModel!.result!.order!.shiprocketOrderId;

              context.read<ShopProductsBloc>()
                ..add(
                    CancelOrder(context: context, shiprockeId: int.parse(id!)))
                ..add(AddReasons(
                    endpoint: Appstrings.addCancelReasonEnpoint,
                    text: state
                        .reasonModel!.result!.data!.reasons![state.indexVal]
                        .toString()));

              context.pushNamed(MyAppRouteConstants.orderReturnSuccesRouteName,
                  extra: {'orderType': OrderType.cancelOrder});
            },
          ),
        ),
      ),
    );
  }

  Widget _reasonTile(int index, ShopProductsState state, BuildContext context) {
    return ListTile(
      leading: Radio(
        activeColor: ColorManager.primary,
        value: index == state.indexVal,
        groupValue: true,
        onChanged: (value) {
          context
              .read<ShopProductsBloc>()
              .add(ShopProductsEvent.changeIndexEvent(index: index));
        },
      ),
      title: Text(
        state.reasonModel?.result?.data?.reasons?[index].text ?? "",
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          height: 1.2,
          letterSpacing: 0.2,
        ),
      ),
    );
  }
}
