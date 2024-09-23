import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge_repo/widgets/view.dart';

class CustomTabBar extends StatefulWidget {
  final bool isSelected;
  const CustomTabBar({super.key, required this.isSelected});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(children: [
        TabBar(
          indicatorColor: Colors.black.withOpacity(
            0.6,
          ),
          onTap: (index) {
            // Perform actions based on the currently selected tab index
            tabController.addListener(() {
              if (tabController.indexIsChanging) {
                switch (tabController.index) {
                  case 0:
                    index = 0;
                    // w = !isSelected;
                    setState(() {});
                    break;
                  case 1:
                    index = 1;
                    // isSelected = !isSelected;
                    setState(() {});
                    break;
                }
              }
            });
          },
          controller: tabController,
          dividerColor: Colors.black.withOpacity(
            0.6,
          ),
          tabs: [
            TabWidget(tabLabel: "History", isSelected: widget.isSelected),
            TabWidget(
                tabLabel: "Transaction Summary", isSelected: !widget.isSelected)
          ],
        ),
        ViewPage(controller: tabController),
      ]),
    );
  }
}

class TabWidget extends StatelessWidget {
  final bool isSelected;
  final String tabLabel;
  const TabWidget({
    super.key,
    required this.tabLabel,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: isSelected ? Colors.white : Colors.grey),
      width: 120,
      child: Text(
        tabLabel,
        style: TextStyle(
            color: isSelected ? Colors.black : Colors.black.withOpacity(0.6)),
      ),
    );
  }
}
