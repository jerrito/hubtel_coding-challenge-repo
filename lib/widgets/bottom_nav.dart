import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.greenAccent.withOpacity(0.2),
      currentIndex: 0,
      onTap: (index) {}, items: [
      navItem(Icons.home),
      navItem(Icons.send),
      navItem(Icons.bookmark_add),
      navItem(Icons.person),
    ]);
  }

 BottomNavigationBarItem navItem(IconData icon) {
    return BottomNavigationBarItem(icon: Icon(icon));
  }
}
