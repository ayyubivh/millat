import 'package:flutter/material.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/resources/shop/view/orders/widgets/return_detail_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

import '../../../../../utils/assets_paths.dart';
import '../../../../../utils/constants.dart';

class OrderReturnView extends StatelessWidget {
  const OrderReturnView({super.key});

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
          Appstrings.returnOrder,
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
                color: ColorManager.scaffolBgColor,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  kHeight10,
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage("assets/dummy/thope.png"),
                              ),
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
                                color: ColorManager.blackColor.withOpacity(0.5),
                              ),
                              kWidth5,
                              Text(
                                '683152',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: ColorManager.textGrey7A,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      kWidht10,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              'Flannel Shirt Checked',
                              style: TextStyle(
                                color: textBlack,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          kHeight8,
                          Text(
                            "Green,XL",
                            style: TextStyle(
                              color: ColorManager.textGrey7A,
                              fontSize: 13,
                            ),
                          ),
                          kHeight8,
                          Text(
                            "Status : Processing",
                            style: TextStyle(
                              color: ColorManager.textGrey7A,
                              fontSize: 13,
                            ),
                          ),
                          kHeight8,
                          Text(
                            "1,534,5",
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
            SizedBox(
              height: 260,
              width: SizeUtility(context).width,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  final texts = [
                    Appstrings.returnReason1,
                    Appstrings.returnReason2,
                    Appstrings.returnReason3,
                    Appstrings.returnReason4
                  ];
                  return ListTile(
                    leading: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: ColorManager.grey70,
                        ),
                      ),
                    ),
                    title: Text(
                      texts[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
              ),
            ),
            kHeight15,
            Container(
              height: 128,
              width: SizeUtility(context).width,
              decoration: BoxDecoration(
                color: ColorManager.scaffolBgColor,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(12),
              child: Text(
                Appstrings.returnDescription,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: ColorManager.textLightGrey,
                ),
              ),
            ),
            kHeight5,
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                Appstrings.returnCharText,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: ColorManager.textLightGrey,
                ),
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        padding:
            const EdgeInsets.only(top: 10, bottom: 30, left: 20, right: 20),
        height: 100,
        width: double.infinity,
        child: MainButton(
          title: Appstrings.next,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const OrderRetunDetailView(),
            ));
          },
        ),
      ),
    );
  }
}
