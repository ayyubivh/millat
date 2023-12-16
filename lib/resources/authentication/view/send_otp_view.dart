import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/components/textfields/custom_text_field.dart';
import 'package:millat/resources/authentication/bloc/logic/auth_bloc.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/utils.dart';
import 'package:millat/utils/validators.dart';

class SendOTPView extends StatefulWidget {
  final bool? signInPhone;
  const SendOTPView({Key? key, this.signInPhone = false}) : super(key: key);

  @override
  State<SendOTPView> createState() => _SendOTPViewState();
}

class _SendOTPViewState extends State<SendOTPView> {
  PhoneNumber? number;
  final _referralCodeController = TextEditingController();

  bool isValidate = false;
  bool isReferral = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthError) {
            buildError(state.errorMessage);
          } else if (state is AuthLoaded) {
            clearDate();
            context.pushNamed(MyAppRouteConstants.verifyOtpRouteName);
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return Center(
              child: CircularProgressIndicator(color: ColorManager.greenColor1),
            );
          } else {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 50),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    Image.asset(millatMainLogo, height: 50, width: 200),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Registration enter your phone number to verify your account',
                      style:
                          TextStyle(color: black133, fontSize: 16, height: 1.3),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    InternationalPhoneNumberInput(
                      initialValue: PhoneNumber(isoCode: 'IN'),
                      onInputChanged: (value) => number = value,
                      onInputValidated: (bool value) {
                        if (value) {
                          setState(() {
                            isValidate = value;
                          });
                        }
                      },
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      ),
                      autoValidateMode: AutovalidateMode.onUserInteraction,
                      selectorTextStyle: const TextStyle(color: Colors.black),
                      formatInput: true,
                      keyboardType: TextInputType.phone,
                      inputBorder: const OutlineInputBorder(),
                      inputDecoration: const InputDecoration(
                        labelText: 'Phone Number',
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                      maxLength: 11,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          activeColor: ColorManager.green900,
                          value: isReferral,
                          onChanged: (value) {
                            setState(() {
                              isReferral = !isReferral;
                            });
                          },
                        ),
                        Text(
                          "Do you have any referral code?",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.green900,
                          ),
                        )
                      ],
                    ),
                    isReferral
                        ? CustomTextField(
                            validator: Validators(context).passwordValidator,
                            icon: const Icon(Icons.cached, color: iconsColor),
                            hint: 'Enter Referral code if you have ',
                            controller: _referralCodeController,
                          )
                        : const SizedBox(),
                    kHeight16,
                    Image.asset('assets/images/phone.png'),
                  ],
                ),
              ),
            );
          }
        },
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 12,
        ),
        child: MainButton(
            title: 'Send OTP',
            onPressed: () {
              if (isReferral) {
                if (_referralCodeController.text.length != 6) {
                  return showSnackBar(
                      context, "Please enter correct 6 digit referral code!");
                }
              }
              if (isValidate) {
                if (widget.signInPhone ?? false) {
                  context.read<AuthBloc>().add(SignInWithPhone(
                      phoneNumber: number!.phoneNumber!,
                      context,
                      referralCode: _referralCodeController.text));
                } else {
                  context.read<AuthBloc>().add(SendOTP(number!.phoneNumber!));
                }
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Please enter phone number")));
              }
            }),
      ),
    );
  }

  ScaffoldFeatureController buildError(String message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  clearDate() => number = null;
}
