import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../message_page/message_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final screens = [
    const MessagePage(title: 'Messages'),
    const MessagePage(title: 'Personal'),
    const MessagePage(title: 'Business'),
  ];
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[_page],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.deepPurpleAccent,
        animationDuration: Durations.medium2,
        index: _page,
        items: const [
          Icon(Icons.message),
          Icon(Icons.person_2_rounded),
          Icon(Icons.business),
        ],
        onTap: (value) {
          setState(() {
            _page = value;
          });
        },
      ),
    );
  }
}
