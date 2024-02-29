import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({super.key, required this.currentUser, required this.stories});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 13),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: stories.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.fromLTRB(12, 0, 4, 0),
              child: _CreateStoryCard(
                currentUser: currentUser,
              ),
            );
          }
          final Story story = stories[index - 1];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: _StoryCard(
              story: story,
            ),
          );
        },
      ),
    );
  }
}

class _CreateStoryCard extends StatefulWidget {
  final User currentUser;
  const _CreateStoryCard({super.key, required this.currentUser});

  @override
  State<_CreateStoryCard> createState() => _CreateStoryCardState();
}

class _CreateStoryCardState extends State<_CreateStoryCard> {
  bool storyIsTapped = false;

  @override
  Widget build(BuildContext context) {
    double widgetBorderRadius = 10;
    double widgetWidth = 100;

    return Transform.scale(
      scale: storyIsTapped ? 0.95 : 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(widgetBorderRadius)),
          border: Border.all(
            color: Colors.black54,
            width: 0.5,
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(widgetBorderRadius),
                    topRight: Radius.circular(widgetBorderRadius),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: widget.currentUser.imageURL,
                    width: widgetWidth,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(widgetBorderRadius),
                        bottomRight: Radius.circular(widgetBorderRadius),
                      ),
                      color: Color(0xFFF7F8FA),
                    ),
                    width: widgetWidth,
                  ),
                )
              ],
            ),
            Positioned(
              top: 100,
              left: widgetWidth/2 - 17.5,
              child: Container(
                width: 35,
                height: 35,
                // margin: margin,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Palette.facebookBlue,
                  border: Border.all(color: Color(0xFFF7F8FA), width: 2),
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.add_sharp,
                    color: Colors.lightBlue.shade50,
                    size: 32,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Positioned(
              width: widgetWidth,
              bottom: 5,
              child: const Text(
                "Create\nstory",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    height: 1.2),
              ),
            ),
            GestureDetector(
              onTapUp: (_) {
                storyIsTapped = false;
                setState(() {});
              },
              onTapDown: (_) {
                storyIsTapped = true;
                setState(() {});
              },
              onTapCancel: () {
                storyIsTapped = false;
                setState(() {});
              },
              child: Container(
                decoration: BoxDecoration(
                  color: storyIsTapped
                      ? Colors.grey.withOpacity(0.2)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(widgetBorderRadius),
                ),
                height: double.infinity,
                width: widgetWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StoryCard extends StatefulWidget {
  final Story story;

  const _StoryCard({
    super.key,
    required this.story,
  });

  @override
  State<_StoryCard> createState() => _StoryCardState();
}

class _StoryCardState extends State<_StoryCard> {
  bool storyIsTapped = false;
  bool profileIsTapped = false;

  @override
  Widget build(BuildContext context) {
    double widgetBorderRadius = 10;
    double widgetWidth = 100;

    return Transform.scale(
      scale: storyIsTapped ? 0.95 : 1.0,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(widgetBorderRadius)),
            border: Border.all(
              color: Colors.black54,
              width: 0.5,
            )),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(widgetBorderRadius),
              child: CachedNetworkImage(
                imageUrl: widget.story.imageURL,
                height: double.infinity,
                width: widgetWidth,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: double.infinity,
              width: widgetWidth,
              decoration: BoxDecoration(
                gradient: Palette.storyGradient,
                borderRadius: BorderRadius.circular(widgetBorderRadius),
              ),
            ),
            Positioned(
              child: Container(
                margin: EdgeInsets.all(5),
                child: ProfileAvatar(
                  imageUrl: widget.story.user.imageURL,
                  isActive: widget.story.user.isActive,
                  addStory: widget.story.user.addStory,
                  viewedStory: widget.story.user.viewedStory,
                ),
              ),
            ),
            Positioned(
              width: widgetWidth,
              bottom: 0,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  widget.story.user.name,
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 10,
                    height: 1.2,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTapUp: (_) {
                storyIsTapped = false;
                setState(() {});
              },
              onTapDown: (_) {
                storyIsTapped = true;
                setState(() {});
              },
              onTapCancel: () {
                storyIsTapped = false;
                setState(() {});
              },
              child: Container(
                decoration: BoxDecoration(
                  color: storyIsTapped
                      ? Colors.grey.withOpacity(0.2)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(widgetBorderRadius),
                ),
                height: double.infinity,
                width: widgetWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
