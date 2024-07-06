import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  CustomBottomNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_outlined),
          activeIcon: Icon(Icons.chat),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.update),
          label: 'Updates',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_alt_outlined),
          activeIcon:Icon(Icons.people),
          label: 'Communities',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call_outlined),
          activeIcon: Icon(Icons.call),
          label: 'Calls',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.green.shade200, // Color for the selected item
      unselectedItemColor: Colors.white, // Color for the unselected items
      backgroundColor: Color(0xff091016), // Background color of the bottom bar
      onTap: onItemTapped,
      type: BottomNavigationBarType.fixed, // Fixes the position of items
      showUnselectedLabels: true, // Show labels for unselected items
      selectedFontSize: 14.0, // Font size for the selected item
      unselectedFontSize: 12.0, // Font size for unselected items
      iconSize: 30.0, // Size of the icons
    );
  }
}
