import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({super.key, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                ProfileAvatar(
                  imageUrl: currentUser.imageURL,
                ),
                // CircleAvatar(
                //   backgroundColor: Colors.grey,
                //   backgroundImage:
                //       CachedNetworkImageProvider(currentUser.imageURL),
                // ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: "What\'s on your mind today?",
                        hintStyle: TextStyle(color: Colors.black87, fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.photo_library, ),
                  onPressed: () {},
                  color: Colors.lightGreen,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
