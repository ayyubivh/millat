import 'package:flutter/material.dart';
import 'package:millat/utils/globals.dart';

class CommunityView extends StatefulWidget {
  const CommunityView({super.key});

  @override
  State<CommunityView> createState() => _CommunityViewState();
}

class _CommunityViewState extends State<CommunityView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: whiteClr,
          elevation: 0,
          leading: const BackButton(
            color: black26,
          ),
          title: const Text(
            "Fill Your Profile",
            style: TextStyle(
              color: black26,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Stack(
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      "assets/dummy/dummy_user.png",
                    ),
                  ),
                ),
                Positioned(
                  // top: 0,
                  // left: 0,
                  // right: 0,
                  // bottom: 0,
                  child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.yellow,
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
