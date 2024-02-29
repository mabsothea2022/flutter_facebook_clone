import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final Text label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  // final style = ElevatedButton.styleFrom(elevation: 0, shadowColor: Colors.transparent, backgroundColor: Colors.transparent, foregroundColor: Colors.red);

  ActionButton(
      {super.key,
      required this.icon,
      required this.label,
      required this.onPressed,
      this.backgroundColor = Colors.transparent,
      this.foregroundColor = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton.icon(
        onPressed: onPressed,
        label: label,
        icon: Icon(icon),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        ),
      ),
    );
  }
}
