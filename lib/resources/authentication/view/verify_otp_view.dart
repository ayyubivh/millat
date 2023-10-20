import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/resources/authentication/bloc/logic/auth_bloc.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:pinput/pinput.dart';

class VerifyOTPView extends StatefulWidget {
  const VerifyOTPView({
    Key? key,
  }) : super(key: key);

  @override
  State<VerifyOTPView> createState() => _VerifyOTPViewState();
}

class _VerifyOTPViewState extends State<VerifyOTPView> {
  final otpController = TextEditingController();
  final focusNode = FocusNode();
  int seconds = 60;
  late Timer timer;
  String? receivedOtp;
  bool isResendTextGreen = false;
  bool isTimerRunning = true;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          timer.cancel();
          isTimerRunning = false;
          isResendTextGreen = true;
        }
      });
    });
  }

  @override
  void dispose() {
    otpController.dispose();
    focusNode.dispose();
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 64,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(232, 235, 241, 0.37),
        borderRadius: BorderRadius.circular(24),
      ),
    );

    final cursor = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 21,
        height: 1,
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(137, 146, 160, 1),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );

    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthError) {
            buildError(state.errorMessage);
          } else if (state is AuthLoaded) {
            clearData();
            context.pushReplacementNamed(MyAppRouteConstants.homeTabsRouteName);
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return Center(
              child: CircularProgressIndicator(color: ColorManager.greenColor1),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Image.asset(millatMainLogo, height: 50, width: 200),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'We have sent OTP verification to your email/number. This code will expire in',
                      style:
                          TextStyle(color: black133, fontSize: 16, height: 1.3),
                      textAlign: TextAlign.center,
                    ),
                    kHeight30,
                    Text(formatTime(seconds),
                        style: const TextStyle(color: black133)),
                    const SizedBox(height: 30),
                    Pinput(
                      length: 4,
                      controller: otpController,
                      // enabled: isTimerRunning,
                      defaultPinTheme: defaultPinTheme,
                      separator: const SizedBox(width: 16),
                      focusedPinTheme: defaultPinTheme.copyWith(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(232, 235, 241, 0.37),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      showCursor: true,
                      cursor: cursor,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    if (isResendTextGreen)
                      GestureDetector(
                        onTap: () {
                          context.read<AuthBloc>().add(ResendSendOTP());
                        },
                        child: RichText(
                          text: TextSpan(children: [
                            const TextSpan(
                              text: "Didn't receive a code? ",
                              style: TextStyle(
                                color: black133,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: 'Resend',
                              style: TextStyle(
                                color: ColorManager.mainColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ]),
                        ),
                      ),
                    kHeight50,
                    Image.asset('assets/images/human_in_front_of_phone.png',
                        height: 390),
                    kHeight20,
                    MainButton(
                      title: 'Verify OTP',
                      onPressed: () {
                        // if (isTimerRunning) {
                        BlocProvider.of<AuthBloc>(context).add(
                          VerifyOTP(otpController.text, context),
                        );
                        // } else {}
                      },
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;

    String minutesString = minutes.toString().padLeft(2, '0');
    String secondsString = remainingSeconds.toString().padLeft(2, '0');

    return '$minutesString:$secondsString';
  }

  ScaffoldFeatureController buildError(String message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  clearData() {
    otpController.clear();
    receivedOtp = null;
  }
}
