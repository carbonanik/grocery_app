import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/ui/widget/input_field.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import '../../main.dart';
import '../widget/my_app_bar.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: Dimension.height(20)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
              child: Text(
                'Sign up Now',
                style: TextStyle(
                  fontSize: Dimension.width(30),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: Dimension.height(10)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
              child: Text(
                'Looks like you are new here.',
                style: TextStyle(
                  fontSize: Dimension.width(15),
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: Dimension.height(40)),

            /// phone number field

            InputField(
              title: 'Enter your phone number',
              hint: 'Phone Number',
              controller: TextEditingController(),
              keyboardType: TextInputType.phone,
            ),

            /// name field
            InputField(
              title: 'Enter your name',
              hint: 'Name',
              controller: TextEditingController(),
              keyboardType: TextInputType.text,
            ),

            /// email field
            InputField(
              title: 'Enter your email',
              hint: 'Email',
              controller: TextEditingController(),
              keyboardType: TextInputType.emailAddress,
            ),

            InputField(
              title: 'Enter your password',
              hint: 'Password',
              controller: TextEditingController(),
              keyboardType: TextInputType.text,
              obscureText: true,
            ),


            SizedBox(height: Dimension.height(35)),

            /// login button
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
              width: double.infinity,
              height: Dimension.height(45),
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(greenColor),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {},
                child: Text('Continue',
                    style: TextStyle(
                      fontSize: Dimension.width(18),
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),

            Container(
              child: SizedBox(height: Dimension.height(40)),
            ),

            // terms and condition
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                child: Text(
                  'By signing up, you agree to our',
                  style: TextStyle(
                    fontSize: Dimension.width(16),
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),

            //space
            SizedBox(height: Dimension.height(5)),

            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                child: Text(
                  'Terms and Conditions',
                  style: TextStyle(
                    fontSize: Dimension.width(16),
                    fontWeight: FontWeight.w500,
                    color: greenColor,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
    ;
  }
}
