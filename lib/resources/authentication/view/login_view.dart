import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/components/buttons/main_text_button.dart';
import 'package:millat/components/textfields/custom_text_field.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/authentication/bloc/logic/auth_bloc.dart';
import 'package:millat/resources/authentication/view/forgot_password_view.dart';
import 'package:millat/resources/authentication/view/sign_up_view.dart';
import 'package:millat/resources/authentication/view/verify_otp_view.dart';
import 'package:millat/resources/home/view/home_view.dart';
import 'package:millat/resources/tabs/view/tabs_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/globals.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
          return buildLoginWidget(context);
        }
      },
    )
    );
  }

  Padding buildLoginWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Image.asset(millatMainLogo, height: 50, width: 200),
              const SizedBox(
                height: 40,
              ),
              const Text('Please enter your e-mail address and enter password ',
                  style: TextStyle(color: black133)),
              const SizedBox(
                height: 40,
              ),
              CustomTextField(
                  controller: _emailController,
                  icon: const Icon(Icons.email, color: iconsColor),
                  hint: 'Enter your email or Number'),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                  controller: _passwordController,
                  icon: const Icon(Icons.lock, color: iconsColor),
                  hint: 'Enter your password'),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: const Text('Forgot Password?',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ForgotPasswordView(),
                    ));
                  },
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              MainTextButton(
                title: 'Skip',
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const TabsView(),
                  ));
                },
              ),
              MainButton(
                  title: 'Login',
                  onPressed: () {
                    BlocProvider.of<AuthBloc>(context).add(
                        Login(_emailController.text, _passwordController.text));
                  }),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const SignUpView(),
                  ));
                },
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                          color: black133,
                          fontSize: 13,
                          fontWeight: FontWeight.w500)),
                  TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                          color: mainColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w500)),
                ])),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text('Login in with', style: TextStyle(color: black133)),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logos/facebook_logo.png', width: 20),
                  const SizedBox(
                    width: 40,
                  ),
                  Image.asset('assets/logos/google_logo.png', width: 40),
                  const SizedBox(
                    width: 40,
                  ),
                  Image.asset('assets/logos/apple_logo.png', width: 60),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  ScaffoldFeatureController buildError() {
    return ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter username/password')));
  }

  clearDate() {
    _emailController.clear();
    _passwordController.clear();
  }
}
