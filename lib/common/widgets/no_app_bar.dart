import 'package:flutter/material.dart';

class NoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }
  
  @override
  Size get preferredSize => Size.zero;
}
