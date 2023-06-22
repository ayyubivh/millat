import 'package:flutter/material.dart';
import 'package:millat/resources/shop/view/products/single_product_view.dart';
import 'package:millat/utils/size_utility.dart';
import '../../../../components/common_widgets/filters_row_widgets.dart';
import '../../../../components/common_widgets/shop_products_widget.dart';

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
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: ImageIcon(
              AssetImage(
                'assets/icons/search.png',
              ),
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ImageIcon(
              AssetImage(
                'assets/icons/cart.png',
              ),
              color: Colors.black,
            ),
          ),
        ],
        leading: const BackButton(
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
            const FiltersRowWidgets(),
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
                  if (appBarTitle == "Recently Added" ||
                      appBarTitle == "Bestsellers") {
                    return GestureDetector(
                        onTap: () {
                          print('here ia m recent');
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SingleProductView(
                              passValue: passValue.products![index],
                            ),
                          ));
                        },
                        child: ShopProductWidget(
                            isWishlisted: false,
                            brand: passValue.products[index].brand.name,
                            productId: passValue?.products[index].id,
                            image: passValue
                                .products![index].colors![0].images![0],
                            title: passValue.products![index].title,
                            actualPrice:
                                passValue.products![index].actualPrice!.toInt(),
                            discount:
                                passValue.products![index].discount!.toInt(),
                            discountPrice: passValue
                                .products![index].discountPrice!
                                .toInt()));
                  }
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SingleProductView(
                          passValue: passValue.products![index],
                        ),
                      ));
                    },
                    child: ShopProductWidget(
                        isWishlisted: false,
                        brand: passValue.products[index].brand.name,
                        productId: passValue?.id,
                        image:
                            passValue.products![index]!.colors![0].images![0],
                        title: passValue.products![index].title,
                        actualPrice:
                            passValue.products![index].actualPrice!.toInt(),
                        discount: passValue.products![index].discount!.toInt(),
                        discountPrice:
                            passValue.products![index].discountPrice!.toInt()),
                  );
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
