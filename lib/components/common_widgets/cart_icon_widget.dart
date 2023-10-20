import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/routes/app_router_constants.dart';
import '../../resources/shop/view/cart/cart.dart';
import '../../utils/color_manager.dart';

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
        context.pushNamed(MyAppRouteConstants.cartRouteName);
      },
      icon: Stack(
        children: [
          ImageIcon(
            const AssetImage('assets/icons/cart.png'),
            color: color,
          ),
          Positioned(
              top: 0,
              right: 0,
              child: cartLength > 0
                  ? Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: ColorManager.blackColor,
                        shape: BoxShape.circle,
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 16,
                        minHeight: 16,
                      ),
                      child: Text(
                        cartLength.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  : const SizedBox.shrink()),
        ],
      ),
    );
  }
}
