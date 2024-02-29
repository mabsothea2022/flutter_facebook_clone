import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

import 'package:flutter_facebook_clone/data/data.dart';

class FriendRequestContainer extends StatelessWidget {
  final FriendRequest friendRequest;

  const FriendRequestContainer({super.key, required this.friendRequest});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileAvatar(
            imageUrl: friendRequest.user.imageURL,
            size: 85,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: SizedBox(
              height: 88,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildFriendRequestHeaderWidget(),
                  const SizedBox(
                    height: 5,
                  ),
                  buildMutualFriendsWidget(),
                  const Spacer(),
                  buildFriendReqButtons(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @protected
  Widget buildFriendRequestHeaderWidget() {
    return Container(
      child: Row(
        children: [
          Container(
            child: Text(
              friendRequest.user.name,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          const Spacer(),
          FacebookDurationLabel(duration: friendRequest.requestDuration),
        ],
      ),
    );
  }

  @protected
  Widget buildMutualFriendsWidget() {
    return Row(
      children: [
        Container(
          color: Colors.white,
          width: 42,
          height: 24,
          child: Stack(
            children: [
              Positioned(
                left: 18,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.white)),
                  child: ProfileAvatar(
                    imageUrl: onlineUsers[1].imageURL,
                    size: 20,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.white)),
                child: ProfileAvatar(
                  imageUrl: onlineUsers[0].imageURL,
                  size: 20,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          "${friendRequest.mutualFriendsAmount} mutual friends",
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        )
      ],
    );
  }

  @protected
  Widget buildFriendReqButtons() {
    return Row(
      children: [
        FriendReqButton(
          label: "Confirm",
          backgroundColor: Palette.facebookBlue,
          foregroundColor: Colors.white,
          onTap: () {
            // print("Confirmed");
          },
        ),
        const SizedBox(
          width: 4,
        ),
        FriendReqButton(
          label: "Delete",
          backgroundColor: Colors.grey.shade300,
          foregroundColor: Colors.black,
          onTap: () {},
        ),
      ],
    );
  }
}

class FriendReqButton extends StatefulWidget {
  final String label;
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback onTap;

  const FriendReqButton({
    super.key,
    required,
    required this.label,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.onTap,
  });

  @override
  State<FriendReqButton> createState() => _FriendReqButtonState();
}

class _FriendReqButtonState extends State<FriendReqButton> {
  bool isTap = false;
  double widgetHeight = 0;
  final _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTapDown: (_) {
          widget.onTap();
          isTap = true;
          widgetHeight = _key.currentContext!.size!.height;
          setState(() {});
        },
        onTapUp: (_) {
          isTap = false;
          setState(() {});
        },
        onTapCancel: () {
          isTap = false;
          setState(() {});
        },
        child: Transform.scale(
          scale: isTap ? 0.98 : 1,
          child: Stack(
            children: [
              Container(
                key: _key,
                width: double.infinity,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: widget.backgroundColor,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: Text(
                  widget.label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: widget.foregroundColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: widgetHeight,
                decoration: BoxDecoration(
                    color: isTap ? Colors.black.withOpacity(0.2) : Colors.transparent,
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
