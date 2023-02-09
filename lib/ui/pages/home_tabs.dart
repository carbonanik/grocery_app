import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/ui/pages/select_category.dart';

import '../../../../main.dart';
import '../../util/dimension.dart';
import '../widget/side_tab.dart';
import 'home_page.dart';

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
      const HomePage(), //Text("Home"),
      const SelectCategory(), //Text("Select category"),
      const Text("Favorite list"), //FavoriteList(),
      const Text("My Order"), //MyOrders(),
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
          leading: CircleAvatar(
            backgroundColor: greenColor,
          ),
        ),
      ),
    );
  }
}
