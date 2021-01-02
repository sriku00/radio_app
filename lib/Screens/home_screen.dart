import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  MotionTabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        MotionTabController(initialIndex: 1, length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  List<Widget> _children = [
    Center(
      child: Text("page One"),
    ),
    Center(
      child: Text("page 2"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MotionTabBarView(
        controller: _tabController,
        children: _children,
      ),
      bottomNavigationBar: MotionTabBar(
        labels: ["Home", "Favorites"],
        initialSelectedTab: "Home",
        tabIconColor: Colors.blueAccent,
        tabSelectedColor: Colors.purpleAccent,
        onTabItemSelected: (int value) {
          print(value);
          setState(() {
            _tabController.index = value;
          });
        },
        icons: [
          Icons.home,
          Icons.favorite,
        ],
        textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
 