import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/components/buttons/main_text_button.dart';
import 'package:millat/components/textFields/custom_text_field.dart';
import 'package:millat/resources/authentication/bloc/logic/auth_bloc.dart';
import 'package:millat/resources/authentication/view/login_view.dart';
import 'package:millat/resources/authentication/view/send_otp_view.dart';
import 'package:millat/resources/tabs/view/tabs_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/validators.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _emailController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    const Text(
                        'Please enter your e-mail address and create password ',
                        style: TextStyle(color: black133)),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomTextField(
                      icon: const Icon(Icons.person, color: iconsColor),
                      hint: 'Full name',
                      controller: _fullNameController,
                      validator: Validators(context).fullNameValidator,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                        validator: Validators(context).emailValidator,
                        icon: const Icon(Icons.email, color: iconsColor),
                        hint: 'Enter your email',
                        controller: _emailController),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                        validator: Validators(context).passwordValidator,
                        icon: const Icon(Icons.lock, color: iconsColor),
                        hint: 'Enter your password',
                        controller: _passwordController),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      validator: Validators(context).passwordValidator,
                      icon: const Icon(Icons.lock, color: iconsColor),
                      hint: 'Confirm password',
                      controller: _confirmPasswordController,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    MainTextButton(
                      title: 'Skip',
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const SendOTPView(),
                        ));
                      },
                    ),
                    MainButton(
                        title: 'Sign Up',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            if (_passwordController.text ==
                                _confirmPasswordController.text) {
                              BlocProvider.of<AuthBloc>(context).add(SignUp(
                                  _fullNameController.text,
                                  _emailController.text,
                                  _passwordController.text));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Password didn't match")));
                            }
                          } else {
                            return "";
                          }
                        }),
                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const LoginView(),
                        ));
                      },
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(
                                color: black133,
                                fontSize: 13,
                                fontWeight: FontWeight.w500)),
                        TextSpan(
                            text: 'Login',
                            style: TextStyle(
                                color: mainColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w500)),
                      ])),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text('Sign Up in with ',
                        style: TextStyle(color: black133)),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/logos/facebook_logo.png',
                            width: 20),
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
      },
    ));
  }

  ScaffoldFeatureController buildError(String message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  clearDate() {
    _emailController.clear();
    _passwordController.clear();
  }
}
