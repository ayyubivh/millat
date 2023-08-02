import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/logic/dua_bloc/dua_bloc.dart';
import 'package:millat/resources/home/view/dua/widgets/dua_bookmar_view.dart';
import 'package:millat/resources/home/view/dua/widgets/dua_tabbarview.dart';
import 'package:millat/resources/home/view/dua/widgets/settings_pop_up_widget.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';

class DuaView extends StatelessWidget {
  const DuaView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DuaBloc>(context).add(FetchDuaBookMarksEvent(context));
    });
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
              actions: [
                GestureDetector(
                  onTap: () {
                    _buildPopUp(context);
                  },
                  child: const ImageIcon(
                    AssetImage("assets/icons/settings.png"),
                  ),
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
                subtitle: BlocBuilder<DuaBloc, DuaState>(
                  builder: (context, state) => Text(
                    '${state.bookMarkLength} Items',
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold, height: 1.3),
                  ),
                ),
              ),
              const Divider(),
              kHeight15,
              Image.asset('assets/images/main_dua.png'),
              const Expanded(child: DuaTabbarview()),
            ],
          ),
        ));
  }

  Future<dynamic> _buildPopUp(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return const SettingsPopUpWidget();
          },
        );
      },
    );
  }
}
