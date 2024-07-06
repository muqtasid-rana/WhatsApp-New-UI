import 'package:flutter/material.dart';
import 'package:whatsapp_ui_new/screens/chats.dart';
import 'package:whatsapp_ui_new/screens/updates.dart';
import 'package:whatsapp_ui_new/screens/communities.dart';
import 'package:whatsapp_ui_new/screens/calls.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WhatsApp UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: const Color(0xff091016),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Chats(),
        '/updates': (context) => const UpdatesScreen(),
        '/communities': (context) => const CommunitiesScreen(),
        '/calls': (context) => const CallsScreen(),
      },
    );
  }
}
