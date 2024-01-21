import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/route/app_router.dart';
// import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/category_list_page.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/support/support.dart';
import 'package:instant_grrocery_delivery/ui/widget/side_tab.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/favorite_list_page.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/home/home_page.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/order/my_orders_page.dart';

@RoutePage()
class MainTabsPage extends StatelessWidget {
  const MainTabsPage({super.key});

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
              // Get.toNamed(RouteHelper.getProfile());
              AutoRouter.of(context).push(const ViewProfileRoute());
            },
            child: const CircleAvatar(
              backgroundColor: backgroundColor,
              child: Icon(Icons.person, color: foregroundColor),
            ),
          ),
        ),
      ),
    );
  }
}
