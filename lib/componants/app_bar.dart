import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  final PreferredSizeWidget? bottom;


  CustomAppBar({
    required this.title,
    this.actions,
    this.leading,
    this.bottom,

  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
      actions: actions,
      leading: leading,
      bottom: bottom,
      backgroundColor: Color(0xff091016), // Custom color
      elevation: 0, // No shadow
      flexibleSpace: Container(

      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(bottom == null ? kToolbarHeight : kToolbarHeight + bottom!.preferredSize.height);
}
