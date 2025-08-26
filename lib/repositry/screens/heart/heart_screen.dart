import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/repositry/screens/heart/following_screen.dart';
import 'package:instagram_clone/repositry/screens/heart/you_screen.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,

          /// TabBar
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white,
            labelStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'regular',
              color: Colors.white,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'regular',
              color: Colors.grey,
            ),
            tabs: const [
              Tab(text: 'Following'),
              Tab(text: 'You'),
            ],
          ),
        ),

        /// Following & You Screens View
        body: const TabBarView(
          children: [
            FollowingScreen(),
            YouScreen(),
          ],
        ),
      ),
    );
  }
}
