import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/domain/constans/app_colors.dart';
import 'package:instagram_clone/repositry/widgets/uihelper.dart';

class YouScreen extends StatelessWidget {
  const YouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Top Follow Request
              Container(
                height: 48.h,
                width: double.infinity,
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 14.h, bottom: 14.h),
                  child: Text(
                    'Follow Requests',
                    style: TextStyle(
                        fontFamily: 'regular',
                        fontWeight: FontWeight.w400,
                        fontSize: 15.sp,
                        color: Colors.white),
                  ),
                ),
              ),

              /// First Heading
              Padding(
                padding: EdgeInsets.only(left: 16.w, top: 13.h, bottom: 21.h),
                child: Text(
                  'New',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'regular',
                      fontSize: 15.sp,
                      color: Colors.white),
                ),
              ),

              /// First ListTile
              SizedBox(
                height: 60.h,
                width: double.infinity,
                child: ListTile(
                  leading: UiHelper.CustomImage(imageurl: 'y1.png'),
                  title: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'karennne',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            fontFamily: 'regular',
                          ),
                        ),
                        TextSpan(
                          text: ' liked your photo.',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp,
                            fontFamily: 'regular',
                          ),
                        ),
                        TextSpan(
                          text: ' 1h',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp,
                            fontFamily: 'regular',
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: UiHelper.CustomImage(imageurl: 'yt1.png'),
                ),
              ),

              /// Second Heading
              Padding(
                padding: EdgeInsets.only(left: 16.w, top: 13.h, bottom: 21.h),
                child: Text(
                  'Today',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'regular',
                      fontSize: 15.sp,
                      color: Colors.white),
                ),
              ),

              /// Second ListTile
              SizedBox(
                height: 60.h,
                width: double.infinity,
                child: ListTile(
                  leading: UiHelper.CustomImage(imageurl: 'y2.png'),
                  title: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'kiero_d, zackjohn ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              fontFamily: 'regular'),
                        ),
                        TextSpan(
                          text: 'and ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              fontFamily: 'regular'),
                        ),
                        TextSpan(
                          text: '26 others\n',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              fontFamily: 'regular'),
                        ),
                        TextSpan(
                          text: 'liked your photo. ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              fontFamily: 'regular'),
                        ),
                        TextSpan(
                          text: '3h',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              fontFamily: 'regular',
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  trailing: UiHelper.CustomImage(imageurl: 'yt1.png'),
                ),
              ),

              /// Third Heading
              Padding(
                padding: EdgeInsets.only(left: 16.w, top: 13.h, bottom: 13.h),
                child: Text(
                  'This Week',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'regular',
                      fontSize: 15.sp,
                      color: Colors.white),
                ),
              ),

              /// Third ListTile
              SizedBox(
                height: 91.h,
                width: double.infinity,
                child: ListTile(
                  leading: UiHelper.CustomImage(imageurl: 'y3.png'),
                  title: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'craig_love ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              fontFamily: 'regular'),
                        ),
                        TextSpan(
                          text: 'mentioned you in a comment: @jacob_w exactly.. 💫 ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              fontFamily: 'regular'),
                        ),
                        TextSpan(
                          text: '2d',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              fontFamily: 'regular',
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  trailing: UiHelper.CustomImage(imageurl: 'yt2.png'),
                ),
              ),

              /// Follow Request style
              _buildFollowTile('y4.png', 'martini_rond', 'Message'),
              _buildFollowTile('y5.png', 'maxjacobson', 'Message'),
              _buildFollowTile('y6.png', 'mis_potter', 'Follow', isFollow: true),

              /// Fourth Heading
              Padding(
                padding: EdgeInsets.only(left: 16.w, top: 13.h, bottom: 13.h),
                child: Text(
                  'This Month',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'regular',
                      fontSize: 15.sp,
                      color: Colors.white),
                ),
              ),

              /// Last ListTile
              _buildFollowTile('y7.png', 'm_humphrey', 'Message'),
            ],
          ),
        ));
  }

  Widget _buildFollowTile(String img, String name, String btnText, {bool isFollow = false}) {
    return SizedBox(
      height: 70.h,
      width: double.infinity,
      child: ListTile(
        leading: UiHelper.CustomImage(imageurl: img),
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp,
                  fontFamily: 'regular',
                ),
              ),
              TextSpan(
                text: ' started following you. ',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.sp,
                  fontFamily: 'regular',
                ),
              ),
              TextSpan(
                text: '3d',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp,
                    fontFamily: 'regular',
                    color: Colors.grey),
              ),
            ],
          ),
        ),
        trailing: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
            minimumSize: Size(90.w, 28.h),
            side: isFollow ? BorderSide.none : BorderSide(color: Colors.grey.shade700),
            backgroundColor: isFollow ? AppColors.bluecolor : Colors.black,
            foregroundColor: Colors.white,
          ),
          child: Text(
            btnText,
            style: TextStyle(
                fontFamily: 'regular', fontWeight: FontWeight.bold, fontSize: 14.sp),
          ),
        ),
      ),
    );
  }
}
