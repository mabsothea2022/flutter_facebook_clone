import 'package:flutter_facebook_clone/models/models.dart';

class Post {
  final User user;
  final String caption;
  final String? imageURL;
  final Duration timeAgo;
  int likes;
  int comments;
  int shares;

  Post({
    required this.user,
    required this.caption,
    required this.timeAgo,
    this.imageURL,
    this.likes = 0,
    this.comments = 0,
    this.shares = 0
    });
}