import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';
import 'package:instant_grrocery_delivery/util/extension/async_value.dart';
import 'package:instant_grrocery_delivery/util/validation/validator.dart';

import '../../../provider/auth/login_controller_provider.dart';
import '../../../route/route_helper.dart';
import '../../widget/auth_button.dart';
import '../../widget/input_field.dart';
import '../../widget/social_button.dart';

class SignIn extends ConsumerWidget {
  SignIn({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final emailTextController = TextEditingController(text: 'anik');
  final passwordTextController = TextEditingController(text: '123456');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(
      loginControllerProvider,
      (_, state) {
        state.showSnackBarOnError(context);
        state.whenData((value) {
          Get.toNamed(RouteHelper.getHomeTab());
        });
      },
    );

    final loginState = ref.watch(loginControllerProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: Dimension.height(40)),
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Icon(
                      Icons.person,
                      size: Dimension.width(90),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimension.height(40)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                child: Text(
                  'Hi Mate!',
                  style: TextStyle(
                    fontSize: Dimension.width(15),
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(height: Dimension.height(5)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                child: Text(
                  'Sign in Now',
                  style: TextStyle(
                    fontSize: Dimension.width(30),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: Dimension.height(35)),

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

              SizedBox(height: Dimension.height(35)),

              /// login button
              AuthButton(
                onPressed: () {
                  final isValid = _formKey.currentState?.validate() ?? false;

                  if (isValid) {
                    final loginUser = LoginRequestDto(
                      identifier: emailTextController.text,
                      password: passwordTextController.text,
                    );
                    ref.read(loginControllerProvider.notifier).login(loginUser);
                  }
                },
                text: loginState.isLoading
                    ? 'Please Wait'
                    : loginState.isData
                        ? 'Successful'
                        : 'Continue',
              ),

              Container(
                child: SizedBox(height: Dimension.height(50)),
              ),

              // terms and condition
              Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                  child: Text(
                    'Or Continue with',
                    style: TextStyle(
                      fontSize: Dimension.width(16),
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              SizedBox(height: Dimension.height(30)),

              Container(
                padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                child: Row(
                  children: [
                    /// google login
                    const SocialLoginButton(text: 'Google'),
                    SizedBox(width: Dimension.width(20)),

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
