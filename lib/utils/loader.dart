import 'package:flutter/material.dart';
import 'package:millat/utils/globals.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: primaryGreen,
      ),
    );
  }
}
