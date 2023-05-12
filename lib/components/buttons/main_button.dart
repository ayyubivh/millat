import 'package:flutter/material.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class MainButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const MainButton({Key? key,required this.title,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed,
    style: ButtonStyle(fixedSize: MaterialStateProperty.all( Size(SizeUtility(context).width,50)),backgroundColor: MaterialStateProperty.all(mainColor), shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.0),
      ),
    ),), child: Text(title,style: const TextStyle(fontSize: 16))
    );
  }
}
