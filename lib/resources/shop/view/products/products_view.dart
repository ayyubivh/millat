import 'package:flutter/material.dart';
import 'package:millat/utils/size_utility.dart';
import '../../../../components/common_widgets/filters_row_widgets.dart';
import '../shop_view.dart';

class ProductsView extends StatelessWidget {
  final String appBarTitle;
  final passValue;
  const ProductsView({Key? key, required this.appBarTitle, this.passValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text(appBarTitle,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ImageIcon(
              AssetImage(
                'assets/icons/search.png',
              ),
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ImageIcon(
              AssetImage(
                'assets/icons/cart.png',
              ),
              color: Colors.black,
            ),
          ),
        ],
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            FiltersRowWidgets(),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: SizeUtility(context).height,
              child: GridView.builder(
                itemCount: passValue.products!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 350),
                itemBuilder: (context, index) {
                  if (appBarTitle == "Recently Added") {
                    return buildShopItems(
                        image: passValue.products![index].colors![0].images![0],
                        title: passValue.products![index].title,
                        actualPrice:
                            passValue.products![index].actualPrice!.toInt(),
                        discount: passValue.products![index].discount!.toInt(),
                        discountPrice:
                            passValue.products![index].discountPrice!.toInt());
                  }
                  return buildShopItems(
                      image: passValue.products![index]!.colors![0].images![0],
                      title: passValue.products![index].title,
                      actualPrice:
                          passValue.products![index].actualPrice!.toInt(),
                      discount: passValue.products![index].discount!.toInt(),
                      discountPrice:
                          passValue.products![index].discountPrice!.toInt());
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
