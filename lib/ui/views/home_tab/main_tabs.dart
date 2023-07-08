import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/select_category.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/support/support.dart';

import '../../../../../main.dart';
import '../../widget/side_tab.dart';
import 'tab_views/favorite_list.dart';
import 'tab_views/home/home_page.dart';
import 'tab_views/order/my_orders.dart';

class MainTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabs = [
      const Tab(text: 'Home'),
      const Tab(text: 'Categories'),
      const Tab(text: 'Favorite'),
      const Tab(text: 'My Order'),
      const Tab(text: 'Support'),
    ];

    final pages = [
      const HomePage(), //Text("Home"),
      const SelectCategory(), //Text("Select category"),
      const FavoriteList(), //Text("Favorite list"), //
      const MyOrders(),
      SupportPage(),
    ];

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SideTab(
          backgroundColor: backgroundColor,
          tabList: tabs,
          tabViewList: pages,
          leading: GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.getProfile());
            },
            child: CircleAvatar(
              backgroundColor: greenColor,
            ),
          ),
        ),
      ),
    );
  }
}
