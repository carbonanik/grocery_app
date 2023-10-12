import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';

import '../../../util/dimension.dart';
import '../../widget/auth_button.dart';
import '../../widget/input_field.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

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
              SizedBox(height: Dimension.height(40)),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                child: Text(
                  'Verification',
                  style: TextStyle(
                    fontSize: Dimension.width(30),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: Dimension.height(5)),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                child: Text(
                  'Hi Mate!',
                  style: TextStyle(
                    fontSize: Dimension.width(18),
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),

              SizedBox(height: Dimension.height(35)),

              /// phone number field
              const InputField(
                title: 'Enter 6 digits OTP',
                hint: '123456',
                keyboardType: TextInputType.text,
              ),


              SizedBox(height: Dimension.height(35)),

              /// login button
              AuthButton(
                onPressed: () {},
                text: 'Submit',
              ),

              SizedBox(height: Dimension.height(50)),

              // terms and condition
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '0:25 min left',
                      style: TextStyle(
                        fontSize: Dimension.width(16),
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),

                    Text(
                      'RESEND',
                      style: TextStyle(
                        fontSize: Dimension.width(16),
                        fontWeight: FontWeight.w500,
                        color: accentColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimension.height(30)),
            ],
          ),
        ),
      ),
    );
  }
}
