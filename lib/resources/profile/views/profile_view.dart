import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/profile/views/edit_profile_view.dart';
import 'package:millat/resources/profile/views/manage_address.dart';
import 'package:millat/resources/profile/views/payments_methods.dart';
import 'package:millat/resources/reviews/views/write_review.dart';
import 'package:millat/resources/shop/view/orders/orders_view.dart';
import 'package:millat/utils/globals.dart';

import '../../authentication/bloc/logic/database_bloc/database_bloc.dart';
import '../../shop/bloc/logic/shop_bloc/shop_products_bloc.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile',
            style: TextStyle(color: black26, fontWeight: FontWeight.w700)),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            context
                .read<ShopProductsBloc>()
                .add(const TabIndexChangeEvent(index: 0));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: black26,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      BlocBuilder<DatabaseBloc, DatabaseState>(
                          builder: (context, state) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(state.name,
                                      style: const TextStyle(
                                          color: black26,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600)),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    state.email,
                                    style: TextStyle(
                                        color: black122,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton.icon(
                        icon: const Icon(Icons.edit_note, color: Colors.white),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const EditProfileView(),
                          ));
                        },
                        label: const Text('Edit',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w700)),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(green77)),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Orders(),
                ));
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('My Orders',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            const Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: black198,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            // InkWell(
            //   onTap: () {
            //     Navigator.of(context).push(MaterialPageRoute(
            //       builder: (context) => const WriteReview(),
            //     ));
            //   },
            //   child: const Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text('Wishlist',
            //           style:
            //               TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
            //       Icon(Icons.arrow_forward_ios)
            //     ],
            //   ),
            // ),
            // const Column(
            //   children: [
            //     SizedBox(
            //       height: 20,
            //     ),
            //     Divider(
            //       color: black198,
            //     ),
            //     SizedBox(
            //       height: 20,
            //     ),
            //   ],
            // ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ManageAddress(),
                ));
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Manage Address',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            const Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: black198,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PaymentMethods(),
                ));
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Payment Info',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            const Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: black198,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Logout',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
