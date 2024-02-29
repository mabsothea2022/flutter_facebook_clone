import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/config/widget_config.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';
import 'package:flutter_facebook_clone/data/data.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool seeMoreTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        toolbarHeight: WidgetConfig.statusBarHeight,
        backgroundColor: Colors.grey.shade200,
        scrolledUnderElevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: FacebookScreenAppBar(
              title: "Menu",
              backgroundColor: Colors.grey.shade200,
            ),
          ),
          SliverToBoxAdapter(
            child: _buildMenuHeader(),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Text(
                "Your shortcuts",
                style: TextStyle(
                  height: 0,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: _buildShortcutsListView(),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.2 / 1,
              ),
              delegate: _buildMenuButtonListDelegate(
                  seeMoreTapped ? shortcuts.length : 8),
            ),
          ),
          SliverToBoxAdapter(
            child: FacebookWideLabelButtonContainer(
              label: seeMoreTapped ? "See less" : "See more",
              onTap: () {
                seeMoreTapped = !seeMoreTapped;
                setState(() {});
              },
            ),
          ),
          SliverToBoxAdapter(
            child: _divider(),
          ),
          // SliverToBoxAdapter(
          //   child: ExpandWidgetContainer(),
          // )
          SliverToBoxAdapter(
            child: MenuExpansionTileContainer(
              leadingIcon: const Icon(
                Icons.help,
                size: 30,
              ),
              text: 'Help & Support',
              children: [
                MenuExpansionTileButton(
                  leadingIcon: const Icon(Icons.healing),
                  title: "Help Center",
                  onTap: () {},
                ),
                MenuExpansionTileButton(
                  leadingIcon: const Icon(Icons.inbox),
                  title: "Support Inbox",
                  onTap: () {},
                ),
                MenuExpansionTileButton(
                  leadingIcon: const Icon(Icons.warning),
                  title: "Report a problem",
                  onTap: () {},
                ),
                MenuExpansionTileButton(
                  leadingIcon: const Icon(Icons.book),
                  title: "Terms & Policies",
                  onTap: () {},
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: _divider(),
          ),
          SliverToBoxAdapter(
            child: MenuExpansionTileContainer(
              leadingIcon: const Icon(
                Icons.settings,
                size: 30,
              ),
              text: 'Settings & privacy',
              children: [
                MenuExpansionTileButton(
                  leadingIcon: const Icon(Icons.person),
                  title: "Settings",
                  onTap: () {},
                ),
                MenuExpansionTileButton(
                  leadingIcon: const Icon(Icons.lock),
                  title: "Privary shortcuts",
                  onTap: () {},
                ),
                MenuExpansionTileButton(
                  leadingIcon: const Icon(Icons.timer),
                  title: "Your time on facebook",
                  onTap: () {},
                ),
                MenuExpansionTileButton(
                  leadingIcon: const Icon(Icons.devices),
                  title: "Device requests",
                  onTap: () {},
                ),
                MenuExpansionTileButton(
                  leadingIcon: const Icon(Icons.tv),
                  title: "Recent ad activity",
                  onTap: () {},
                ),
                MenuExpansionTileButton(
                  leadingIcon: const Icon(Icons.wifi),
                  title: "Mobile Center",
                  onTap: () {},
                ),
                MenuExpansionTileButton(
                  leadingIcon: const Icon(Icons.credit_card),
                  title: "Orders and payments",
                  onTap: () {},
                ),
                MenuExpansionTileButton(
                  leadingIcon: const Icon(Icons.link),
                  title: "Link history",
                  onTap: () {},
                ),
                MenuExpansionTileButton(
                  leadingIcon: const Icon(Icons.dark_mode),
                  title: "Dark Mode",
                  onTap: () {},
                ),
                MenuExpansionTileButton(
                  leadingIcon: const Icon(Icons.web),
                  title: "App language",
                  onTap: () {},
                ),
                MenuExpansionTileButton(
                  leadingIcon: const Icon(Icons.phone),
                  title: "Cellular data use",
                  onTap: () {},
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: _divider(),
          ),
          SliverToBoxAdapter(
            child: MenuExpansionTileContainer(
              leadingIcon: Icon(
                MdiIcons.facebook,
                size: 30,
              ),
              text: 'Also from Meta',
              children: [
                MenuExpansionTileButton(
                  leadingIcon: Icon(MdiIcons.instagram),
                  title: "Instagram",
                  onTap: () {},
                ),
                MenuExpansionTileButton(
                  leadingIcon: Icon(MdiIcons.whatsapp),
                  title: "WhatsApp",
                  onTap: () {},
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: FacebookWideLabelButtonContainer(
              label: "Log out",
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      child: Divider(
        height: 0.5,
        thickness: 0.5,
        color: Colors.grey.shade400,
      ),
    );
  }

  Widget _buildMenuHeader() {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.maxFinite,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              spreadRadius: 1,
              blurRadius: 10,
            )
          ],
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 13,
        ),
        child: Stack(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProfileAvatar(
                    imageUrl: currentUser.imageURL,
                    size: 38,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    currentUser.name,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  CircleButton(
                    icon: Icons.arrow_drop_down,
                    buttonSize: 28,
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildShortcutsListView() {
    return Container(
      height: 115,
      padding: const EdgeInsets.symmetric(vertical: 13),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            width: 60,
            height: double.maxFinite,
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            spreadRadius: 1,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: ProfileAvatar(
                        imageUrl: profileShortcuts[index]["imageURL"] ?? "",
                        size: 55,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      profileShortcuts[index]["label"] ?? "",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 9,
                        color: Colors.black54,
                        height: 1.2,
                      ),
                    )
                  ],
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Container(
                      width: 12,
                      padding: const EdgeInsets.all(1),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Palette.facebookBlue,
                      ),
                      child: const Icon(
                        Icons.people,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  SliverChildDelegate _buildMenuButtonListDelegate(int childCount) {
    return SliverChildBuilderDelegate(childCount: childCount, (context, index) {
      return BuildMenuButtonDelegate(
          icon: shortcuts[index]["icon"] as Icon,
          label: shortcuts[index]["label"] as String);
    });

    // return SliverChildListDelegate([
    //   _buildMenuButtonDelegate(
    //       Icon(Icons.lock_clock, color: Palette.facebookBlue), "Memories"),
    //   _buildMenuButtonDelegate(
    //       Icon(Icons.bookmark, color: Palette.facebookBlue), "Saved"),
    //   _buildMenuButtonDelegate(
    //       Icon(Icons.groups, color: Palette.facebookBlue), "Groups"),
    //   _buildMenuButtonDelegate(
    //       Icon(Icons.videocam, color: Palette.facebookBlue), "Videos"),
    //   _buildMenuButtonDelegate(
    //       Icon(Icons.storefront, color: Palette.facebookBlue), "Marketplace"),
    //   _buildMenuButtonDelegate(
    //       Icon(Icons.people, color: Palette.facebookBlue), "Friends"),
    //   _buildMenuButtonDelegate(
    //       Icon(Icons.feed, color: Palette.facebookBlue), "Feeds"),
    //   _buildMenuButtonDelegate(
    //       Icon(Icons.calendar_today, color: Palette.facebookBlue), "Events"),
    // ]);
  }
}

class BuildMenuButtonDelegate extends StatefulWidget {
  final Icon icon;
  final String label;
  const BuildMenuButtonDelegate(
      {super.key, required this.icon, required this.label});

  @override
  State<BuildMenuButtonDelegate> createState() =>
      _BuildMenuButtonDelegateState();
}

class _BuildMenuButtonDelegateState extends State<BuildMenuButtonDelegate> {
  final _key = GlobalKey();
  bool isTapped = false;
  double containerWidth = 0;
  double containerHeight = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        containerHeight = _key.currentContext!.size!.height;
        containerWidth = _key.currentContext!.size!.width;
        isTapped = true;
        setState(() {});
      },
      onTapUp: (_) {
        isTapped = false;
        setState(() {});
      },
      onTapCancel: () {
        isTapped = false;
        setState(() {});
      },
      child: Stack(
        children: [
          Container(
            key: _key,
            width: double.maxFinite,
            margin: const EdgeInsets.fromLTRB(4, 0, 4, 8),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  spreadRadius: 1,
                  blurRadius: 10,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.green,
                  padding: const EdgeInsets.all(1),
                  child: widget.icon,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  widget.label,
                  style: const TextStyle(
                    fontSize: 11,
                    height: 0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Container(),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: containerWidth == 0 ? 0 : containerWidth - 8,
            height: containerHeight == 0 ? 0 : containerHeight - 8,
            decoration: BoxDecoration(
              color:
                  isTapped ? Colors.grey.withOpacity(0.2) : Colors.transparent,
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class Item {
//   String headerText;
//   String expandedText;
//   bool isExpanded;

//   Item({
//     required this.headerText,
//     required this.expandedText,
//     this.isExpanded = false,
//   });
// }

// class ExpandWidgetContainer extends StatefulWidget {
//   const ExpandWidgetContainer({super.key});

//   @override
//   State<ExpandWidgetContainer> createState() => _ExpandWidgetContainerState();
// }

// class _ExpandWidgetContainerState extends State<ExpandWidgetContainer> {
//   final List<Item> _data = List<Item>.generate(10, (int index) {
//     return Item(
//       headerText: 'Item $index',
//       expandedText: 'This is Item $index',
//     );
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: ExpansionPanelList(
//         expandedHeaderPadding: EdgeInsets.zero,
//         materialGapSize: 0,
//         elevation: 0,
//         expansionCallback: (int index, bool isExpanded) {
//           setState(() {
//             _data[index].isExpanded = !_data[index].isExpanded;
//           });
//           print(_data[index].isExpanded);
//           print(isExpanded);
//         },
//         children: _data.map<ExpansionPanel>((Item item) {
//           return ExpansionPanel(
//             headerBuilder: (BuildContext context, bool isExpanded) {
//               return ListTile(
//                 title: Text(item.headerText),
//               );
//             },
//             body: Container(
//               child: Text(item.expandedText),
//             ),
//             isExpanded: item.isExpanded,
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
