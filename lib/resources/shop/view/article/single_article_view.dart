import 'package:flutter/material.dart';
import 'package:millat/utils/color_manager.dart';

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
        title: const Text('Single Articles',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
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
                        color: ColorManager.greenColor1,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorManager.veryLightGreen,
                    ),
                    child: Text('Popular',
                        style: TextStyle(
                            color: ColorManager.greenColor1,
                            fontWeight: FontWeight.w700)),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                passValue[index].title,
                style: const TextStyle(
                    color: black16, fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                passValue[index].content,
                style:
                    const TextStyle(color: black122, fontSize: 17, height: 1.3),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        decoration: BoxDecoration(
            color: ColorManager.greenColor1,
            borderRadius: BorderRadius.circular(20)),
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
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  passValue[index].title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '₹ 1,523.68',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Spacer(),
            const Text(
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
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
