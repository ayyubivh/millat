import 'package:flutter/material.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';

class WriteReview extends StatefulWidget {
  const WriteReview({Key? key}) : super(key: key);

  @override
  State<WriteReview> createState() => _WriteReviewState();
}

class _WriteReviewState extends State<WriteReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Write Reviews',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
          centerTitle: false,
          leading: const BackButton(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                  child: Image.asset('assets/images/thump_up.png',
                      height: SizeUtility(context).height * 20 / 100)),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.star_border,
                    color: ColorManager.blackColor,
                  ),
                  Icon(
                    Icons.star_border,
                    color: ColorManager.blackColor,
                  ),
                  Icon(
                    Icons.star_border,
                    color: ColorManager.blackColor,
                  ),
                  Icon(
                    Icons.star_border,
                    color: ColorManager.blackColor,
                  ),
                  Icon(
                    Icons.star_border,
                    color: ColorManager.blackColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Your Name',
                style: TextStyle(
                  color: ColorManager.blackColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const TextField(),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Write Your Review',
                style: TextStyle(
                  color: ColorManager.blackColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const TextField(maxLines: 5),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Minimum Characters : 260',
                style: TextStyle(
                  color: ColorManager.textGrey99,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(ColorManager.greenColor1),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: ColorManager.greenColor1, width: 2.0),
                ),
              ),
              elevation: MaterialStateProperty.all(0),
              fixedSize: MaterialStateProperty.all(
                  Size(SizeUtility(context).width, 50)),
            ),
            onPressed: () {
              //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckoutConfirmation(),));
            },
            child: const Text(
              'Submit',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ));
  }
}
