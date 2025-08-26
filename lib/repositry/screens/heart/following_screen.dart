import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/repositry/widgets/uihelper.dart';

class FollowingScreen extends StatelessWidget {
  const FollowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),

            /// First
            SizedBox(
              height: 60.h,
              width: double.infinity,
              child: ListTile(
                leading: UiHelper.CustomImage(imageurl: 'f1.png'),
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
                        text: ' liked 3 posts.',
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
                trailing: UiHelper.CustomImage(imageurl: 'fts.png'),
              ),
            ),

            /// Second
            SizedBox(
              height: 80.h,
              width: double.infinity,
              child: ListTile(
                leading: UiHelper.CustomImage(imageurl: 'fc.png'),
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'kiero_d, zackjohn',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' and',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' craig_love',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' liked',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' joshua_l',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' Photo.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' 3h',
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
                trailing: UiHelper.CustomImage(imageurl: 'ft2.png'),
              ),
            ),

            /// Third
            SizedBox(
              height: 70.h,
              width: double.infinity,
              child: ListTile(
                leading: UiHelper.CustomImage(imageurl: 'f3.png'),
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'kiero_d',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' started following',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' craig_love.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' 3h',
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
                trailing: UiHelper.CustomImage(imageurl: 'fts.png'),
              ),
            ),

            /// Fourth
            SizedBox(
              height: 65.h,
              width: double.infinity,
              child: ListTile(
                leading: UiHelper.CustomImage(imageurl: 'f4.png'),
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'craig_love',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' liked 8 posts.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' 3h',
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
                trailing: UiHelper.CustomImage(imageurl: 'fts.png'),
              ),
            ),

            /// Fifth
            SizedBox(
              height: 70.h,
              width: double.infinity,
              child: ListTile(
                leading: UiHelper.CustomImage(imageurl: 'fc.png'),
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'maxjacobson',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' and',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' zackjohn',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' liked',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' mis_potter’s',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' Photo.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' 3h',
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
                trailing: UiHelper.CustomImage(imageurl: 'ft2.png'),
              ),
            ),

            /// Sixth
            SizedBox(
              height: 70.h,
              width: double.infinity,
              child: ListTile(
                leading: UiHelper.CustomImage(imageurl: 'fc.png'),
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'maxjacobson',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' and',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' zackjohn',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' liked',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' mis_potter’s',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' Photo.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' 3h',
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
                trailing: UiHelper.CustomImage(imageurl: 'ft6.png'),
              ),
            ),

            /// Seventh
            SizedBox(
              height: 70.h,
              width: double.infinity,
              child: ListTile(
                leading: UiHelper.CustomImage(imageurl: 'f1.png'),
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
                        text: ' liked',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' martini_rond’s',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' comment: @martini_rond Nice!',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' 3h',
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
                trailing: UiHelper.CustomImage(imageurl: 'ft7.png'),
              ),
            ),

            /// Eighth
            SizedBox(
              height: 60.h,
              width: double.infinity,
              child: ListTile(
                leading: UiHelper.CustomImage(imageurl: 'f8.png'),
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'maxjacobson',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' liked 3 posts.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          fontFamily: 'regular',
                        ),
                      ),
                      TextSpan(
                        text: ' 3h',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
