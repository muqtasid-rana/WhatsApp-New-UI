import 'package:flutter/material.dart';
import 'package:whatsapp_ui_new/Screens/chatsScreen.dart';
import 'package:whatsapp_ui_new/screens/communities.dart';
import 'package:whatsapp_ui_new/screens/updates.dart';
import 'package:whatsapp_ui_new/screens/calls.dart';
import '../componants/bottom_nav_bar.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Chatsscreen(),
    UpdatesScreen(),
    CommunitiesScreen(),
    CallsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:const Color(0xff091016),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
