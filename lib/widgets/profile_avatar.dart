import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final Color? backgroundColor;
  final Color? unviewedStory;
  final bool isActive;
  final bool addStory;
  final bool viewedStory;
  final double size;
  final double onlineDotSize;

  const ProfileAvatar({
    super.key,
    required this.imageUrl,
    this.backgroundColor,
    this.unviewedStory,
    this.isActive = false,
    this.addStory = false,
    this.viewedStory = false,
    this.size = 40,
    this.onlineDotSize = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor ?? Colors.black45.withOpacity(0.2),
          border: Border.all(
              color: viewedStory ? unviewedStory ?? Colors.white : Palette.facebookBlue,
              width: addStory ? 2 : 0)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: CachedNetworkImageProvider(imageUrl),
              radius: addStory ? (size/2) * 0.8 : size/2),
          isActive
              ? Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: onlineDotSize,
                    height: onlineDotSize,
                    decoration: BoxDecoration(
                      color: Palette.online,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: onlineDotSize/10,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
