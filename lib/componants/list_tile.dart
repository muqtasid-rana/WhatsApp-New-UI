import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String avatarUrl;
  final String name;
  final String message;
  final String time;

  const ChatTile({
    Key? key,
    required this.avatarUrl,
    required this.name,
    required this.message,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
        leading: CircleAvatar(
          radius: 24.0,
          backgroundImage: AssetImage(avatarUrl), // Adjust the radius as needed
        ),
        title: Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 17.0), // Adjust the font size as needed
        ),
        subtitle: Text(
          message,
          style: TextStyle(color: Colors.white70, fontSize: 15.0), // Adjust the font size as needed
        ),
        trailing: Text(
          time,
          style: TextStyle(color: Colors.white38, fontSize: 12.0), // Adjust the font size as needed
        ),
      ),
    );
  }
}
