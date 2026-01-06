
import 'package:flutter/material.dart';
import '../pages/Bible/bible_view.dart';
import '../pages/Community/community_view.dart';
import '../pages/Home/home_view.dart';
import '../resource/colors.dart';

class MainBottomNav extends StatefulWidget {
  const MainBottomNav({super.key});

  @override
  State<MainBottomNav> createState() => _MainBottomNavState();
}

class _MainBottomNavState extends State<MainBottomNav> {
  int _selectedIndex = 0;

  final pages = const [
    homeView(),
    BibleView(),
    CommunityView(),
    homeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: pages),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // 🔴 IMPORTANT
        currentIndex: _selectedIndex,
        selectedItemColor: btnBg,
        unselectedItemColor: blackColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Bible'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Community'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
