import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/screens/comment_screen.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';
import 'package:flutter_facebook_clone/config/notification_type_map.dart';

class NotificationContainer extends StatefulWidget {
  final NotificationModel notification;

  NotificationContainer({super.key, required this.notification});

  @override
  State<NotificationContainer> createState() => _NotificationContainerState();
}

class _NotificationContainerState extends State<NotificationContainer> {
  final _key = GlobalKey();
  bool isTapped = false;
  double containerHeight = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTapDown: (_) {
            containerHeight = _key.currentContext!.size!.height;
            isTapped = true;
            setState(() {});
          },
          onTapUp: (_) {
            isTapped = false;
            setState(() {});
            Navigator.of(context).push(CustomPageRoute(
                child: CommentScreen(
              post: widget.notification.post,
            )));
          },
          onTapCancel: () {
            isTapped = false;
            setState(() {});
          },
          child: Container(
            key: _key,
            padding: EdgeInsets.symmetric(vertical: 8),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  child: Stack(
                    children: [
                      Container(
                        width: 65,
                        padding: EdgeInsets.only(right: 5),
                        child: ProfileAvatar(
                          imageUrl: widget.notification.user.imageURL,
                          size: 60,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: NotificationTypeToIconButtonMap[
                                widget.notification.type] ??
                            SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: widget.notification.user.name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    " ${NotificationTypeToMessageMap[widget.notification.type]!}: \"${widget.notification.message}\"",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: SizedBox(
                          height: 4,
                        ),
                      ),
                      Container(
                        child: FacebookDurationLabel(
                          duration: widget.notification.duration,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 25,
                  color: Colors.white,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.more_horiz),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.grey.withOpacity(0.2),
          width: double.maxFinite,
          height: isTapped ? containerHeight : 0,
        ),
      ],
    );
  }
}
