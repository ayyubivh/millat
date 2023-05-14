import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/resources/authentication/bloc/logic/auth_bloc.dart';
import 'package:millat/resources/authentication/view/verify_otp_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/globals.dart';

class SendOTPView extends StatefulWidget {
  const SendOTPView({Key? key}) : super(key: key);

  @override
  State<SendOTPView> createState() => _SendOTPViewState();
}

class _SendOTPViewState extends State<SendOTPView> {
  final TextEditingController _phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthError) {
            buildError();
          } else if (state is AuthLoaded) {
            clearDate();
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const VerifyOTPView(),
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
              padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 50),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 70,),
                    Image.asset(millatMainLogo,height: 50,width: 200),
                    const SizedBox(height: 40,),
                    const Text('Registration enter your phone number to verify your account',style: TextStyle(color: black133,fontSize: 16,height: 1.3),textAlign: TextAlign.center,),
                    const SizedBox(height: 40,),
                    InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {
                        print(number.phoneNumber);
                      },
                      onInputValidated: (bool value) {
                        print(value);
                      },
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      ),
                      ignoreBlank: true,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: const TextStyle(color: Colors.black),
                      formatInput: true,
                      keyboardType:
                      const TextInputType.numberWithOptions(signed: true, decimal: true),
                      inputBorder: const OutlineInputBorder(),
                      inputDecoration: const InputDecoration(
                        labelText: 'Phone Number',
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder:InputBorder.none,
                      ),
                      onSaved: (PhoneNumber number) {
                        print('On Saved: $number');
                      },
                      textFieldController: _phoneNumberController,
                    ),
                    const SizedBox(height: 100,),
                    Image.asset('assets/images/phone.png'),
                    const SizedBox(height: 100,),


                    MainButton(title: 'Send OTP',onPressed: (){
                      BlocProvider.of<AuthBloc>(context).add(
                          SendOTP(_phoneNumberController.text));
                    }),

                  ],
                ),
              ),
            );
          }

        },
      )


    );
  }

  ScaffoldFeatureController buildError() {
    return ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter phone number')));
  }

  clearDate() {
    _phoneNumberController.clear();
  }
}
