import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:instant_grrocery_delivery/ui/pages/my_action_button.dart';

import '../../../../main.dart';
import '../../controller/cart_database_controller.dart';
import '../../util/dimension.dart';
import '../widget/side_tab.dart';
import 'favorite_list.dart';
import 'home_page.dart';
import 'my_orders.dart';
import 'select_category.dart';

class HomeTabs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final tabs = [
      const Tab(text: 'Home'),
      const Tab(text: 'Shop by Categories'),
      const Tab(text: 'Favorite'),
      const Tab(text: 'My Order'),
      const Tab(text: 'Support'),
    ];

    final pages = [
      const HomePage(),
      const SelectCategory(),
      const FavoriteList(),
      const MyOrders(),
      const Center(
        child: Text('5'),
      ),
    ];

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SideTab(
          backgroundColor: backgroundColor,
          tabList: tabs,
          tabViewList: pages,
          leading: Container(
            height: Dimension.height(40),
            width: Dimension.width(40),
            margin: EdgeInsets.only(top: Dimension.height(40), bottom: Dimension.height(10)),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimension.width(25)), color: greenColor),
          ),
        ),
      ),
    );
  }
}
