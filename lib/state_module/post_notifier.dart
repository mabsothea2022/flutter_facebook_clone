import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/post_model.dart';

class PostNotifier extends ChangeNotifier {
  late Post post;
  late int _likes;
  late int _comments;
  late int _shares;
  int get likes => _likes;
  int get comments => _comments;
  int get shares => _shares;

  PostNotifier({required this.post})
      : _likes = post.likes,
        _comments = post.comments,
        _shares = post.shares;

  void likeIncrease() {
    _likes += 1;
    // print(likes);
    notifyListeners();
  }

  void likeDecrease() {
    _likes -= 1;
    // print(likes);
    notifyListeners();
  }
}
