import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/resources/shop/bloc/logic/review_bloc/bloc/review_bloc.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

class ReviewView extends StatefulWidget {
  final String productId;
  const ReviewView({super.key, required this.productId});

  @override
  State<ReviewView> createState() => _ReviewViewState();
}

class _ReviewViewState extends State<ReviewView> {
  final nameController = TextEditingController();

  final reviewController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    nameController.dispose();
    reviewController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print(widget.productId);
    return Scaffold(
      backgroundColor: ColorManager.scaffoldBgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.whiteColor,
        centerTitle: true,
        title: Text(
          Appstrings.writeReview,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: ColorManager.blackColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppAssetsStrings.reviewImage,
                height: SizeUtility(context).width / 1.5,
              ),
              kHeight20,
              RatingBar.builder(
                itemSize: 30,
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: orange255,
                ),
                onRatingUpdate: (value) {
                  BlocProvider.of<ReviewBloc>(context)
                      .add(ReviewEvent.saveReviewValue(value: value));
                },
              ),
              kHeight20,
              Container(
                height: SizeUtility(context).height / 3,
                width: SizeUtility(context).width,
                decoration: BoxDecoration(
                  color: ColorManager.whiteColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(12),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _textFormWidget("Your Name", false, nameController),
                      _textFormWidget(
                          "Write your Review", true, reviewController),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: BlocBuilder<ReviewBloc, ReviewState>(
          builder: (context, state) => MainButton(
            title: "Submit",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.read<ReviewBloc>().add(AddReview(
                    context: context,
                    productId: widget.productId,
                    name: nameController.text,
                    rating: state.reviewValue,
                    comment: reviewController.text));
                context.pop();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _textFormWidget(
    String text,
    bool isCounter,
    TextEditingController controller,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: ColorManager.blackColor,
          ),
        ),
        TextFormField(
          controller: controller,
          cursorColor: ColorManager.blackColor,
          decoration: InputDecoration(
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            counterText: isCounter
                ? "Minimum Character : 250"
                : '', // Remove default character counter
            // Set your hint text
          ),
          maxLength: 250,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Field not empty ";
            }
            return null;
          },
        )
      ],
    );
  }
}
