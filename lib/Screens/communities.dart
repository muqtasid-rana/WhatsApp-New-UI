import 'package:flutter/material.dart';

import '../componants/app_bar.dart';

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Communities",
        actions: const [
          Icon(Icons.camera_alt_outlined, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.more_vert, color: Colors.white),
          SizedBox(width: 5,)
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Image at the top
            Image.asset(
              'lib/images/ww.jpg', // Replace with your image path
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            // Title
            const Text(
              "Stay connected with a community",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            // Description
            const Text(
              "Communities bring members together in topic-based groups, and make it easy to get admin announcements. Any community you’re added to will appear here.",
              style: TextStyle(
                color: Colors.white70, fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // See example communities
            GestureDetector(
              onTap: () {
                // Handle tap
              },
              child: const Text(
                "See example communities >",
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Start your community button
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.green, // Text color
                padding: const EdgeInsets.symmetric(
                  horizontal: 130,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child:const Text(
                "Start your community",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}