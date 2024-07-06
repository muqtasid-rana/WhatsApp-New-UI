import 'package:flutter/material.dart';

import '../componants/app_bar.dart';
import '../componants/call_tile.dart'; // Assuming you have a custom widget for the call list tile

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  final List<Map<String, dynamic>> calls = [
    {
      'avatarUrl': 'lib/images/baba.jpg',
      'name': 'Baba',
      'time': 'Today, 9:30 PM',
      'callType': 'voice', // can be 'voice' or 'video'
      'callStatus': 'missed', // can be 'missed' or 'received'
      'callCount': 1
    },
    {
      'avatarUrl': 'lib/images/huzaifa.jpg',
      'name': 'Huzaifa',
      'time': 'Today, 3:15 PM',
      'callType': 'video',
      'callStatus': 'received',
      'callCount': 2
    },
    {
      'avatarUrl': 'lib/images/huzaifa.jpg',
      'name': 'Huzaifa',
      'time': 'Today, 3:08 PM',
      'callType': 'video',
      'callStatus': 'missed',
      'callCount': 2
    },
    {
      'avatarUrl': 'lib/images/mama.jpg',
      'name': 'Mama',
      'time': 'Today, 1:47 PM',
      'callType': 'voice',
      'callStatus': 'missed',
      'callCount': 3
    },
    {
      'avatarUrl': 'lib/images/huzaifa.jpg',
      'name': 'Huzaifa',
      'time': 'Today, 11:02 AM',
      'callType': 'voice',
      'callStatus': 'received',
      'callCount': 1
    },
    {
      'avatarUrl': 'lib/images/malinga.jpg',
      'name': 'malinga',
      'time': 'Today, 10:58 AM',
      'callType': 'voice',
      'callStatus': 'missed',
      'callCount': 1
    },
    {
      'avatarUrl': 'lib/images/baba.jpg',
      'name': 'Baba',
      'time': 'Yesterday, 10:40 PM',
      'callType': 'voice',
      'callStatus': 'missed',
      'callCount': 2
    },
    {
      'avatarUrl': 'lib/images/bhai.jpg',
      'name': 'Bhai',
      'time': 'Yesterday, 9:00 PM',
      'callType': 'voice',
      'callStatus': 'received',
      'callCount': 1
    },
    {
      'avatarUrl': 'lib/images/mama.jpg',
      'name': 'Mama',
      'time': 'Yesterday, 9:00 PM',
      'callType': 'voice',
      'callStatus': 'received',
      'callCount': 1
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Calls",
        actions: const [
          Icon(Icons.camera_alt_outlined, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.more_vert, color: Colors.white),
          SizedBox(width: 5),
        ],
      ),
      backgroundColor: const Color(0xff091016),
      body: ListView.builder(
        itemCount: calls.length + 2, // Adding 2 for the header and "Recent" text
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Padding(
              padding: EdgeInsets.all(13.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.link, color: Colors.black, size: 30),
                    radius: 24,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create call link",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "Share a link for your WhatsApp call",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            );
          } else if (index == 1) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Recent', style: TextStyle(color: Colors.white)),
            );
          } else {
            return CallTile(
              avatarUrl: calls[index - 2]['avatarUrl']!, // Adjust index for calls list
              name: calls[index - 2]['name']!,
              time: calls[index - 2]['time']!,
              callType: calls[index - 2]['callType']!,
              callStatus: calls[index - 2]['callStatus']!,
              callCount: calls[index - 2]['callCount']!,
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle new call action
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add_ic_call),
      ),
    );
  }
}
