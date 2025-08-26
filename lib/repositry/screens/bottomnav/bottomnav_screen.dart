import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/repositry/screens/heart/heart_screen.dart';
import 'package:instagram_clone/repositry/screens/home/home_screen.dart';
import 'package:instagram_clone/repositry/screens/post/post_screen.dart';
import 'package:instagram_clone/repositry/screens/profile/profile_screen.dart';
import 'package:instagram_clone/repositry/screens/search/search_screen.dart';
import 'package:instagram_clone/repositry/widgets/uihelper.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  /// List of Screens
  List<Widget> pages = [
    const HomeScreen(),
    const SearchScreen(),
    const PostScreen(),
    const HeartScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled, size: 25.sp), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search, size: 25.sp), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined, size: 25.sp), label: 'Post'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart, size: 25.sp), label: 'Heart'),
          BottomNavigationBarItem(icon: UiHelper.CustomImage(imageurl: 'account.png',), label: 'Profile'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
    );
  }
}
