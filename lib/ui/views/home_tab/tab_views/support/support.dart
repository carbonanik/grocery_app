import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/result_value.dart';
import 'package:instant_grrocery_delivery/model/support/dto/support_dto.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_controller_provider.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_local_provider.dart';
import 'package:instant_grrocery_delivery/provider/support/support_provider.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';

import '../../../../../main.dart';
import '../../../../widget/auth_button.dart';


@RoutePage()
class SupportPage extends StatelessWidget {
  SupportPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final subjectTextController = TextEditingController();
  final messageTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // intro
                  const SizedBox(height: 50),
                  const Text("Support",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      )),
                  const SizedBox(height: 16),
                  const Text("Let us know your \nfeedback & queries",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.grey,
                      )),
                  const SizedBox(height: 40),

                  // two fields
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 18,
                      ),
                      hintText: "Call us",
                      hintStyle: const TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: accentColor.withOpacity(.5),
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                          width: 2,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      suffixIcon: Icon(
                        Icons.call,
                        color: accentColor.withOpacity(.5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 18,
                      ),
                      hintText: "Email us",
                      hintStyle: const TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: accentColor.withOpacity(.5),
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                          width: 2,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      suffixIcon: Icon(
                        Icons.email,
                        color: accentColor.withOpacity(.5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),

                  // second intro
                  const Text("Write us",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      )),
                  const SizedBox(height: 16),
                  const Text("Enter your message",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.grey,
                      )),
                  const SizedBox(height: 40),

                  // tow fields
                  TextFormField(
                    controller: subjectTextController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 18,
                      ),
                      hintText: "Write Subject",
                      hintStyle: TextStyle(
                        color: accentColor.withOpacity(.5),
                        fontWeight: FontWeight.w500,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: accentColor.withOpacity(.5),
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                          width: 2,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: messageTextController,
                    maxLines: 7,
                    minLines: 5,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 18,
                      ),
                      hintText: "Write your message",
                      hintStyle: TextStyle(
                        color: accentColor.withOpacity(.5),
                        fontWeight: FontWeight.w500,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: accentColor.withOpacity(.5),
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                          width: 2,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // button
                  Consumer(builder: (context, ref, child) {
                    return AuthButton(
                      text: "Submit",
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        final id = ref.read<ResultValue<AuthResponse>>(authControllerProvider).whenOrNull(data: (value) => value.user.id,);
                        if (id != null) {
                          final success = ref
                              .read(
                                createSupportProvider(
                                  CreateSupportDto(
                                    subject: subjectTextController.text,
                                    message: messageTextController.text,
                                    user: UserInSupportDto(connect: [id]),
                                  ),
                                ),
                              )
                              .value;
                          if (success == true) {
                            // create a snack

                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text("Successfully Submitted"),
                            ));
                          }
                        }
                      },
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
