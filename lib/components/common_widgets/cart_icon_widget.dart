import 'package:flutter/material.dart';
import '../../resources/shop/view/cart/cart.dart';
import '../../utils/globals.dart';

class CartIconWidget extends StatelessWidget {
  final Color color;
  final int cartLength;
  const CartIconWidget({
    super.key,
    required this.color,
    required this.cartLength,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CartView(),
        ));
      },
      icon: Stack(
        children: [
          ImageIcon(
            AssetImage('assets/icons/cart.png'),
            color: color,
          ),
          Positioned(
              top: 0,
              right: 0,
              child: cartLength > 0
                  ? Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: black26,
                        shape: BoxShape.circle,
                      ),
                      constraints: BoxConstraints(
                        minWidth: 16,
                        minHeight: 16,
                      ),
                      child: Text(
                        cartLength.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  : SizedBox.shrink()),
        ],
      ),
    );
  }
}
