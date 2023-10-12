import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/category_list_page.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/support/support.dart';

import '../../../../../main.dart';
import '../../widget/side_tab.dart';
import 'tab_views/favorite_list_page.dart';
import 'tab_views/home/home_page.dart';
import 'tab_views/order/my_orders_page.dart';

class MainTabs extends StatelessWidget {
  const MainTabs({super.key});

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
      const HomePage(),
      const CategoryListPage(),
      const FavoriteListPage(),
      const MyOrdersPage(),
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
            child: const CircleAvatar(
              backgroundColor: accentColor,
            ),
          ),
        ),
      ),
    );
  }
}
