import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../message_page/message_page.dart';

class CustomNavBar extends StatefulWidget {
  final int index;
  const CustomNavBar({super.key, required this.index});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: widget.index,
      items: const [
        Icon(Icons.message),
        Icon(Icons.person_2_rounded),
        Icon(Icons.business),
      ],
      onTap: (value) {
        switch (value) {
          case 0:
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const MessagePage(title: 'Message Page')));
          case 1:
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const MessagePage(title: 'Personal Page')));
          case 2:
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const MessagePage(title: 'Business Page')));
        }
      },
    );
  }
}
