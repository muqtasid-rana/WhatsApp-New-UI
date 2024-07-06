import 'package:flutter/material.dart';

class HorListTile extends StatelessWidget {
  final String image;
  final String text;

  const HorListTile({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10.0),
          child: Container(
            width: 70.0, // Adjust the width as needed
            height: 70.0, // Adjust the height as needed
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.green, width: 2), // Green stroke
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0), // Adjust the padding as needed
              child: CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 30,
              ),
            ),
          )

        ),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
