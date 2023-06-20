import 'package:flutter/material.dart';
import 'package:millat/utils/globals.dart';

import '../../../../utils/utils.dart';

class SingleArticleView extends StatelessWidget {
  final passValue;
  final int index;
  const SingleArticleView({Key? key, this.passValue, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text('Single Articles',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  passValue[index].image,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${passValue[index].brand} • ${Utilities.formatDate(passValue[index].date)}',
                    style: TextStyle(
                        color: green77,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: veryLightGreen),
                    child: Text('Popular',
                        style: TextStyle(
                            color: green77, fontWeight: FontWeight.w700)),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                passValue[index].title,
                style: TextStyle(
                    color: black16, fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                passValue[index].content,
                style: TextStyle(color: black122, fontSize: 17, height: 1.3),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 70,
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        decoration: BoxDecoration(
            color: green77, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    passValue[index].image,
                    fit: BoxFit.cover,
                    height: 56,
                    width: 56,
                  )),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  passValue[index].title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '₹ 1,523.68',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Spacer(),
            Text(
              'Buy Now',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            IconButton(
              onPressed: () {
                // context.read<CartBloc>().add(CartEvent.addCart(productId: passValue[index].id, basePrice: 1523, size: size, context: context, color: color, quantity: quantity))
                print('object');
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
