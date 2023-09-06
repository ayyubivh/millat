import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/common_widgets/cart_icon_widget.dart';
import 'package:millat/resources/shop/bloc/logic/cart_bloc/cart_bloc.dart';
import 'package:millat/resources/shop/view/cart/cart.dart';
import 'package:millat/resources/shop/view/reviews/reviews_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/utils.dart';

class SingleProductView extends StatelessWidget {
  final dynamic passValue;
  const SingleProductView({Key? key, this.passValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorMap = {
      'Pink': Colors.pink,
      'Green': Colors.green,
      'Grey': Colors.grey,
      'Red': Colors.red,
      'Black': ColorManager.blackColor,
    };
    int selectedSize = 0;

    final sizeList = ['S', 'M', 'L', 'ML', 'XL'];
    int quantity = 1;
    int selectedColor = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: ColorManager.blackColor),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ImageIcon(
              const AssetImage(
                'assets/icons/search.png',
              ),
              color: ColorManager.blackColor,
            ),
          ),
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return CartIconWidget(
                color: ColorManager.blackColor,
                cartLength: state.cartLength,
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: SizeUtility(context).height * 30 / 100,
                width: SizeUtility(context).width,
                decoration: BoxDecoration(
                  color: black247,
                  image: DecorationImage(
                    image: NetworkImage(passValue!.colors![0].images![0]),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                passValue.title,
                style: const TextStyle(
                    fontSize: 22, fontWeight: FontWeight.w600, height: 2),
              ),
              Text('${passValue.actualPrice} ₹',
                  style: const TextStyle(
                      color: black60,
                      fontSize: 17,
                      decoration: TextDecoration.lineThrough,
                      height: 1.5)),
              Text(passValue.brand.name ?? 'null',
                  style: const TextStyle(
                      color: black60, fontSize: 17, height: 1.5)),
              Text('${passValue.discountPrice} ₹',
                  style: TextStyle(
                      color: ColorManager.greenColor1,
                      fontSize: 22,
                      height: 1.5)),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: orange255, size: 20),
                      Icon(Icons.star, color: orange255, size: 20),
                      Icon(Icons.star, color: orange255, size: 20),
                      Icon(Icons.star, color: orange255, size: 20),
                      Icon(Icons.star, color: orange255, size: 20),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '4,5',
                        style: TextStyle(
                            color: ColorManager.blackColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                    ],
                  ),
                  ImageIcon(
                    AssetImage(
                      'assets/icons/heart.png',
                    ),
                    color: black60,
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Select options',
                      style: TextStyle(
                          color: ColorManager.greenColor1,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            isScrollControlled: true,
                            builder: (context) => buildShowModelSheet(
                                context,
                                colorMap,
                                selectedColor,
                                sizeList,
                                selectedSize,
                                quantity),
                          );
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: ColorManager.greenColor1,
                        ))
                  ],
                ),
              ),
              Text(
                'Product Description',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: ColorManager.blackColor),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                passValue.description,
                style: TextStyle(fontSize: 16, color: ColorManager.textGrey99),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Fabric: Cotton Silk',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: ColorManager.blackColor),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Care: Gentle machine wash / Regular Wash',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: ColorManager.blackColor),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                passValue.otherInfo,
                style: TextStyle(fontSize: 16, color: ColorManager.textGrey99),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reviews',
                      style: TextStyle(
                          color: ColorManager.blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.star, color: orange255, size: 20),
                            const Icon(Icons.star, color: orange255, size: 20),
                            const Icon(Icons.star, color: orange255, size: 20),
                            const Icon(Icons.star, color: orange255, size: 20),
                            const Icon(Icons.star, color: orange255, size: 20),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '4,5/5',
                              style: TextStyle(
                                  color: ColorManager.blackColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '(120 reviews)',
                              style: TextStyle(
                                  color: ColorManager.textGrey99,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: ColorManager.greenColor1,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              buildReviewItem(
                  context: context,
                  comment: 'Very good product, I will buy it again'),
              buildReviewItem(
                  context: context,
                  comment: 'A very quality product, I highly recommend it.'),
              buildReviewItem(
                  context: context,
                  comment: 'A very quality product, I highly recommend it.'),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ReviewsView(),
                  ));
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Text(
                    'View all (120)',
                    style: TextStyle(
                        color: ColorManager.greenColor1,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildShopItem(
                        context: context,
                        image: 'assets/dummy/thope.png',
                        title: "Men Kurta Pyjama Set"),
                    buildShopItem(
                        context: context,
                        image: 'assets/dummy/sijadah_3.png',
                        title: "Hometara Velvet Prayer Mat"),
                    buildShopItem(
                        context: context,
                        image: 'assets/dummy/sijadah.png',
                        title: "Hijaz Turkish Gold Border Lantern..."),
                    buildShopItem(
                        context: context,
                        image: 'assets/dummy/sijadah.png',
                        title: "Hijaz Turkish Gold Border Lantern..."),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (context) => buildShowModelSheet(context, colorMap,
                  selectedColor, sizeList, selectedSize, quantity),
            );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                ColorManager.greenColor1.withOpacity(0.16)),
            elevation: MaterialStateProperty.all(0),
            fixedSize:
                MaterialStateProperty.all(Size(SizeUtility(context).width, 60)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.shopping_cart,
                color: ColorManager.greenColor1,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Add to cart',
                style: TextStyle(
                    color: ColorManager.greenColor1,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildShowModelSheet(
      BuildContext context,
      Map<String, Color> colorMap,
      int selectedColor,
      List<String> sizeList,
      int selectedSize,
      int quantity) {
    return StatefulBuilder(
      builder: (context, setState) => Container(
        height: SizeUtility(context).height / 1.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorManager.whiteColor,
        ),
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              passValue!.colors![0].images![0],
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: black208)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${passValue.discountPrice} ₹',
                            style: TextStyle(
                                color: ColorManager.greenColor1,
                                fontWeight: FontWeight.w700,
                                fontSize: 24)),
                        const SizedBox(
                          height: 20,
                        ),
                        Text('${passValue.actualPrice} ₹',
                            style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 20)),
                      ],
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      color: ColorManager.textGrey99,
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Colors',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: colorMap.length,
                  itemBuilder: (BuildContext context, int index) {
                    final colorEntry = colorMap.entries.toList()[index];
                    // final colorName = colorEntry.key;
                    final colorValue = colorEntry.value;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedColor = index;
                          print(selectedColor);
                          final selectedColorName =
                              colorMap.keys.toList()[selectedColor];
                          print(selectedColorName);
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: colorValue,
                          child: selectedColor == index
                              ? Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                )
                              : null,
                        ),
                      ),
                    );
                  },
                )),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Sizes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: List.generate(
                sizeList.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSize = index;
                      final selectedSizeValue = sizeList[selectedSize];
                      print(selectedSizeValue);
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: selectedSize == index ? Colors.green : null,
                      border: Border.all(color: ColorManager.blackColor),
                    ),
                    child: Text(
                      sizeList[index],
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Quantity',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) => Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration:
                            BoxDecoration(border: Border.all(color: black208)),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (quantity > 1) {
                                  quantity -= 1;
                                  print('quantity: $quantity');
                                }
                              });
                            },
                            icon: const Icon(Icons.remove)),
                      ),
                      Text(
                        quantity.toString(),
                        style: const TextStyle(fontSize: 17),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration:
                            BoxDecoration(border: Border.all(color: black208)),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                quantity += 1;
                              });
                            },
                            icon: Icon(Icons.add,
                                color: ColorManager.greenColor1)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) => ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(
                              color: ColorManager.greenColor1, width: 2.0),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(0),
                      fixedSize: MaterialStateProperty.all(
                          Size(SizeUtility(context).width * 42 / 100, 60)),
                    ),
                    onPressed: () async {
                      Navigator.of(context).pop();
                      context.read<CartBloc>().add(AddCartEvent(
                            productId: passValue.id,
                            basePrice: passValue.discountPrice.toInt(),
                            size: sizeList[selectedSize],
                            color: colorMap.keys.elementAt(selectedColor),
                            context: context,
                            quantity: quantity,
                            brandId: passValue.brand.id,
                          ));
                      showSnackBar(context, "Product Added Successfully!");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          color: ColorManager.greenColor1,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Add to cart',
                          style: TextStyle(
                              color: ColorManager.greenColor1,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(ColorManager.greenColor1),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(
                            color: ColorManager.greenColor1, width: 2.0),
                      ),
                    ),
                    elevation: MaterialStateProperty.all(0),
                    fixedSize: MaterialStateProperty.all(
                        Size(SizeUtility(context).width * 42 / 100, 60)),
                  ),
                  onPressed: () async {
                    context.read<CartBloc>().add(AddCartEvent(
                        productId: passValue.id,
                        basePrice: passValue.discountPrice.toInt(),
                        size: sizeList[selectedSize],
                        color: colorMap.keys.elementAt(selectedColor),
                        context: context,
                        quantity: quantity,
                        brandId: passValue.brand.id));

                    Future.delayed(const Duration(milliseconds: 400), () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const CartView()),
                      );
                    });
                  },
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Padding buildShowBottomModel(
  buildReviewItem({required String comment, required BuildContext context}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/dummy/dummy_user.png'),
            radius: 30,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: SizeUtility(context).width * 70 / 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Sujankha',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                    ),
                    Text(
                      'Classify: Navi Blue,XL',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: ColorManager.textGrey99),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Icon(Icons.star, color: orange255, size: 20),
                  Icon(Icons.star, color: orange255, size: 20),
                  Icon(Icons.star, color: orange255, size: 20),
                  Icon(Icons.star, color: orange255, size: 20),
                  Icon(Icons.star, color: orange255, size: 20),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  width: SizeUtility(context).width * 70 / 100,
                  child: Text(
                    comment,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 17),
                  )),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Apr 18',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    color: ColorManager.textGrey99),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildShopItem(
      {required String image,
      required String title,
      required BuildContext context}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const SingleProductView(),
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: SizedBox(
          width: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(title,
                  style: TextStyle(
                      color: ColorManager.grey83,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 1.3),
                  maxLines: 2),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'MRP',
                        style: TextStyle(
                            color: ColorManager.mainColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '(₹.345)',
                        style: TextStyle(
                            color: blue126,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  const Text(
                    '11%off',
                    style: TextStyle(
                        color: orange255,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Salman Fragrances',
                style: TextStyle(
                    color: ColorManager.blackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                '₹307.80',
                style: TextStyle(
                    color: ColorManager.midGreenColor,
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
