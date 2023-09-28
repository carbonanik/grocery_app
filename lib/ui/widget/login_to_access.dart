import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_hive_provider.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';

class LoginToAccess extends ConsumerWidget {
  const LoginToAccess({
    required this.child,
    Key? key}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    ref.refresh(getAuthUserProvider);
    final authUser = ref.watch(getAuthUserProvider);

    return authUser.value == null
        ? Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Please Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
        Text("To view your profile details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
        const SizedBox(height: 70),
        TextButton(
            style:  TextButton.styleFrom(
              backgroundColor: accentColor,
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 40),
            ),
            onPressed: () {
              Get.toNamed(RouteHelper.getLogin());

            }, child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),)),
      ],
    )) : child;
  }
}
