import 'package:flutter_facebook_clone/models/models.dart';

class Story {
  final User user;
  final String imageURL;
  final bool isViewed;

  const Story({
    required this.user,
    required this.imageURL,
    this.isViewed = false,
  });
}
