import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/components/textFields/custom_text_field.dart';
import 'package:millat/resources/authentication/bloc/logic/auth_bloc.dart';
import 'package:millat/resources/authentication/view/login_view.dart';
import 'package:millat/utils/globals.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthError) {
          buildError(state.errorMessage);
        } else if (state is AuthLoaded) {
          clearDate();
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const LoginView(),
          ));
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return const Center(
            child: CircularProgressIndicator(color: green77),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: 'Forgot ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'Password?',
                        style: TextStyle(
                            color: mainColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w500)),
                  ])),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text('Enter email to reset password',
                      style: TextStyle(color: black133)),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomTextField(
                      icon: Icon(Icons.email),
                      hint: 'example@gmail.com',
                      controller: _emailController),
                  const SizedBox(
                    height: 100,
                  ),
                  Image.asset('assets/images/phone.png'),
                  const SizedBox(
                    height: 100,
                  ),
                  MainButton(
                      title: 'Send OTP',
                      onPressed: () {
                        BlocProvider.of<AuthBloc>(context)
                            .add(ForgotPassword(_emailController.text));
                      }),
                ],
              ),
            ),
          );
        }
      },
    ));
  }

  ScaffoldFeatureController buildError(String message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  clearDate() {}
}
