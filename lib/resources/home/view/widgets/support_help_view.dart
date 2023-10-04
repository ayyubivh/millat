import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/resources/profile/bloc/logic/terms_and_condtions_bloc/terms_and_condtions_bloc.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/string_constants.dart';

class SupportHelpView extends StatelessWidget {
  const SupportHelpView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneNumberController = TextEditingController();
    final TextEditingController messageController = TextEditingController();

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: ColorManager.scaffolBgColor,
      appBar: AppBar(
        foregroundColor: ColorManager.blackColor,
        elevation: 0,
        backgroundColor: ColorManager.whiteColor,
        centerTitle: true,
        title: const Text(
          Appstrings.supportAndHelp,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    AppAssetsStrings.supportAndHelp,
                    height: 140,
                    width: 144,
                  ),
                ),
                kHeight30,
                _textField(
                  controller: nameController,
                  labelText: Appstrings.fullName,
                ),
                kHeight20,
                _textField(
                  controller: emailController,
                  labelText: Appstrings.email,
                ),
                kHeight20,
                _textField(
                  validate: false,
                  controller: phoneNumberController,
                  labelText: Appstrings.mobileNumber,
                ),
                kHeight20,
                _textField(
                  controller: messageController,
                  labelText: Appstrings.yourMessage,
                  maxLines: 7,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        child: MainButton(
          title: Appstrings.submit,
          onPressed: () {
            final email = emailController.text;
            final name = nameController.text;
            final phone = phoneNumberController.text;
            final message = messageController.text;
            if (_formKey.currentState!.validate()) {
              context.read<TermsAndCondtionsBloc>().add(PostHelpAndSupport(
                  email: email,
                  name: name,
                  phoneNumber: phone,
                  message: message));
              Navigator.of(context).pop();
            }
          },
        ),
      ),
    );
  }

  Widget _textField({
    required TextEditingController controller,
    required String labelText,
    int? maxLength,
    int? maxLines,
    TextInputType? textInputType,
    bool validate = true,
  }) {
    TextSpan text = TextSpan(
      text: labelText,
      style: TextStyle(
        color: ColorManager.blackColor,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
      children: [
        TextSpan(
          text: ' *',
          style: TextStyle(
            color: ColorManager.redColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );

    return TextFormField(
      controller: controller,
      maxLength: maxLength,
      maxLines: maxLines,
      keyboardType: textInputType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide:
              BorderSide(color: ColorManager.blackColor.withOpacity(0.4)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:
              BorderSide(color: ColorManager.blackColor.withOpacity(0.4)),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:
              BorderSide(color: ColorManager.blackColor.withOpacity(0.4)),
        ),
        label: RichText(text: text),
        filled: true,
        fillColor: black247,
      ),
      validator: (value) {
        if (validate) {
          if (value == null || value.isEmpty) {
            return 'Please enter the $labelText';
          }

          if (maxLength != null && value.length != maxLength) {
            return 'Please provide $maxLength digits';
          }
        }

        return null;
      },
    );
  }
}
