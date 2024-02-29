import 'package:flutter_facebook_clone/models/models.dart';

class FriendRequest {
  final User user;
  final int mutualFriendsAmount;
  final Duration requestDuration;

  FriendRequest({
    required this.user,
    required this.mutualFriendsAmount,
    this.requestDuration = const Duration(),
  });
}
