import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';

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
    return Scaffold(
      backgroundColor: const Color(0xffE3DBC5),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE3DBC5),
        elevation: 0,
        title: const Text('Qibla Direction',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ),
      body: StreamBuilder(
        stream: FlutterQiblah.qiblahStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
                alignment: Alignment.center,
                child: const CircularProgressIndicator(
                  color: Colors.white,
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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset('assets/images/kaaba.png'),
              const SizedBox(height: 10),
              Container(
                  height: 300,
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      blurRadius: 15,
                      spreadRadius: 10,
                    )
                  ]),
                  child: AnimatedBuilder(
                    animation: animation!,
                    builder: (context, child) => Transform.rotate(
                        angle: animation!.value,
                        child: Image.asset('assets/images/compass.png')),
                  )),
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
    );
  }
}
