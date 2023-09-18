import 'dart:io';

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
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/validators.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../../utils/utils.dart';
import '../class/google_signin.dart';

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
        body: WillPopScope(
      onWillPop: () => onBackPress(context),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthError) {
            buildError(state.errorMessage);
          } else if (state is AuthLoaded) {
            clearDate();
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const LoginView(),
            ));
          } else if (state is AuthLoadedSocialLogin) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const TabsView(),
            ));
          } else if (state is AuthSocialLoginNewUser) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const SendOTPView(),
            ));
          }
        },
        builder: (context, state) {
          if (state is AuthLoading || state is AuthloadingSocialLogin) {
            return Center(
              child: CircularProgressIndicator(color: ColorManager.greenColor1),
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
                          Navigator.of(context).push(MaterialPageRoute(
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
                                        content:
                                            Text("Password didn't match")));
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
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginView(),
                          ));
                        },
                        child: RichText(
                            text: TextSpan(children: [
                          const TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyle(
                                  color: black133,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                  color: ColorManager.mainColor,
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
                          InkWell(
                            onTap: () => googleSignIn(),
                            child: Image.asset('assets/logos/google_logo.png',
                                width: 40),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          InkWell(
                              onTap: () => appleSignIn(),
                              child: Image.asset(
                                'assets/logos/apple_logo.png',
                                width: 60,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    ));
  }

  Future appleSignIn() async {
    if (await SignInWithApple.isAvailable()) {
      try {
        final credential = await SignInWithApple.getAppleIDCredential(scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ]);
        print(credential.email);
      } on Exception catch (e) {
        print(e);
      }
    } else {
      showSnackBar(context, "Apple SignIn is not available for your device");
    }
  }

  Future googleSignIn() async {
    try {
      final user = await GoogleSignInService.login();

      await user?.authentication;

      showSnackBar(context, "${user?.displayName} signed in");
      context.read<AuthBloc>().add(
          SocialLogin(email: user!.email, name: user.displayName!, context));
      // await GoogleSignInService.logout();
    } catch (exception) {
      print(exception);
      showSnackBar(context, exception.toString());
    }
  }

  ScaffoldFeatureController buildError(String message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  clearDate() {
    _emailController.clear();
    _passwordController.clear();
  }

  Future<bool> onBackPress(BuildContext context) {
    openDialog(context);
    return Future.value(false);
  }

  Future<void> openDialog(BuildContext context) async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            clipBehavior: Clip.hardEdge,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            contentPadding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                color: ColorManager.primary,
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const Icon(
                        Icons.exit_to_app,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Exit app',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Are you sure to exit app?',
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 0);
                },
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.cancel,
                        color: ColorManager.primary,
                      ),
                    ),
                    Text(
                      'Cancel',
                      style: TextStyle(
                          color: ColorManager.primary,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.check_circle,
                        color: ColorManager.primary,
                      ),
                    ),
                    Text(
                      'Yes',
                      style: TextStyle(
                          color: ColorManager.primary,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          );
        })) {
      case 0:
        break;
      case 1:
        exit(0);
    }
  }
}
