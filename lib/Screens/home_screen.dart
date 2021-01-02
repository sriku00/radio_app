import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  ontap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
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
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Color.fromRGBO(42, 85, 210, 1),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white10,
        showUnselectedLabels: false,
        items: [
          _bottomNavItem(
            Icons.home,
            "Home",
          ),
          _bottomNavItem(Icons.favorite, "Favorite"),
        ], 
        onTap: ontap,
      ),
    );
  }
}

// Bottom Navigation Bar Items

_bottomNavItem(IconData icon, String title) {
  return BottomNavigationBarItem(
      icon: new Icon(
        icon,
        size: 36,
        color: Color.fromRGBO(128, 0, 0, 0.5),
      ),
      activeIcon: new Icon(
        icon,
        size: 50,
        color: Color.fromRGBO(128, 0, 0, 1),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ));
}
