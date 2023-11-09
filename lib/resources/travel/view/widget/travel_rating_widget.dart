// import 'package:flutter/material.dart';
// import 'package:millat/utils/assets_paths.dart';
// import '../../../../utils/color_manager.dart';

// class RatingWidget extends StatelessWidget {
//   const RatingWidget({
//     super.key,
//     required this.rating,
//   });
//   final double rating;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 30,
//       width: 52,
//       decoration: BoxDecoration(
//         color: ColorManager.grey70.withOpacity(0.8),
//         borderRadius: BorderRadius.circular(30),
//       ),
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Image.asset(
//             AppAssetsStrings.reviewStar,
//             color: ColorManager.orangeStarColor,
//           ),
//           Text(
//             rating.toString(),
//             style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.w600,
//                 color: ColorManager.whiteColor),
//           )
//         ],
//       ),
//     );
//   }
// }
