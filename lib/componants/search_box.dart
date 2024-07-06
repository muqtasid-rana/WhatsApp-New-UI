import 'package:flutter/material.dart';

class CustomSearchBox extends StatelessWidget {
  CustomSearchBox();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade900, // Background color similar to the app bar
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(

        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(
            color: Colors.grey.shade600,
          ),
          prefixIcon: Icon(Icons.search, color: Colors.grey.shade600),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 10.0),
        ),
        style: TextStyle(color: Colors.white), // Text color inside the search box
      ),
    );
  }
}
