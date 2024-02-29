import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_facebook_clone/config/widget_config.dart';
import 'package:flutter_facebook_clone/screens/friend_seeall_screen.dart';
import 'package:flutter_facebook_clone/screens/screens.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

class FrontScreen extends StatefulWidget {
  const FrontScreen({super.key});

  @override
  State<FrontScreen> createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  int _currentIndex = 0;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        showAppBar = false;
        setState(() {});
      } else {
        showAppBar = true;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildBottom(),
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: _currentIndex,
      children: [
        HomeScreen(
          scrollController: _scrollController,
        ),
        Container(
          color: Colors.blue,
        ),
        Navigator(
          onGenerateRoute: (settings) {
            Widget page = const FriendScreen();
            if (settings.name == "seeAllPage") page = const FriendSeeAllScreen();
            // return MaterialPageRoute(
            //   builder: (_) => page,
            // );
            return CustomPageRoute(child: page);
          },
        ),
        Container(
          color: Colors.yellow,
        ),
        const NotificationScreen(),
        const MenuScreen(),
      ],
    );
  }

  bool showAppBar = true;

  Icon showIcon(IconData icon) {
    return Icon(
      icon,
      size: showAppBar ? 24 : 0,
    );
  }

  String showLabel(String label) {
    return showAppBar ? label : "";
  }

  Widget _buildBottom() {
    // TextStyle textStyle = TextStyle(fontSize: 12);

    return AnimatedContainer(
      curve: Curves.easeInOutSine,
      height: showAppBar ? WidgetConfig.bottomNavigationBarHeight : 0,
      duration: const Duration(milliseconds: 150),
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blueAccent.shade400,
        selectedLabelStyle:
            const TextStyle(overflow: TextOverflow.visible, fontSize: 8),
        unselectedLabelStyle:
            const TextStyle(overflow: TextOverflow.visible, fontSize: 8),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.video_stable), label: "Video"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.people), label: "Friends"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shop), label: "Marketplace"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(
              icon: showIcon(Icons.menu), label: showLabel("Menu"))
        ],
      ),
    );
  }
}
