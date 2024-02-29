import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/config/widget_config.dart';
import 'package:flutter_facebook_clone/data/data.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

class FriendSeeAllScreen extends StatelessWidget {
  const FriendSeeAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: WidgetConfig.statusBarHeight,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    height: WidgetConfig.appBarHeight,
                    width: double.maxFinite,
                    color: Colors.white,
                  ),
                ),
                SliverToBoxAdapter(
                  child: _divider(),
                ),
                const SliverToBoxAdapter(
                  child: _friendRequestHeader(),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: friendRequests.length,
                    (context, index) {
                      final FriendRequest friendRequest = friendRequests[index];
                      return FriendRequestContainer(
                        friendRequest: friendRequest,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: WidgetConfig.appBarHeight,
            child: AppBar(
              title: const Text(
                "Friend requests",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
              centerTitle: true,
              scrolledUnderElevation: 0,
              backgroundColor: Colors.white,
              actions: [
                Row(
                  children: [
                    SizedBox(
                      // height: 20,
                      width: 30,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Icons.more_horiz),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      // height: 20,
                      width: 30,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      child: Divider(
        height: 1,
        thickness: 1,
        color: Colors.grey.shade300,
      ),
    );
  }
}

class _friendRequestHeader extends StatelessWidget {
  const _friendRequestHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
      child: Row(
        children: [
          const Text(
            "Friend requests",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: GestureDetector(
              onTap: () {},
              child: const Text(
                "Sort",
                style: TextStyle(color: Palette.facebookBlue),
              ),
            ),
          )
        ],
      ),
    );
  }
}
