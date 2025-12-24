import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/result_value.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_controller_provider.dart';
import 'package:instant_grrocery_delivery/route/app_router.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';
import 'package:instant_grrocery_delivery/util/validation/validator.dart';

import '../../../route/route_helper.dart';
import '../../widget/auth_button.dart';
import '../../widget/input_field.dart';
import '../../widget/social_button.dart';

@RoutePage()
class LoginPage extends ConsumerWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final emailTextController = TextEditingController(text: 'u1@email.com');
  final passwordTextController = TextEditingController(text: '123456');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<ResultValue<AuthResponse>>(
      authControllerProvider,
      (_, state) {
        state.whenOrNull(
          error: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error.toString())),
            );
          },
          data: (value) {
            // Get.offAndToNamed(RouteHelper.getHomeTab());
            AutoRouter.of(context).push(const MainTabsRoute());
          },
        );
      },
    );

    final loginState = ref.watch(authControllerProvider);
    //
    // loginState.mapOrNull(
    //   error: (error) => ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(content: Text(error.toString())),
    //   )
    // );

    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: const MyAppBar(title: 'Login'),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: context.h(40)),
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(color: accentColor, borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Icon(
                      Icons.person,
                      size: context.w(90),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.h(40)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.w(20)),
                child: Text(
                  'Hi Mate!',
                  style: TextStyle(
                    fontSize: context.w(15),
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(height: context.h(5)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.w(20)),
                child: Text(
                  'Sign in Now',
                  style: TextStyle(
                    fontSize: context.w(30),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: context.h(35)),

              /// phone number field
              InputField(
                title: 'Enter your email',
                hint: 'Email',
                controller: emailTextController,
                keyboardType: TextInputType.text,
                validator: validateEmail,
              ),

              ///password field
              InputField(
                title: 'Enter your password',
                hint: 'Password',
                controller: passwordTextController,
                keyboardType: TextInputType.text,
                obscureText: true,
                validator: validatePassword,
              ),

              // CountrySelectField(),

              SizedBox(height: context.h(30)),

              /// login button
              AuthButton(
                onPressed: loginState.isLoading
                    ? null
                    : () {
                        final isValid = _formKey.currentState?.validate();

                        if (isValid == true) {
                          final loginUser = LoginRequest(
                            identifier: emailTextController.text,
                            password: passwordTextController.text,
                          );
                          ref.read(authControllerProvider.notifier).login(loginUser);
                        }
                      },
                text: loginState.isLoading
                    ? 'Please Wait'
                    : loginState.isData
                        ? 'Successful'
                        : 'Continue',
                color: loginState.isLoading ? Colors.grey : null,
              ),
              SizedBox(height: context.h(4)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.w(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Get.toNamed(RouteHelper.getSignUp());
                        AutoRouter.of(context).push( SignUpRoute());
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(fontSize: context.w(16), fontWeight: FontWeight.w500),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Get.toNamed(RouteHelper.getSignUp());
                        // AutoRouter.of(context).push(ForgotPasswordRoute());
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: context.w(16), fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: context.h(40)),

              // terms and condition
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.w(20)),
                  child: Text(
                    'Or Continue with',
                    style: TextStyle(
                      fontSize: context.w(16),
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              SizedBox(height: context.h(30)),

              Container(
                padding: EdgeInsets.symmetric(horizontal: context.w(20)),
                child: Row(
                  children: [
                    /// google login
                    const SocialLoginButton(text: 'Google'),
                    SizedBox(width: context.w(20)),

                    /// facebook login button
                    const SocialLoginButton(text: 'Facebook'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
