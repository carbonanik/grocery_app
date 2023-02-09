import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import '../widget/input_field.dart';
import '../../main.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: Dimension.height(40)),
            Center(
              child: Icon(
                Icons.person,
                size: Dimension.width(150),
                color: Colors.green,
              ),
            ),
            SizedBox(height: Dimension.height(40)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
              child: Text(
                'Hi Mate!',
                style: TextStyle(
                  fontSize: Dimension.width(15),
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: Dimension.height(5)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
              child: Text(
                'Sign in Now',
                style: TextStyle(
                  fontSize: Dimension.width(30),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: Dimension.height(35)),

            /// phone number field
            InputField(
              title: 'Enter your phone',
              hint: 'Phone Number',
              controller: TextEditingController(),
              keyboardType: TextInputType.text,
            ),

            ///password field
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
              child: SizedBox(
                  height: Dimension.height(50)),
            ),

            // terms and condition
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                child: Text(
                  'Or Continue with',
                  style: TextStyle(
                    fontSize: Dimension.width(16),
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(height: Dimension.height(30)),


            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
              child: Row(
                children: [
                  /// google login
                  Expanded(
                    child: Container(
                      height: Dimension.height(40),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          foregroundColor: MaterialStateProperty.all(Colors.black),
                          side: MaterialStateProperty.all(BorderSide(
                            color: Colors.black12,
                            width: 2,
                          )),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(Dimension.width(10)),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text('Google',
                            style: TextStyle(
                              fontSize: Dimension.width(18),
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(width: Dimension.width(20)),
                  /// facebook login button
                  Expanded(
                    child: Container(
                      height: Dimension.height(40),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          foregroundColor: MaterialStateProperty.all(Colors.black),
                          side: MaterialStateProperty.all(BorderSide(
                            color: Colors.black12,
                            width: 2,
                          )),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(Dimension.width(10)),
                            ),
                          ),

                        ),
                        onPressed: () {},
                        child: Text('Facebook',
                            style: TextStyle(
                              fontSize: Dimension.width(18),
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
