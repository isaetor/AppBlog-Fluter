import 'package:flutter/material.dart';

class SlidingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SlidingAppBar({
    super.key,
    required this.child,
    required this.visible,
    required this.size,
  });

  final PreferredSizeWidget child;
  final bool visible;
  final double size;

  @override
  Size get preferredSize => child.preferredSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      height: visible ? size : 0,
      child: child,
    );
  }
}
