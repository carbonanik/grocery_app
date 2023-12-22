import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/main.dart';

import '../../../../../util/dimension.dart';
import '../../../../widget/auth_button.dart';
import '../../../../widget/input_field.dart';

class CreateShop extends StatelessWidget {
  CreateShop({super.key});

  final _formKey = GlobalKey<FormState>();
  final shopNameController = TextEditingController();
  final locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      body: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: context.h(60)),
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Icon(
                      Icons.shop,
                      size: context.w(70),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.h(40)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.w(20)),
                child: Text(
                  'Starting a new business?',
                  style: TextStyle(
                    fontSize: context.w(15),
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(height: context.h(5)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.w(20)),
                child: Text(
                  'Create Shop',
                  style: TextStyle(
                    fontSize: context.w(30),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: context.h(35)),
              InputField(
                title: 'Enter a shop name',
                hint: 'Shop name',
                controller: shopNameController,
                keyboardType: TextInputType.text,
                // validator: validateEmail,
              ),
              InputField(
                title: 'Enter shop location',
                hint: 'Location',
                controller: locationController,
                keyboardType: TextInputType.text,
                // obscureText: true,
                // validator: validatePassword,
              ),
              SizedBox(height: context.h(35)),
              AuthButton(
                onPressed: () {
                  final isValid = _formKey.currentState?.validate() ?? false;
                },
                text: 'Create',
              ),
            ],
          )),
    );
  }
}
