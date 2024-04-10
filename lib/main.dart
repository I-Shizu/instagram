// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram/Page/feed_page.dart';
import 'package:instagram/Page/my_page.dart';
import 'package:instagram/Page/search_page.dart';
import 'package:instagram/Page/shop_page.dart';
import 'package:instagram/Page/video_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _InstagramState(),
    );
  }
}

class _InstagramState extends StatefulWidget {
  const _InstagramState();

  @override
  State<_InstagramState> createState() => __InstagramStateState();
}

class __InstagramStateState extends State<_InstagramState> {
  int _currentIndex = 0;
  final _pageWidgets = [
    const FeedPage(),
    const SearchPage(),
    const VideoPage(),
    const ShopPage(),
    const MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidgets.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'feed'),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          const BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'video'),
          const BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'mypage'),
        ],
        currentIndex: _currentIndex,
        fixedColor: Colors.blueAccent,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(
    () => _currentIndex = index 
    );
  }
}

class PageWidget extends StatelessWidget {
  final Color color;
  final String title;

  const PageWidget({super.key, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}