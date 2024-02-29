import 'package:flutter_facebook_clone/models/models.dart';

enum NotificationType {
  updatePost,
  linkPost,
  videoPost,
  sharedPost,
  likeComment,
  reactToComment,
  mention,
}

class NotificationModel {
  final Post post;
  final User user;
  final NotificationType type;
  final Duration duration;
  final String message;
  final bool checked;

  NotificationModel({
    required this.post,
    required this.type,
    this.checked = false,
  }) : user = post.user, duration = post.timeAgo, message = post.caption;
}
