import 'dart:core';

import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import 'side_tab_item.dart';

class SideTab extends StatefulWidget {
  const SideTab({
    Key? key,
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

class _SideTabState extends State<SideTab> with TickerProviderStateMixin {
  late List<GlobalKey> _tabKeys;
  late List<Widget> _tabs;

  @override
  void initState() {
    super.initState();
    _tabKeys = widget.tabList.map((Widget tab) => GlobalKey()).toList();
    _tabs = widget.tabList.asMap().entries.map((entity) {
      int ind = entity.key;
      Widget tab = entity.value;
      return RotatedBox(
        key: _tabKeys[ind],
        quarterTurns: 2,
        child: tab,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController =
        TabController(length: widget.tabList.length, vsync: this, initialIndex: widget.preSelectedTab);

    return Row(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: Dimension.height(40), bottom: Dimension.height(10)),
                child: widget.leading,
              ),
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 140,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: TabBar(
                      physics: const BouncingScrollPhysics(),
                      labelStyle: TextStyle(
                        fontSize: Dimension.width(14),
                        fontWeight: FontWeight.bold,
                      ),
                      labelColor: accentColor,
                      controller: tabController,
                      unselectedLabelColor: Colors.black54,
                      padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                      isScrollable: true,
                      indicator: TriangleTabIndicator(color: widget.backgroundColor),
                      tabs: _tabs,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(controller: tabController, children: widget.tabViewList),
        )
      ],
    );
  }
}
