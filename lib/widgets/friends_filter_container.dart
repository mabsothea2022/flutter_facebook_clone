import 'package:flutter/material.dart';

class FriendsFilterContainer extends StatelessWidget {
  const FriendsFilterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 5, 0, 15),
          height: 55,
          color: Colors.white,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: 10,
              ),
              _CreateFriendFilterButton(
                label: Text(
                  "Suggestions",
                  style: TextStyle(fontSize: 12),
                ),
                onPressed: () {},
              ),
              _CreateFriendFilterButton(
                label: Text(
                  "Your friends",
                  style: TextStyle(fontSize: 12),
                ),
                onPressed: () {},
              ),
              _CreateFriendFilterButton(
                label: Text(
                  "Close Friends",
                  style: TextStyle(fontSize: 12),
                ),
                onPressed: () {},
              ),
              SizedBox(width: 20,)
            ],
          ),
        ),
      ],
    );
  }
}

class _CreateFriendFilterButton extends StatefulWidget {
  final Text label;
  final VoidCallback onPressed;

  const _CreateFriendFilterButton(
      {super.key, required this.label, required this.onPressed});

  @override
  State<_CreateFriendFilterButton> createState() =>
      _CreateFriendFilterButtonState();
}

class _CreateFriendFilterButtonState extends State<_CreateFriendFilterButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 0),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: widget.label,
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.grey.shade300,
            foregroundColor: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 12)),
      ),
    );
  }
}
