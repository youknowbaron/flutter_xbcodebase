import 'package:flutter/material.dart';

class DrawerIconButton extends StatelessWidget {
  const DrawerIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 22 / 7 * 2,
      child: IconButton(
        icon: const Icon(
          Icons.horizontal_split_rounded,
        ),
        // color: Theme.of(context).iconTheme.color,
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      ),
    );
  }
}
