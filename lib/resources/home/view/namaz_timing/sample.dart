import 'package:flutter/material.dart';

import '../../../../utils/globals.dart';

class Sample extends StatelessWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: whiteClr,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                  const Text(
                    'Art Calculation-\nJuristic method',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 16,
                      // color: black122,
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Standard (Shafi, Maliki, Hanbali)',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Radio(
                    value: false,
                    groupValue: true,
                    onChanged: (value) {},
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hanafi',
                    style: TextStyle(
                      color: primaryGreen,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Radio(
                    value: true,
                    groupValue: true,
                    onChanged: (value) {},
                    fillColor: const MaterialStatePropertyAll(green24),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
