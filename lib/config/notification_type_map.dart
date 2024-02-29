import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/notifcation_model.dart';
import 'package:flutter_facebook_clone/config/palette.dart';

var NotificationTypeToMessageMap = {
  NotificationType.updatePost: "posted an update"
};

var NotificationTypeToIconButtonMap = {
  NotificationType.updatePost: Container(
    height: 23,
    width: 23,
    decoration: const BoxDecoration(
      color: Palette.facebookBlue,
      shape: BoxShape.circle,
    ),
    child: IconButton(
      padding: EdgeInsets.zero,
      icon: const Icon(
        Icons.message,
        color: Colors.white,
        size: 15,
      ),
      onPressed: () {},
    ),
  ),
};
