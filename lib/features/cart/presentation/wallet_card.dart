import 'package:instant_grrocery_delivery/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/core/widgets/auth_button.dart';
import 'package:material_dialogs/material_dialogs.dart';

import 'package:instant_grrocery_delivery/core/widgets/input_field.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            color: accentColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: .5,
                blurRadius: 2,
                offset: const Offset(1, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Gro Wallet',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              Text(
                '\$180.00',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'Gro Money can be used for ordering groceries',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: .5,
                blurRadius: 2,
                offset: const Offset(1, 3),
              ),
            ],
          ),
          child: Center(
            child: GestureDetector(
              onTap: () {
                Dialogs.bottomMaterialDialog(
                  context: context,
                  customView: Material(
                    type: MaterialType.transparency,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Enter amount to add to wallet',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          InputField(
                            title: 'Amount',
                            hint: 'Enter amount',
                            keyboardType: TextInputType.text,
                          ),
                          const SizedBox(height: 50),

                          AuthButton(text: 'Continue'),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add, color: accentColor),
                  const SizedBox(width: 10),
                  Text(
                    'Add Money',
                    style: TextStyle(
                      // fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: accentColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}


