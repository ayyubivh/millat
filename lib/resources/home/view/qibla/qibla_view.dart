import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/home/bloc/logic/home_bloc/home_bloc.dart';
import 'package:millat/resources/home/view/qibla/themes/compass_themes.dart';
import 'package:millat/resources/home/view/tasbih/theme/tasbih_themes.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

class QiblahScreen extends StatefulWidget {
  const QiblahScreen({super.key});

  @override
  State<QiblahScreen> createState() => _QiblahScreenState();
}

Animation<double>? animation;
AnimationController? _animationController;
double begin = 0.0;

class _QiblahScreenState extends State<QiblahScreen>
    with SingleTickerProviderStateMixin {
  bool hasPermission = false;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    animation = Tween(begin: 0.0, end: 0.0).animate(_animationController!);
    super.initState();
  }

  String getCardinalDirection(double degrees) {
    List<String> directions = ['N', 'NE', 'E', 'SE', 'S', 'SW', 'W', 'NW'];

    // Adjust the degrees to be within the range [0, 360)
    degrees = (degrees % 360 + 360) % 360;

    // Calculate the index of the cardinal direction based on the degree value
    int index = ((degrees + 22.5) % 360 / 45).floor();
    return directions[index];
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) => Scaffold(
        backgroundColor: compassThemeData[state.compassTheme]!.primaryColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: ColorManager.blackColor),
          backgroundColor: compassThemeData[state.compassTheme]!.primaryColor,
          elevation: 0,
          title: Text(Appstrings.qiblaDirection,
              style: TextStyle(
                  color: ColorManager.blackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        ),
        body: StreamBuilder(
          stream: FlutterQiblah.qiblahStream,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Container(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    color: ColorManager.whiteColor,
                  ));
            }

            final qiblahDirection = snapshot.data;
            animation = Tween(
                    begin: begin,
                    end: (qiblahDirection!.qiblah * (pi / 180) * -1))
                .animate(_animationController!);
            begin = (qiblahDirection.qiblah * (pi / 180) * -1);
            _animationController!.forward(from: 0);

            return Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/kaaba.png'),
                    const SizedBox(height: 10),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            height: 300,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        Colors.grey.shade800.withOpacity(0.7),
                                    blurRadius: 30,
                                    spreadRadius: 5,
                                  )
                                ])),
                        SizedBox(
                            height: 350,
                            child: AnimatedBuilder(
                              animation: animation!,
                              builder: (context, child) => Transform.rotate(
                                  angle: animation!.value,
                                  child: Image.asset(
                                    compassImages[state.compassTheme]
                                        .toString(),
                                  )),
                            )),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "${qiblahDirection.direction.toInt()} ${getCardinalDirection(qiblahDirection.direction)}°",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
            );
          },
        ),
        bottomSheet: Container(
          height: 140,
          color: compassThemeData[state.compassTheme]!.primaryColor,
          width: SizeUtility(context).width,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Appstrings.compassThemes,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.blackColor,
                ),
              ),
              kHeight10,
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    final compassTheme = CompassTheme.values[index];

                    return GestureDetector(
                      onTap: () {
                        context.read<HomeBloc>()
                          ..add(ChangeCompassThemeEvent(
                              compassTheme: compassTheme))
                          ..add(ChangeCompassThemeIndex(index: index));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color: compassThemeData[compassTheme]!.primaryColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: state.compassThemeIndex == index
                                  ? ColorManager.primary
                                  : Colors.transparent,
                            )),
                        padding: const EdgeInsets.all(12),
                        child: Image.asset(
                          'assets/images/compass_${index + 1}.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
