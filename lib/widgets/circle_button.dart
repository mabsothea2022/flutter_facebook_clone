import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double? iconSize;
  final VoidCallback onPressed;
  final EdgeInsets margin;
  final double buttonSize;

  const CircleButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconSize,
    this.margin = const EdgeInsets.only(right: 8),
    this.buttonSize = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonSize,
      height: buttonSize,
      margin: margin,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(
          icon,
          color: Colors.black,
          size: iconSize,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
