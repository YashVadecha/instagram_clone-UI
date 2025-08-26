import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/repositry/screens/profile/post_screen_profile.dart';
import 'package:instagram_clone/repositry/screens/profile/tag_screen.dart';
import 'package:instagram_clone/repositry/widgets/uihelper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// For Tabs
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.lock_fill,
                color: Colors.white,
                size: 18.sp,
              ),
              SizedBox(width: 5.w),
              Text(
                'yash_vadecha',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'regular',
                ),
              ),
            ],
          ),
          leading: SizedBox(height: 1.h),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 22.sp,
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.only(left: 19.w),
              child: Row(
                children: [
                  /// Profile Image
                  UiHelper.CustomImage(imageurl: 'main_profile.png'),
                  SizedBox(width: 30.w),
                  Column(
                    children: [
                      Text(
                        '60',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'regular',
                        ),
                      ),
                      Text(
                        'Posts',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'regular',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 30.w),
                  Column(
                    children: [
                      Text(
                        '835',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'regular',
                        ),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'regular',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 30.w),
                  Column(
                    children: [
                      Text(
                        '300',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'regular',
                        ),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'regular',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text(
                'yash_vadecha',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'regular',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text(
                'Digital goodies designer @pixsellz \nEverything is designed.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'regular',
                ),
              ),
            ),
            SizedBox(height: 20.h),

            /// Edit Profile Button
            Center(
              child: SizedBox(
                height: 29.h,
                width: 343.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey.shade800),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'regular',
                    ),
                  ),
                ),
              ),
            ),

            /// Profile Highlight Section
            Padding(
              padding: EdgeInsets.only(left: 10.w, top: 20.h),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 64.h,
                        width: 64.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.grey.shade800),
                        ),
                        child: Icon(Icons.add, size: 30.sp),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'New',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'regular',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 18.w),
                  Column(
                    children: [
                      Container(
                        height: 64.h,
                        width: 64.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.grey.shade800),
                        ),
                        child: UiHelper.CustomImage(imageurl: 'h1.png'),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'Friends',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'regular',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 18.w),
                  Column(
                    children: [
                      Container(
                        height: 64.h,
                        width: 64.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.grey.shade800),
                        ),
                        child: UiHelper.CustomImage(imageurl: 'h2.png'),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'Sport',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'regular',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 18.w),
                  Column(
                    children: [
                      Container(
                        height: 64.h,
                        width: 64.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.grey.shade800),
                        ),
                        child: UiHelper.CustomImage(imageurl: 'h3.png'),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'Design',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'regular',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 18.w),
                ],
              ),
            ),

            /// Tabs
            SizedBox(
              height: 60.h,
              child: AppBar(
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(icon: UiHelper.CustomImage(imageurl: 'Tab1.png')),
                    Tab(icon: UiHelper.CustomImage(imageurl: 'Tab2.png')),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  PostScreenProfile(),
                  TagScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
