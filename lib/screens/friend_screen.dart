import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/config/widget_config.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';
import 'package:flutter_facebook_clone/data/data.dart';
import 'package:flutter_facebook_clone/models/models.dart';

class FriendScreen extends StatefulWidget {
  const FriendScreen({super.key});

  @override
  State<FriendScreen> createState() => _FriendScreenState();
}

class _FriendScreenState extends State<FriendScreen> {
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
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: WidgetConfig.appBarHeight,
                    width: double.maxFinite,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: FriendsFilterContainer(),
                ),
                SliverToBoxAdapter(
                  child: _divider(),
                ),
                const SliverToBoxAdapter(
                  child: _FriendRequestHeader(),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: friendRequests.length,
                    // childCount: 5,
                    (context, index) {
                      // if (index > friendRequests.length-1) {
                      //   return SizedBox.shrink();
                      // }
                      final FriendRequest friendRequest = friendRequests[index];
                      return FriendRequestContainer(
                        friendRequest: friendRequest,
                      );
                    },
                  ),
                ),
                SliverToBoxAdapter(
                  child: FacebookWideLabelButtonContainer(
                    label: "See all",
                    onTap: () {
                      Navigator.pushNamed(context, "seeAllPage");
                    },
                  ),
                ),
                SliverToBoxAdapter(
                  child: _divider(),
                ),
                const SliverToBoxAdapter(
                  child: _FriendSuggestionHeader(),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: friendSuggestions.length,
                    (context, index) {
                      final FriendRequest friendRequest =
                          friendSuggestions[index];
                      return FriendSuggestionContainer(
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
            child: FacebookScreenAppBar(
              title: "Friends",
              actions: [
                CircleButton(
                  icon: Icons.search,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Divider(
        height: 1,
        thickness: 1,
        color: Colors.grey.shade300,
      ),
    );
  }

  Widget _seeAllButton() {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.maxFinite,
      // height: 20,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "seeAllPage");
        },
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: const Text(
            "See all",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}

class _FriendRequestHeader extends StatelessWidget {
  const _FriendRequestHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
      child: Row(
        children: [
          const Text(
            "Friend requests",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "seeAllPage");
            },
            child: const Text(
              "See all",
              style: TextStyle(color: Palette.facebookBlue),
            ),
          ),
        ],
      ),
    );
  }
}

class _FriendSuggestionHeader extends StatelessWidget {
  const _FriendSuggestionHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
      child: const Row(
        children: [
          Text(
            "People you may know",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
