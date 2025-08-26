import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/domain/constans/app_colors.dart';
import 'package:instagram_clone/repositry/screens/message/message_screen.dart';
import 'package:instagram_clone/repositry/widgets/uihelper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var arrProfile = [
    {'img': 'Profile Image1.png', 'name': 'Your Story'},
    {'img': 'Profile Image2.png', 'name': 'karennne'},
    {'img': 'Profile Image3.png', 'name': 'zackjohn'},
    {'img': 'Profile Image4.png', 'name': 'kieron_d'},
    {'img': 'Profile Image5.png', 'name': 'craig_love'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: UiHelper.CustomImage(imageurl: 'home logo.png',),
        leading: UiHelper.CustomImage(imageurl: 'Camera Icon.png',),
        actions: [
          IconButton(
              onPressed: () {},
              icon: UiHelper.CustomImage(imageurl: 'IGTV home.png')),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MessageScreen()));
              },
              icon: UiHelper.CustomImage(imageurl: 'Messanger.png')),
        ],
        centerTitle: true,
        toolbarHeight: 88.h,
        backgroundColor: AppColors.blackcolor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Profile Stories Section
            SizedBox(
              height: 90.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: arrProfile.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30.r, // responsive radius
                          backgroundImage: AssetImage(
                            'assets/images/${arrProfile[index]['img']}',
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          arrProfile[index]['name']!,
                          style: TextStyle(color: Colors.white, fontSize: 12.sp),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            /// Post Header
            Container(
              height: 55.h,
              width: 375.w,
              color: Colors.black12,
              child: ListTile(
                leading: UiHelper.CustomImage(imageurl: 'Oval.png', ),
                title: Row(
                  children: [
                    Text(
                      'joshua_l',
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'regular'),
                    ),
                    SizedBox(width: 5.w),
                    Icon(Icons.verified,
                        color: const Color(0xff3897F0), size: 14.sp),
                  ],
                ),
                subtitle: Text(
                  'Tokyo, Japan',
                  style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'regular',
                      color: const Color(0xffF9F9F9)),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz,
                      color: Colors.white, size: 22.sp),
                ),
              ),
            ),

            /// Post Image
            SizedBox(
              height: 375.h,
              width: double.infinity,
              child: UiHelper.CustomImage(imageurl: 'Rectangle.png'),
            ),

            /// Action Row
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
              child: Row(
                children: [
                  Icon(CupertinoIcons.heart, size: 24.sp, color: Colors.white),
                  SizedBox(width: 15.w),
                  UiHelper.CustomImage(imageurl: 'comment.png', ),
                  SizedBox(width: 15.w),
                  UiHelper.CustomImage(imageurl: 'Messanger.png',),
                  const Spacer(),
                  UiHelper.CustomImage(imageurl: 'save.png',),
                ],
              ),
            ),

            /// Likes Row
            Padding(
              padding: EdgeInsets.only(left: 15.w, top: 10.h),
              child: Row(
                children: [
                  UiHelper.CustomImage(imageurl: 'Oval2.png'),
                  SizedBox(width: 5.w),
                  Text('Liked by',
                      style: TextStyle(
                          fontFamily: 'regular',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  SizedBox(width: 3.w),
                  Text('karennne',
                      style: TextStyle(
                          fontFamily: 'regular',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  SizedBox(width: 3.w),
                  Text('and',
                      style: TextStyle(
                          fontFamily: 'regular',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  SizedBox(width: 3.w),
                  Text('44,646 others',
                      style: TextStyle(
                          fontFamily: 'regular',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ],
              ),
            ),

            /// Caption
            Padding(
              padding: EdgeInsets.only(left: 15.w, top: 5.h),
              child: Row(
                children: [
                  Text('karennne',
                      style: TextStyle(
                          fontFamily: 'regular',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  SizedBox(width: 3.w),
                  Text('The game in Japan was amazing and I want',
                      style: TextStyle(
                          fontFamily: 'regular',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Row(
                children: [
                  Text('to share some photos',
                      style: TextStyle(
                          fontFamily: 'regular',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
