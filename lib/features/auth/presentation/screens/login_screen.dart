import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/core/utils/validator.dart';
import 'package:instant_grrocery_delivery/features/auth/domain/app_user.dart';
import 'package:instant_grrocery_delivery/core/result_value.dart';
import 'package:instant_grrocery_delivery/features/auth/presentation/provider/auth_controller_provider.dart';
import 'package:instant_grrocery_delivery/core/theme/colors.dart';
import 'package:instant_grrocery_delivery/core/constants/app_sizes.dart';
import 'package:instant_grrocery_delivery/core/widgets/auth_button.dart';
import 'package:instant_grrocery_delivery/core/widgets/input_field.dart';
import 'package:instant_grrocery_delivery/core/widgets/social_button.dart';

class LoginScreen extends ConsumerWidget {
  LoginScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final emailTextController = TextEditingController(text: 'u1@email.com');
  final passwordTextController = TextEditingController(text: '123456');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<ResultValue<AppUser?>>(authControllerProvider, (_, state) {
      state.whenOrNull(
        error: (error) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(error.toString())));
        },
        data: (value) {
          // Get.offAndToNamed(RouteHelper.getHomeTab());
          context.go('/home');
        },
      );
    });

    final loginState = ref.watch(authControllerProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              gapH48,
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: accentColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Icon(
                      Icons.person,
                      size: Sizes.p100,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              gapH32,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
                child: Text(
                  'Hi Mate!',
                  style: TextStyle(
                    fontSize: Sizes.p16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),
              gapH4,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
                child: Text(
                  'Sign in Now',
                  style: TextStyle(
                    fontSize: Sizes.p32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              gapH32,

              /// phone number field
              InputField(
                title: 'Enter your email',
                hint: 'Email',
                controller: emailTextController,
                keyboardType: TextInputType.text,
                validator: Validator().isEmail().validate,
              ),

              ///password field
              InputField(
                title: 'Enter your password',
                hint: 'Password',
                controller: passwordTextController,
                keyboardType: TextInputType.text,
                obscureText: true,
                validator: Validator(
                  subjectName: 'Password',
                ).require().minLength(6).validate,
              ),

              // CountrySelectField(),
              gapH32,

              /// login button
              AuthButton(
                onPressed: loginState.isLoading
                    ? null
                    : () {
                        final isValid = _formKey.currentState?.validate();

                        if (isValid == true) {
                          ref
                              .read(authControllerProvider.notifier)
                              .login(
                                emailTextController.text,
                                passwordTextController.text,
                              );
                        }
                      },
                text: loginState.isLoading
                    ? 'Please Wait'
                    : loginState.isData
                    ? 'Successful'
                    : 'Continue',
                color: loginState.isLoading ? Colors.grey : null,
              ),
              gapH4,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Get.toNamed(RouteHelper.getSignUp());
                        context.push('/sign-up');
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: Sizes.p16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Get.toNamed(RouteHelper.getSignUp());
                        // AutoRouter.of(context).push(ForgotPasswordRoute());
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: Sizes.p16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              gapH32,

              // terms and condition
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
                  child: Text(
                    'Or Continue with',
                    style: TextStyle(
                      fontSize: Sizes.p16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              gapH32,

              Container(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
                child: Row(
                  children: [
                    /// google login
                    const SocialLoginButton(text: 'Google'),
                    gapW20,

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
