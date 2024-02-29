import 'package:flutter/material.dart';

class MenuExpansionTileContainer extends StatefulWidget {
  final String text;
  final Icon leadingIcon;
  final List<Widget> children;

  const MenuExpansionTileContainer({
    super.key,
    required this.text,
    required this.leadingIcon,
    required this.children,
  });

  @override
  State<MenuExpansionTileContainer> createState() =>
      _MenuExpansionTileContainerState();
}

class _MenuExpansionTileContainerState
    extends State<MenuExpansionTileContainer> {
  bool _customActive = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Theme(
            data: Theme.of(context).copyWith(
              backgroundColor: Colors.transparent,
              dividerColor: Colors.transparent,
              listTileTheme: ListTileTheme.of(context)
                  .copyWith(dense: true, minVerticalPadding: 5, ),
            ),
            child: ExpansionTile(
              backgroundColor: Colors.transparent,
              collapsedBackgroundColor: Colors.transparent,
              leading: widget.leadingIcon,
              title: Text(
                widget.text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: _customActive ? FontWeight.bold : FontWeight.w500,
                  letterSpacing: 0,
                ),
              ),
              children: widget.children,
              onExpansionChanged: (bool expanded) {
                _customActive = !_customActive;
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MenuExpansionTileButton extends StatefulWidget {
  final Icon leadingIcon;
  final String title;
  final VoidCallback onTap;

  const MenuExpansionTileButton({
    super.key,
    required this.leadingIcon,
    required this.title,
    required this.onTap,
  });

  @override
  State<MenuExpansionTileButton> createState() =>
      _MenuExpansionTileButtonState();
}

class _MenuExpansionTileButtonState extends State<MenuExpansionTileButton> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
      child: GestureDetector(
        onTapDown: (_) {
          isTapped = true;
          setState(() {});
        },
        onTapUp: (_) {
          isTapped = false;
          setState(() {});
          widget.onTap();
        },
        onTapCancel: () {
          isTapped = false;
          setState(() {});
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
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
              child: ListTile(
                leading: widget.leadingIcon,
                title: Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 50,
              decoration: BoxDecoration(
                color: isTapped
                    ? Colors.grey.withOpacity(0.2)
                    : Colors.transparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
