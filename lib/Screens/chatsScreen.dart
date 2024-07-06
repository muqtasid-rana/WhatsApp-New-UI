import 'package:flutter/material.dart';
import 'package:whatsapp_ui_new/componants/search_box.dart';
import 'package:whatsapp_ui_new/componants/app_bar.dart';
import '../componants/list_tile.dart';

class Chatsscreen extends StatefulWidget {
  const Chatsscreen({Key? key}) : super(key: key);

  @override
  State<Chatsscreen> createState() => _ChatsscreenState();
}

class _ChatsscreenState extends State<Chatsscreen> {
  final List<Map<String, String>> chats = [
    {
      'avatarUrl': 'lib/images/areeb.jpg',
      'name': 'Areeb',
      'message': 'Han yaar sai kaha',
      'time': '12:30 PM'
    },
    {
      'avatarUrl': 'lib/images/huzaifa.jpg',
      'name': 'Huzaifa',
      'message': 'Chal okay',
      'time': '11:15 AM'
    },
    {
      'avatarUrl': 'lib/images/fam.jpg',
      'name': 'Our Family',
      'message': 'www.facebook.com/asnjsbjd289',
      'time': '12:30 PM'
    },
    {
      'avatarUrl': 'lib/images/mama.jpg',
      'name': 'Mama',
      'message': 'Ok Take Care.',
      'time': '11:15 AM'
    },
    {
      'avatarUrl': 'lib/images/malinga.jpg',
      'name': 'Malinga',
      'message': 'Yaar jaldi pohoncho',
      'time': '12:30 PM'
    },
    {
      'avatarUrl': 'lib/images/muneeb.jpg',
      'name': 'Muneeb',
      'message': 'okay',
      'time': '11:15 AM'
    },
    {
      'avatarUrl': 'lib/images/bhai.jpg',
      'name': 'Bhai',
      'message': 'Jaldi Aoo',
      'time': '12:30 PM'
    },
    {
      'avatarUrl': 'lib/images/baba.jpg',
      'name': 'Baba',
      'message': 'Ok',
      'time': '11:15 AM'
    },
    {
      'avatarUrl': 'lib/images/me.jpg',
      'name': 'Muqtasid(You)',
      'message': "Ohm's Law shows the relationship..",
      'time': '11:15 AM'
    },
    // Add more chat data here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "WhatsApp",
        actions: const [
          Icon(Icons.camera_alt_outlined, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      backgroundColor: const Color(0xff091016),
      body: Column(
        children: [
          CustomSearchBox(),
          Expanded(
            child: ListView.builder(
              itemCount: chats.length + 1, // Adding 1 for the footer item
              itemBuilder: (context, index) {
                if (index == chats.length) {
                  return const Column(
                    children: [
                      Divider(
                        color: Colors.white10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.lock, color: Colors.white70, size: 12,),
                            SizedBox(width: 8),
                            Text(
                              "Your personal messages are",
                              style: TextStyle(color: Colors.white70, fontSize: 12),
                            ),
                            SizedBox(width: 4),
                            Text(
                              "end-to-end encrypted",
                              style: TextStyle(color: Colors.green, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  return ChatTile(
                    avatarUrl: chats[index]['avatarUrl']!,
                    name: chats[index]['name']!,
                    message: chats[index]['message']!,
                    time: chats[index]['time']!,
                  );
                }
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle new call action
        },
        backgroundColor: Colors.green,
        child:const Icon(Icons.message),
      ),
    );
  }
}
