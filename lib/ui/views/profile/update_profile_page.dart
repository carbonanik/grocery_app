import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:instant_grrocery_delivery/model/result_value.dart';
import 'package:instant_grrocery_delivery/model/user/user.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_controller_provider.dart';

import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/ui/widget/auth_button.dart';
import 'package:instant_grrocery_delivery/ui/widget/input_field.dart';
import 'package:instant_grrocery_delivery/ui/widget/my_app_bar.dart';

class UpdateProfilePage extends ConsumerWidget {
  UpdateProfilePage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final nameTextController = TextEditingController();
  final phoneTextController = TextEditingController();
  final emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.read<AsyncValue<AuthResponse?>>(getAuthUserProvider).whenData(
    //   (value) {
    //     nameTextController.text = value?.user.fullName ?? '';
    //     phoneTextController.text = value?.user.phone ?? '';
    //     emailTextController.text = value?.user.email ?? '';
    //   },
    // );

    // final updateUserState = ref.watch(updateUserControllerProvider);

    // ref.listen<AuthResult>(updateUserControllerProvider, (previous, next) {
    //   next.whenOrNull(
    //     data: (value) {
    //       nameTextController.text = value.user.fullName ?? '';
    //       phoneTextController.text = value.user.phone ?? '';
    //       emailTextController.text = value.user.email;
    //     }
    //   );
    // });

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const MyAppBar(title: 'Update Profile'),
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, child) {
            final updateUserState = ref.watch(authControllerProvider);

            return updateUserState.map(
              empty: (value) =>
                  const Center(child: CircularProgressIndicator()),
              loading: (value) =>
                  const Center(child: CircularProgressIndicator()),
              error: (value) => const Center(child: Text("Error")),
              data: (value) {
                nameTextController.text = value.value.user.fullName ?? '';
                phoneTextController.text = value.value.user.phone ?? '';
                emailTextController.text = value.value.user.email;
                return SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const SizedBox(height: 10),
                        // InkWell(
                        //   onTap: () => Get.back(),
                        //   child: const Padding(
                        //     padding: EdgeInsets.all(8.0),
                        //     child: Icon(Icons.arrow_back_ios_sharp),
                        //   ),
                        // ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Profile',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                ],
                              ),
                              const Spacer(),
                              Stack(
                                children: [
                                  const SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: CircleAvatar(
                                      backgroundColor: accentColor,
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: Container(
                                      padding: const EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ),
                                        color: Colors.black,
                                      ),
                                      child: const Icon(
                                        Icons.camera_alt_rounded,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        InputField(
                          title: 'Full Name',
                          hint: 'Samantha Smith',
                          keyboardType: TextInputType.text,
                          controller: nameTextController,
                        ),
                        const SizedBox(height: 10),
                        InputField(
                          title: 'Phone Number',
                          hint: '+ 1234567890',
                          keyboardType: TextInputType.text,
                          controller: phoneTextController,
                        ),
                        const SizedBox(height: 10),
                        InputField(
                          title: 'Email Address',
                          hint: 'mail@example.com',
                          keyboardType: TextInputType.text,
                          controller: emailTextController,
                        ),
                        // const Spacer(),
                        const SizedBox(height: 100),
                        AuthButton(
                          onPressed: updateUserState.isLoading
                              ? null
                              : () {
                                  final updateUser = UpdateUserRequest(
                                    email: emailTextController.text,
                                    fullName: nameTextController.text,
                                    phone: phoneTextController.text,
                                  );
                                  ref
                                      .read(authControllerProvider.notifier)
                                      .update(updateUser);
                                  // ref.(updateUserControllerProvider.notifier);
                                },
                          text: updateUserState.isLoading
                              ? 'Please Wait'
                              : 'Update',
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
