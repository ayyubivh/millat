import 'package:flutter/material.dart';
import 'package:millat/resources/home/view/dua/widgets/dua_bookmar_view.dart';
import 'package:millat/resources/home/view/dua/widgets/dua_tabbarview.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';

class DuaView extends StatelessWidget {
  const DuaView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF5FD3A1),
                  Color(0xFF00A05B),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const Text(
                'Dua',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              actions: const [
                ImageIcon(
                  AssetImage("assets/icons/settings.png"),
                ),
                kWidth15,
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              kHeight15,
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DuaBookMarkView(),
                  ));
                },
                title: const Text(
                  'Bookmark',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.navigate_next,
                  color: ColorManager.blackColor,
                ),
                subtitle: const Text(
                  '2 Items',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold, height: 1.3),
                ),
              ),
              const Divider(),
              kHeight15,
              Image.asset('assets/images/main_dua.png'),
              Expanded(child: DuaTabbarview()),
            ],
          ),
        ));
  }
}
