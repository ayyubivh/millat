import 'package:flutter/material.dart';
import 'package:millat/utils/globals.dart';
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
          title: Text('Write Reviews',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
          centerTitle: false,
          leading: BackButton(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Image.asset('assets/images/thump_up.png',
                      height: SizeUtility(context).height * 20 / 100)),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.star_border,
                    color: black26,
                  ),
                  Icon(
                    Icons.star_border,
                    color: black26,
                  ),
                  Icon(
                    Icons.star_border,
                    color: black26,
                  ),
                  Icon(
                    Icons.star_border,
                    color: black26,
                  ),
                  Icon(
                    Icons.star_border,
                    color: black26,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Your Name',
                style: TextStyle(
                  color: black26,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextField(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Write Your Review',
                style: TextStyle(
                  color: black26,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextField(maxLines: 5),
              SizedBox(
                height: 20,
              ),
              Text(
                'Minimum Characters : 260',
                style: TextStyle(
                  color: black122,
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
              backgroundColor: MaterialStateProperty.all(green77),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: green77, width: 2.0),
                ),
              ),
              elevation: MaterialStateProperty.all(0),
              fixedSize: MaterialStateProperty.all(
                  Size(SizeUtility(context).width, 50)),
            ),
            onPressed: () {
              //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckoutConfirmation(),));
            },
            child: Text(
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
