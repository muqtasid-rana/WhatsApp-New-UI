import 'package:flutter/material.dart';

class CallTile extends StatelessWidget {
  final String avatarUrl;
  final String name;
  final String time;
  final String callType;
  final String callStatus;
  final int callCount;

  const CallTile({
    required this.avatarUrl,
    required this.name,
    required this.time,
    required this.callType,
    required this.callStatus,
    required this.callCount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      leading: CircleAvatar(
        backgroundImage: AssetImage(avatarUrl),
        radius: 24,
      ),
      title: Text(
        name,
        style: TextStyle(
          color: callStatus == 'missed' ? Colors.red : Colors.white,
        ),
      ),
      subtitle: Row(
        children: [
          Icon(
            callStatus == 'missed' ? Icons.call_missed : Icons.call_received,
            color: callStatus == 'missed' ? Colors.red : Colors.green,
            size: 16,
          ),
          SizedBox(width: 5),
          Text(
            time,
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
      trailing: Icon(
        callType == 'voice' ? Icons.call : Icons.videocam,
        color: Colors.green,
      ),
      onTap: () {
        // Handle call tap
      },
    );
  }
}
