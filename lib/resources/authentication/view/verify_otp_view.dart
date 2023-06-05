import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/components/buttons/main_text_button.dart';
import 'package:millat/components/textFields/custom_text_field.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/authentication/bloc/logic/auth_bloc.dart';
import 'package:millat/resources/authentication/view/sign_up_view.dart';
import 'package:millat/resources/home/view/home_view.dart';
import 'package:millat/resources/tabs/view/tabs_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/globals.dart';
import 'package:pinput/pinput.dart';

class VerifyOTPView extends StatefulWidget {
  const VerifyOTPView({Key? key}) : super(key: key);

  @override
  State<VerifyOTPView> createState() => _VerifyOTPViewState();
}

class _VerifyOTPViewState extends State<VerifyOTPView> {
  final controller = TextEditingController();
  final focusNode = FocusNode();


  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
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
      body: BlocConsumer<AuthBloc,AuthState>(
        listener: (context, state) {
          if (state is AuthError) {
            buildError(state.errorMessage);
          } else if (state is AuthLoaded) {
            clearDate();
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const TabsView(),
            ));
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: CircularProgressIndicator(color: green77),
            );
          } else {
            return  Padding(
              padding: const EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 60,),
                    Image.asset(millatMainLogo,height: 50,width: 200),
                    const SizedBox(height: 40,),
                    const Text('We have sent OTP verification on your email/number. This code will expire in',style: TextStyle(color: black133,fontSize: 16,height: 1.3),textAlign: TextAlign.center,),
                    const SizedBox(height: 30,),

                    const Text('00:11',style: TextStyle(color: black133)),

                    const SizedBox(height: 30),
                    Pinput(
                      length: 4,
                      controller: controller,
                      focusNode: focusNode,
                      defaultPinTheme: defaultPinTheme,
                      separator: const SizedBox(width: 16),
                      focusedPinTheme: defaultPinTheme.copyWith(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(232, 235, 241, 0.37),
                          borderRadius: BorderRadius.circular(8),
                          /*boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.05999999865889549),
                          offset: Offset(0, 3),
                          blurRadius: 16,
                        )
                      ],*/
                        ),
                      ),
                      showCursor: true,
                      cursor: cursor,
                    ),
                    const SizedBox(height: 20,),

                    RichText(text: const TextSpan(children: [
                      TextSpan(text: "I didn't received a code! ",style: TextStyle(color: black133,fontSize: 13,fontWeight: FontWeight.w500)),
                      TextSpan(text: 'Please resend', style: TextStyle(color: mainColor,fontSize: 13,fontWeight: FontWeight.w500)),
                    ])),
                    const SizedBox(height: 50,),
                    Image.asset('assets/images/human_in_front_of_phone.png',height: 390),
                    const SizedBox(height: 20,),


                    MainButton(title: 'Verify OTP',onPressed: (){
                      BlocProvider.of<AuthBloc>(context).add(
                          SendOTP(controller.text));
                    }),

                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }

  ScaffoldFeatureController buildError(String message) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)));
  }

  clearDate() {
    controller.clear();
  }
}
