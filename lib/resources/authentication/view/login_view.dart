// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/components/buttons/main_text_button.dart';
import 'package:millat/components/buttons/social_login_button.dart';
import 'package:millat/components/textFields/custom_text_field.dart';
import 'package:millat/resources/authentication/bloc/logic/auth_bloc.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/validators.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../../../routes/app_router_constants.dart';
import '../../../utils/color_manager.dart';
import '../../../utils/utils.dart';
import '../class/google_signin.dart';
import 'package:millat/enums/enumertations.dart';

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
          buildError(state.errorMessage);
        } else if (state is AuthLoaded) {
          clearDate();
          context.pushReplacementNamed(MyAppRouteConstants.homeTabsRouteName);
        } else if (state is AuthLoadedSocialLogin) {
          context.pushReplacementNamed(MyAppRouteConstants.homeTabsRouteName);
        } else if (state is AuthSocialLoginNewUser) {
          context.pushNamed(MyAppRouteConstants.sendOtpRouteName,
              extra: {'type': SendOTPType.socialSignIn});
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return Center(
            child: CircularProgressIndicator(color: ColorManager.greenColor1),
          );
        } else {
          return buildLoginWidget(context);
        }
      },
    ));
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
              kHeight40,
              const Text('Please enter your e-mail address and enter password ',
                  style: TextStyle(color: black133)),
              kHeight40,
              CustomTextField(
                controller: _emailController,
                icon: const Icon(Icons.email, color: iconsColor),
                hint: 'Enter your email or Number',
                validator: Validators(context).emailValidator,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                controller: _passwordController,
                icon: const Icon(Icons.lock, color: iconsColor),
                hint: 'Enter your password',
                validator: Validators(context).passwordValidator,
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: const Text('Forgot Password?',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  onPressed: () {
                    context
                        .goNamed(MyAppRouteConstants.forgotPassWordRouteName);
                  },
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              MainTextButton(
                title: 'Skip',
                onTap: () {
                  context.pushNamed(MyAppRouteConstants.sendOtpRouteName,
                      extra: {'type': SendOTPType.signIn});
                },
                textStyle: TextStyle(
                  color: ColorManager.blackColor,
                ),
              ),
              MainButton(
                  title: 'Login',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      BlocProvider.of<AuthBloc>(context).add(Login(
                          _emailController.text,
                          _passwordController.text,
                          context));
                    } else {
                      return;
                    }
                  }),
              kHeight40,
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                          color: black133,
                          fontSize: 13,
                          fontWeight: FontWeight.w500)),
                  TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                          color: ColorManager.mainColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w500)),
                ])),
              ),
              kHeight40,
              const Text('Login in with', style: TextStyle(color: black133)),
              kHeight40,
              SocialLoginButton(
                  onPressed: () => googleSignIn(),
                  text: "Sign Up With Google",
                  icon: 'assets/logos/google_logo.png'),
              kHeight15,
              Platform.isIOS
                  ? SocialLoginButton(
                      onPressed: () => appleSignIn(),
                      text: "Sign Up With Apple",
                      icon: 'assets/logos/apple_logo.png')
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

  Future appleSignIn() async {
    if (await SignInWithApple.isAvailable()) {
      try {
        final user = await SignInWithApple.getAppleIDCredential(scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ]);
        showSnackBar(context, "${user.givenName} signed in");
        context.read<AuthBloc>().add(SocialLogin(
              email: user.email!,
              name: user.givenName!,
              context,
              id: user.userIdentifier,
            ));
      } on Exception catch (e) {
        debugPrint(e.toString());
      }
    } else {
      showSnackBar(context, "Apple SignIn is not available for your device");
    }
  }

  Future googleSignIn() async {
    try {
      final user = await GoogleSignInService.login();
      if (user == null) {
        return;
      }
      print(user);
      await user.authentication;

      showSnackBar(context, "${user.displayName} signed in");
      context.read<AuthBloc>().add(
          SocialLogin(email: user.email, name: user.displayName!, context));
      // await GoogleSignInService.logout();
    } catch (exception) {
      debugPrint(exception.toString());
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
}
