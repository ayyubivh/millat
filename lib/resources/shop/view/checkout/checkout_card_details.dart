// import 'package:flutter/material.dart';
// import 'package:millat/resources/shop/view/checkout/checkout_confirmation.dart';
// import 'package:millat/utils/color_manager.dart';
// import 'package:millat/utils/size_utility.dart';

// import '../../../../utils/string_constants.dart';

// class CheckoutCardDetails extends StatefulWidget {
//   const CheckoutCardDetails({Key? key}) : super(key: key);

//   @override
//   State<CheckoutCardDetails> createState() => _CheckoutCardDetailsState();
// }

// class _CheckoutCardDetailsState extends State<CheckoutCardDetails> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Checkout',
//               style:
//                   TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
//           centerTitle: false,
//           leading: const BackButton(color: Colors.black),
//           elevation: 0,
//           backgroundColor: Colors.transparent,
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(20),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Slider(
//                   activeColor: ColorManager.greenColor1,
//                   inactiveColor: black195,
//                   max: 10,
//                   min: 0,
//                   divisions: 2,
//                   value: 3,
//                   onChanged: (value) {},
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       Appstrings.personalInfo,
//                       style: TextStyle(
//                           fontWeight: FontWeight.w700,
//                           color: ColorManager.greenColor1),
//                     ),
//                     Text(
//                       Appstrings.payment,
//                       style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           color: ColorManager.greenColor1),
//                     ),
//                     Text(
//                       Appstrings.confirmation,
//                       style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           color: ColorManager.blackColor),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 60,
//                 ),
//                 Text(
//                   'Payment Methods',
//                   style: TextStyle(
//                       color: ColorManager.blackColor,
//                       fontSize: 17,
//                       fontWeight: FontWeight.w700),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 TextField(
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5),
//                         borderSide: const BorderSide(color: black198),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5),
//                         borderSide: const BorderSide(color: black198),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5),
//                         borderSide: const BorderSide(color: black198),
//                       ),
//                       filled: true,
//                       fillColor: black247,
//                       label: Text(
//                         'Card Number',
//                         style: TextStyle(color: ColorManager.blackColor),
//                       )),
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 TextField(
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5),
//                         borderSide: const BorderSide(color: black198),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5),
//                         borderSide: const BorderSide(color: black198),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5),
//                         borderSide: const BorderSide(color: black198),
//                       ),
//                       filled: true,
//                       fillColor: black247,
//                       label: Text(
//                         'Card Holder Name',
//                         style: TextStyle(color: ColorManager.blackColor),
//                       )),
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     SizedBox(
//                       width: SizeUtility(context).width * 50 / 100,
//                       child: TextField(
//                         decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(5),
//                               borderSide: const BorderSide(color: black198),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(5),
//                               borderSide: const BorderSide(color: black198),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(5),
//                               borderSide: const BorderSide(color: black198),
//                             ),
//                             filled: true,
//                             fillColor: black247,
//                             label: Text(
//                               'Expiry Date',
//                               style: TextStyle(color: ColorManager.blackColor),
//                             )),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     SizedBox(
//                       width: SizeUtility(context).width * 37 / 100,
//                       child: TextField(
//                         decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(5),
//                               borderSide: const BorderSide(color: black198),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(5),
//                               borderSide: const BorderSide(color: black198),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(5),
//                               borderSide: const BorderSide(color: black198),
//                             ),
//                             filled: true,
//                             fillColor: black247,
//                             label: Text(
//                               'CVV',
//                               style: TextStyle(color: ColorManager.blackColor),
//                             )),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Icon(Icons.lock_outline,
//                         size: 25, color: ColorManager.blackColor),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                     SizedBox(
//                         width: SizeUtility(context).width * 75 / 100,
//                         child:   Text(
//                           'We follow the Payment Card Industry Data Security Standard (PCI DSS) and use industry-standard encryption to protect the confidentiality of your personal information.',
//                           style: TextStyle(color:  ColorManager.textGrey99),
//                         ))
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 SizedBox(
//                     width: SizeUtility(context).width * 75 / 100,
//                     child:   Text(
//                       'Payment will be processed separately by PIPO according to the PIPO Privacy Policy',
//                       style: TextStyle(color:  ColorManager.textGrey99, fontSize: 15),
//                     )),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const SizedBox(
//                   height: 100,
//                 )
//               ],
//             ),
//           ),
//         ),
//         bottomSheet: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
//           child: ElevatedButton(
//             style: ButtonStyle(
//               backgroundColor:
//                   MaterialStateProperty.all(ColorManager.greenColor1),
//               shape: MaterialStateProperty.all(
//                 RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   side: BorderSide(color: ColorManager.greenColor1, width: 2.0),
//                 ),
//               ),
//               elevation: MaterialStateProperty.all(0),
//               fixedSize: MaterialStateProperty.all(
//                   Size(SizeUtility(context).width, 50)),
//             ),
//             onPressed: () {
//               // Navigator.of(context).push(MaterialPageRoute(
//               //   builder: (context) => const CheckoutConfirmation(),
//               // ));
//             },
//             child: const Text(
//               'Continue',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.w700),
//             ),
//           ),
//         ));
//   }
// }
