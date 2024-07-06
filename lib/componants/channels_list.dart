import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChannelsList extends StatelessWidget {
  final String avatarUrl;
  final String name;
  final String message;
  final Widget button;

  const ChannelsList({
    Key? key,
    required this.avatarUrl,
    required this.name,
    required this.message,
    required this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
        leading: CircleAvatar(
          radius: 24.0,
          backgroundImage: AssetImage(avatarUrl),
        ),
        title: Text(
          name,
          style: const TextStyle(color: Colors.white, fontSize: 17.0),
        ),
        subtitle: Text(
          message,
          style: const TextStyle(color: Colors.white70, fontSize: 15.0),
        ),
        trailing: button,
      ),
    );
  }
}
