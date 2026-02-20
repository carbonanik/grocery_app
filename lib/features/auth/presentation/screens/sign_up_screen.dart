import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/core/utils/validator.dart';
import 'package:instant_grrocery_delivery/features/auth/domain/app_user.dart';
import 'package:instant_grrocery_delivery/core/result_value.dart';
import 'package:instant_grrocery_delivery/features/auth/presentation/provider/auth_controller_provider.dart';
import 'package:instant_grrocery_delivery/core/theme/colors.dart';
import 'package:instant_grrocery_delivery/core/widgets/auth_button.dart';
import 'package:instant_grrocery_delivery/core/widgets/input_field.dart';
import 'package:instant_grrocery_delivery/core/constants/app_sizes.dart';

class SignUpScreen extends ConsumerWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final nameTextController = TextEditingController();
  final phoneTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<ResultValue<AppUser?>>(authControllerProvider, (_, state) {
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
                gapH48,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
                  child: Text(
                    'Sign up Now',
                    style: TextStyle(
                      fontSize: Sizes.p32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                gapH4,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
                  child: Text(
                    'Looks like you are new here.',
                    style: TextStyle(
                      fontSize: Sizes.p16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ),
                gapH20,

                /// name field
                InputField(
                  title: 'Enter your name',
                  hint: 'Name',
                  controller: nameTextController,
                  keyboardType: TextInputType.text,
                  validator: Validator(
                    subjectName: 'Name',
                  ).require().minLength(3).maxLength(255).validate,
                ),

                /// email field
                InputField(
                  title: 'Enter your email',
                  hint: 'Email',
                  controller: emailTextController,
                  keyboardType: TextInputType.emailAddress,
                  validator: Validator(subjectName: 'Email').isEmail().validate,
                ),

                /// phone number field
                InputField(
                  title: 'Enter your phone number',
                  hint: 'Phone Number',
                  controller: phoneTextController,
                  keyboardType: TextInputType.phone,
                  validator: Validator(subjectName: 'Phone Number')
                      .require()
                      .exactLength(11)
                      .isNumber()
                      .startsWith('01')
                      .validate,
                ),

                InputField(
                  title: 'Enter a password',
                  hint: 'Password',
                  controller: passwordTextController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  validator: Validator(
                    subjectName: 'Password',
                  ).require().minLength(6).validate,
                ),

                gapH32,

                /// login button
                AuthButton(
                  onPressed: () {
                    final isValid = _formKey.currentState?.validate() ?? false;

                    if (isValid) {
                      ref
                          .read(authControllerProvider.notifier)
                          .signUp(
                            emailTextController.text,
                            passwordTextController.text,
                          );
                    }
                  },
                  text: signUpState.isLoading
                      ? 'Please Wait'
                      : signUpState.isData
                      ? 'Successful'
                      : 'Continue',
                  // 'Continue',
                ),

                gapH32,

                // terms and condition
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
                    child: Text(
                      'By signing up, you agree to our',
                      style: TextStyle(
                        fontSize: Sizes.p16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),

                //space
                gapH4,

                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
                    child: Text(
                      'Terms and Conditions',
                      style: TextStyle(
                        fontSize: Sizes.p16,
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
