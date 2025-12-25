import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/result_value.dart';
import 'package:instant_grrocery_delivery/model/user/user.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_controller_provider.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/ui/widget/auth_button.dart';
import 'package:instant_grrocery_delivery/util/validation/validator.dart';
import 'package:instant_grrocery_delivery/ui/widget/input_field.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

class SignUpPage extends ConsumerWidget {
  SignUpPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final nameTextController = TextEditingController();
  final phoneTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<ResultValue<AuthResponse>>(authControllerProvider, (_, state) {
      state.whenOrNull(
        data: (value) {
          // Get.toNamed(RouteHelper.getHomeTab());
          context.go('/home');
        },
        error: (error) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(error.toString())));
        },
      );
    });

    final signUpState = ref.watch(authControllerProvider);

    return SafeArea(
      child: CupertinoPageScaffold(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: context.h(40)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.w(20)),
                  child: Text(
                    'Sign up Now',
                    style: TextStyle(
                      fontSize: context.w(30),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: context.h(10)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.w(20)),
                  child: Text(
                    'Looks like you are new here.',
                    style: TextStyle(
                      fontSize: context.w(15),
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(height: context.h(20)),

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

                SizedBox(height: context.h(30)),

                /// login button
                AuthButton(
                  onPressed: () {
                    final isValid = _formKey.currentState?.validate() ?? false;

                    if (isValid) {
                      final createUser = CreateUserRequest(
                        fullName: nameTextController.text,
                        username: emailTextController.text.split('@')[0],
                        email: emailTextController.text,
                        password: passwordTextController.text,
                        phone: phoneTextController.text,
                      );
                      ref
                          .read(authControllerProvider.notifier)
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

                Container(child: SizedBox(height: context.h(40))),

                // terms and condition
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: context.w(20)),
                    child: Text(
                      'By signing up, you agree to our',
                      style: TextStyle(
                        fontSize: context.w(16),
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),

                //space
                SizedBox(height: context.h(5)),

                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: context.w(20)),
                    child: Text(
                      'Terms and Conditions',
                      style: TextStyle(
                        fontSize: context.w(16),
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
      ),
    );
  }
}
