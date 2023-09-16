import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/model/user.dart';
import 'package:instant_grrocery_delivery/provider/auth/signup_controller_provider.dart';
import 'package:instant_grrocery_delivery/util/validation/validator.dart';
import 'package:instant_grrocery_delivery/ui/widget/input_field.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';
import 'package:instant_grrocery_delivery/util/extension/async_value.dart';

import '../../../main.dart';
import '../../../route/route_helper.dart';
import '../../widget/auth_button.dart';
import '../../widget/my_app_bar.dart';

class SignUp extends ConsumerWidget {
  SignUp({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final nameTextController = TextEditingController();
  final phoneTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(
      signUpControllerProvider,
      (_, state) {
        state.showSnackBarOnError(context);
        state.whenData((value) {
          Get.toNamed(RouteHelper.getHomeTab());
        });
      },
    );

    final signUpState = ref.watch(signUpControllerProvider);

    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: Dimension.height(20)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                child: Text(
                  'Sign up Now',
                  style: TextStyle(
                    fontSize: Dimension.width(30),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: Dimension.height(10)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                child: Text(
                  'Looks like you are new here.',
                  style: TextStyle(
                    fontSize: Dimension.width(15),
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(height: Dimension.height(40)),

              /// name field
              InputField(
                title: 'Enter your name',
                hint: 'Name',
                controller: nameTextController,
                keyboardType: TextInputType.text,
                validator: validateName,
              ),

              /// email field
              InputField(
                title: 'Enter your email',
                hint: 'Email',
                controller: emailTextController,
                keyboardType: TextInputType.emailAddress,
                validator: validateEmail,
              ),

              /// phone number field
              InputField(
                title: 'Enter your phone number',
                hint: 'Phone Number',
                controller: phoneTextController,
                keyboardType: TextInputType.phone,
              ),

              InputField(
                title: 'Enter a password',
                hint: 'Password',
                controller: passwordTextController,
                keyboardType: TextInputType.text,
                obscureText: true,
                validator: validatePassword,
              ),

              SizedBox(height: Dimension.height(35)),

              /// login button
              AuthButton(
                onPressed: () {
                  final isValid = _formKey.currentState?.validate() ?? false;

                  if (isValid) {
                    final createUser = CreateUserDto(
                      fullName: nameTextController.text,
                      username: emailTextController.text.split('@')[0],
                      email: emailTextController.text,
                      password: passwordTextController.text,
                      phone: phoneTextController.text,
                    );
                    ref
                        .read(signUpControllerProvider.notifier)
                        .signUp(createUser);
                  }
                },
                text: signUpState.isLoading
                    ? 'Please Wait'
                    : signUpState.isData
                        ? 'Successful'
                        : 'Continue',
                // 'Continue',
              ),

              Container(
                child: SizedBox(height: Dimension.height(40)),
              ),

              // terms and condition
              Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                  child: Text(
                    'By signing up, you agree to our',
                    style: TextStyle(
                      fontSize: Dimension.width(16),
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),

              //space
              SizedBox(height: Dimension.height(5)),

              Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                  child: Text(
                    'Terms and Conditions',
                    style: TextStyle(
                      fontSize: Dimension.width(16),
                      fontWeight: FontWeight.w500,
                      color: accentColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
