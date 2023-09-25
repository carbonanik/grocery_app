import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/user/user.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_hive_provider.dart';
import 'package:instant_grrocery_delivery/provider/auth/update_user_controller_provider.dart';
import 'package:instant_grrocery_delivery/ui/widget/auth_button.dart';
import 'package:instant_grrocery_delivery/util/extension/async_value.dart';

import '../../../main.dart';
import '../../widget/input_field.dart';

class ProfileEdit extends ConsumerWidget {
  ProfileEdit({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final nameTextController = TextEditingController();
  final phoneTextController = TextEditingController();
  final emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read<AsyncValue<AuthResponse?>>(getAuthUserProvider).whenData(
      (value) {
        nameTextController.text = value?.user.fullName ?? '';
        phoneTextController.text = value?.user.phone ?? '';
        emailTextController.text = value?.user.email ?? '';
      },
    );

    final updateUserState = ref.watch(updateUserControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                InkWell(
                  onTap: () => Get.back(),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back_ios_sharp),
                  ),
                ),
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
                          SizedBox(
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
                                borderRadius: BorderRadius.circular(100),
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
                      )
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
                const SizedBox(height: 150),
                AuthButton(
                  onPressed: () {
                    final updateUser = UpdateUserRequest(
                      email: emailTextController.text,
                      fullName: nameTextController.text,
                      phone: phoneTextController.text,
                    );
                    ref
                        .read(updateUserControllerProvider.notifier)
                        .update(updateUser);
                  },
                  text:  updateUserState.isLoading
                      ? 'Please Wait'
                      : 'Update',
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
