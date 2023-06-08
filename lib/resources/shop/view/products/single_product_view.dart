import 'package:flutter/material.dart';
import 'package:millat/resources/shop/view/reviews/reviews_view.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class SingleProductView extends StatelessWidget {
  final passValue;
  const SingleProductView({Key? key, this.passValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? selectedSize;

    int? selectedColor;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.black),
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
              SizedBox(
                height: 10,
              ),
              Text(
                passValue.title,
                style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.w600, height: 2),
              ),
              Text('${passValue.actualPrice} ₹',
                  style: TextStyle(
                      color: black60,
                      fontSize: 17,
                      decoration: TextDecoration.lineThrough,
                      height: 1.5)),
              Text('Al- Nayab Store',
                  style: TextStyle(color: black60, fontSize: 17, height: 1.5)),
              Text('${passValue.discountPrice} ₹',
                  style: TextStyle(color: green77, fontSize: 22, height: 1.5)),
              SizedBox(
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
                            color: Colors.black,
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
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Select options',
                      style: TextStyle(
                          color: green77,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: green77,
                    )
                  ],
                ),
              ),
              Text(
                'Product Description',
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 18, color: black26),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                passValue.description,
                style: TextStyle(fontSize: 16, color: black122),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Fabric: Cotton Silk',
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 17, color: black26),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Care: Gentle machine wash / Regular Wash',
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 17, color: black26),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                passValue.otherInfo,
                style: TextStyle(fontSize: 16, color: black122),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reviews',
                      style: TextStyle(
                          color: black26,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                              '4,5/5',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '(120 reviews)',
                              style: TextStyle(
                                  color: black122,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: green77,
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
                    builder: (context) => ReviewsView(),
                  ));
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Text(
                    'View all (120)',
                    style: TextStyle(
                        color: green77,
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
              builder: (context) => StatefulBuilder(
                builder: (context, setState) => Padding(
                  padding: const EdgeInsets.all(20.0),
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
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${passValue.discountPrice} ₹',
                                      style: TextStyle(
                                          color: green77,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 24)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('${passValue.actualPrice} ₹',
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
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
                                color: black122,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Colors',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedColor = 0;
                              });
                            },
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.pink,
                              child: selectedColor == 0
                                  ? Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                    )
                                  : null,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedColor = 1;
                              });
                            },
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.green,
                              child: selectedColor == 1
                                  ? Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                    )
                                  : null,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedColor = 2;
                              });
                            },
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.blueGrey,
                              child: selectedColor == 2
                                  ? Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                    )
                                  : null,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedColor = 3;
                              });
                            },
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.red,
                              child: selectedColor == 3
                                  ? Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                    )
                                  : null,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedColor = 4;
                              });
                            },
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.black,
                              child: selectedColor == 4
                                  ? Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                    )
                                  : null,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Sizes',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSize = 0;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: selectedSize == 0 ? green77 : null,
                                  border: Border.all(color: black208)),
                              child: Text('S', style: TextStyle(fontSize: 20)),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSize = 1;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: selectedSize == 1 ? green77 : null,
                                  border: Border.all(color: black208)),
                              child: Text('M', style: TextStyle(fontSize: 20)),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSize = 2;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: selectedSize == 2 ? green77 : null,
                                  border: Border.all(color: black208)),
                              child: Text('L', style: TextStyle(fontSize: 20)),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSize = 3;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: selectedSize == 3 ? green77 : null,
                                  border: Border.all(color: black208)),
                              child: Text('ML', style: TextStyle(fontSize: 20)),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSize = 4;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: selectedSize == 4 ? green77 : null,
                                border: Border.all(color: black208),
                              ),
                              child: Text('XL', style: TextStyle(fontSize: 20)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Quantity',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 50,
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                    border: Border.all(color: black208)),
                                child: Icon(Icons.remove),
                              ),
                              Text(
                                '1',
                                style: TextStyle(fontSize: 17),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 50,
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                    border: Border.all(color: black208)),
                                child: Icon(Icons.add, color: green77),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: BorderSide(color: green77, width: 2.0),
                                ),
                              ),
                              elevation: MaterialStateProperty.all(0),
                              fixedSize: MaterialStateProperty.all(Size(
                                  SizeUtility(context).width * 42 / 100, 60)),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.shopping_cart,
                                  color: green77,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Add to cart',
                                  style: TextStyle(
                                      color: green77,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(green77),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: BorderSide(color: green77, width: 2.0),
                                ),
                              ),
                              elevation: MaterialStateProperty.all(0),
                              fixedSize: MaterialStateProperty.all(Size(
                                  SizeUtility(context).width * 42 / 100, 60)),
                            ),
                            onPressed: () {},
                            child: Text(
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
              ),
            );
          },
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(green77.withOpacity(0.16)),
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
                color: green77,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Add to cart',
                style: TextStyle(
                    color: green77, fontSize: 20, fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildReviewItem({required String comment, required BuildContext context}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/dummy/dummy_user.png'),
            radius: 30,
          ),
          SizedBox(
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
                    Text(
                      'Sujankha',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                    ),
                    Text(
                      'Classify: Navi Blue,XL',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: black122),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(Icons.star, color: orange255, size: 20),
                  Icon(Icons.star, color: orange255, size: 20),
                  Icon(Icons.star, color: orange255, size: 20),
                  Icon(Icons.star, color: orange255, size: 20),
                  Icon(Icons.star, color: orange255, size: 20),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                  width: SizeUtility(context).width * 70 / 100,
                  child: Text(
                    comment,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                  )),
              SizedBox(
                height: 15,
              ),
              Text(
                'Apr 18',
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: 17, color: black122),
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
          builder: (context) => SingleProductView(),
        ));
      },
      child: Padding(
        padding: EdgeInsets.only(right: 20.0),
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
              SizedBox(
                height: 15,
              ),
              Text(title,
                  style: TextStyle(
                      color: black83,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 1.3),
                  maxLines: 2),
              SizedBox(
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
                            color: mainColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '(₹.345)',
                        style: TextStyle(
                            color: blue126,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  Text(
                    '11%off',
                    style: TextStyle(
                        color: orange255,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Salman Fragrances',
                style: TextStyle(
                    color: black131, fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '₹307.80',
                style: TextStyle(
                    color: midGreenColor,
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
