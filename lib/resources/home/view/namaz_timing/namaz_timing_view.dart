import 'package:flutter/material.dart';

class NamazTimingView extends StatelessWidget {
  static const routeName = 'namaz-timing';
  const NamazTimingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Namaz Timing'),
      ),
    );
  }
}
