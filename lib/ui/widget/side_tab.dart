import 'dart:core';

import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import 'side_tab_item.dart';


class SideTab extends StatefulWidget {
  const SideTab({Key? key,
    required this.backgroundColor,
    required this.tabList,
    required this.tabViewList,
    this.leading,
    this.preSelectedTab = 0,
  }) : super(key: key);

  final Color backgroundColor;
  final List<Tab> tabList;
  final List<Widget> tabViewList;
  final Widget? leading;
  final int preSelectedTab;

  @override
  State<SideTab> createState() => _SideTabState();
}

class _SideTabState extends State<SideTab> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: widget.tabList.length, vsync: this, initialIndex: widget.preSelectedTab);

    return Row(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: Dimension.height(40),
                width: Dimension.width(40),
                margin: EdgeInsets.only(top: Dimension.height(40), bottom: Dimension.height(10)),
                child: widget.leading,
              ),
              Container(
                height: Dimension.screenHeight - Dimension.height(130),
                width: Dimension.width(60),
                color: Colors.white,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: TabBar(
                    labelStyle: TextStyle(fontSize: Dimension.width(14), fontWeight: FontWeight.bold),
                    labelColor: greenColor,
                    controller: tabController,
                    unselectedLabelColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                    isScrollable: true,
                    indicator: TriangleTabIndicator(color: widget.backgroundColor),
                    tabs: widget.tabList.map((e) {
                      return RotatedBox(
                        quarterTurns: 2,
                        child: e,
                      );
                    }).toList()
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: widget.tabViewList
          ),
        )
      ],
    );
  }
}
