import 'package:flutter/material.dart';
import 'package:instagram/screens/activity_screen.dart';
import 'package:instagram/screens/profille_screen.dart';
import 'package:instagram/screens/search_screen.dart';
import '../screens/main_screen.dart';
import '../widgets/mini_avatar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List screens = [
    MainScreen(),
    SearchScreen(),
    MainScreen(),
    ActivityScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(
              Icons.search_outlined,
            ),
            activeIcon: Icon(
              Icons.search,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.add_box_outlined),
            activeIcon: Icon(Icons.add_box),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.favorite_outline),
            activeIcon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: MiniAvatar(),
            activeIcon: CircleAvatar(
              child: Container(
                padding: EdgeInsets.all(0.6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: MiniAvatar(),
              ),
            ),
            label: '',
          ),
        ],
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: _onItemTapped,
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: _selectedIndex,
        selectedIconTheme: IconThemeData(color: Colors.white),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        type: BottomNavigationBarType.fixed,
        iconSize: 28,
      ),
    );
  }
}
