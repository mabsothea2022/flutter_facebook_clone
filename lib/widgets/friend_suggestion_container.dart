import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

class FriendSuggestionContainer extends FriendRequestContainer {
  const FriendSuggestionContainer({super.key, required super.friendRequest});

  @override
  Widget buildFriendRequestHeaderWidget() {
      return Container(
      child: Row(
        children: [
          Container(
            child: Text(
              friendRequest.user.name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  @override
  Widget buildFriendReqButtons() {
    return Row(
      children: [
        FriendReqButton(
          label: "Add friend",
          backgroundColor: Palette.facebookBlue,
          foregroundColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(
          width: 4,
        ),
        FriendReqButton(
          label: "Remove",
          backgroundColor: Colors.grey.shade300,
          foregroundColor: Colors.black,
          onTap: () {},
        ),
      ],
    );
  }
}
