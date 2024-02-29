import 'package:flutter/material.dart';

class FacebookDurationLabel extends StatelessWidget {
  final Duration duration;

  const FacebookDurationLabel({super.key, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Text(
      _getDurationString(duration),
      style: TextStyle(
        fontSize: 10,
        color: Colors.black54,
        height: 0,
      ),
    );
  }

  String _getDurationString(Duration duration) {
    if (duration.inSeconds < 60) {
      return "${(duration.inSeconds).toInt()}s";
    }
    if (duration.inMinutes < 60) {
      return "${(duration.inMinutes).toInt()}m";
    }
    if (duration.inHours < 24) {
      return "${(duration.inHours).toInt()}h";
    }
    if (duration.inDays < 7) {
      return "${(duration.inDays).toInt()}d";
    }
    if (duration.inDays < 365) {
      return "${(duration.inDays / 7).toInt()}w";
    }
    return "${(duration.inDays / 365).toInt()}y";
  }
}
