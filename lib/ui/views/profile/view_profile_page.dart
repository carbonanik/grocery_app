import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_controller_provider.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_local_provider.dart';
import 'package:instant_grrocery_delivery/provider/auth/update_user_controller_provider.dart';
import 'package:instant_grrocery_delivery/route/app_router.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/ui/widget/login_to_access.dart';
import 'package:instant_grrocery_delivery/ui/widget/my_app_bar.dart';

@RoutePage()
class ViewProfilePage extends StatelessWidget {
  const ViewProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Profile'),
      backgroundColor: backgroundColor,
      body: LoginToAccess(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Consumer(
                        builder: (context, ref, child) {
                          // ref.invalidate(getAuthUserProvider);
                          final authUser = ref.watch(authControllerProvider);
                          return authUser.map(
                            empty: (value) => const CircularProgressIndicator(),
                            data: (asyncValue) => Text(
                              asyncValue.value.user.fullName ?? "Unknown",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            error: (error) => const Text('Unknown x'),
                            loading: (loading) => const CircularProgressIndicator(),
                          );
                        },
                      ),
                      const SizedBox(height: 5),
                      InkWell(
                        onTap: () {
                          // Get.toNamed(RouteHelper.getProfileEdit());
                          AutoRouter.of(context).push(UpdateProfileRoute());
                        },
                        child: const Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: accentColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const SizedBox(
                    height: 80,
                    width: 80,
                    child: CircleAvatar(
                      backgroundColor: accentColor,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                child: Column(
                  children: [
                    _profileItem(
                      Icons.public,
                      'Change Language',
                      'English',
                      onTap: () {},
                    ),
                    _profileItem(
                      Icons.question_mark,
                      'FAQs',
                      'Get your questions answered',
                      onTap: () {
                        // Get.toNamed(RouteHelper.getFaqs());
                        AutoRouter.of(context).push(const FaqsRoute());
                      },
                    ),
                    _profileItem(
                      Icons.note,
                      'Terms & Conditions',
                      'Know terms of use',
                      onTap: () {
                        // Get.toNamed(RouteHelper.getTermsAndCondition());
                        AutoRouter.of(context).push(const TermsAndConditionsRoute());
                      },
                    ),
                    _profileItem(
                      Icons.lock,
                      'Privacy Policy',
                      'Companies privacy policy',
                      onTap: () {
                        // Get.toNamed(RouteHelper.getPrivacyPolicy());
                        AutoRouter.of(context).push(const PrivacyPolicyRoute());
                      },
                    ),
                    Consumer(builder: (context, ref, child) {
                      return _profileItem(Icons.logout, 'Logout', 'Sign out from account', onTap: () {
                        ref.read(authLocalProvider).removeAuthUser();
                        // Get.offAllNamed(RouteHelper.getLogin());
                        AutoRouter.of(context).push( LoginRoute());
                      });
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileItem(
    IconData icon,
    String title,
    String subtitle, {
    VoidCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: accentColor,
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
