import 'package:flutter/material.dart';
import 'package:heartsleeve/pages.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    WritePage(),
    DiscoverPage(),
    BookmarksPage(),
    MyAccountPage()
  ];

  Widget child = Container();

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: onTappedBar,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/posts.png"),
                ),
                label: 'dashboard',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/write.png")),
                label: 'write',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/discover.png")),
                label: 'discover',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/bookmarked.png")),
                label: 'bookmarks',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/profile.png")),
                label: 'account',
              ),
            ],
            backgroundColor: Color.fromRGBO(106, 65, 98, 1),
            selectedItemColor: Color.fromRGBO(243, 157, 182, 1),
            unselectedItemColor: Color.fromRGBO(254, 250, 250, 1),
            selectedFontSize: 11.0,
            unselectedFontSize: 11.0,
            type: BottomNavigationBarType.fixed));
  }
}

