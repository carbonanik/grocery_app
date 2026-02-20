import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/core/theme/colors.dart';

import 'package:instant_grrocery_delivery/core/constants/app_sizes.dart';
import 'package:instant_grrocery_delivery/core/widgets/auth_button.dart';
import 'package:instant_grrocery_delivery/core/widgets/input_field.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back_ios_sharp),
              ),
              const SizedBox(height: 10),
              gapH48,

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
                child: Text(
                  'Verification',
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
                  'Hi Mate!',
                  style: TextStyle(
                    fontSize: Sizes.p20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),

              gapH32,

              /// phone number field
              const InputField(
                title: 'Enter 6 digits OTP',
                hint: '123456',
                keyboardType: TextInputType.text,
              ),

              gapH32,

              /// login button
              AuthButton(onPressed: () {}, text: 'Submit'),

              gapH48,

              // terms and condition
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '0:25 min left',
                      style: TextStyle(
                        fontSize: Sizes.p16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),

                    Text(
                      'RESEND',
                      style: TextStyle(
                        fontSize: Sizes.p16,
                        fontWeight: FontWeight.w500,
                        color: accentColor,
                      ),
                    ),
                  ],
                ),
              ),
              gapH32,
            ],
          ),
        ),
      ),
    );
  }
}
