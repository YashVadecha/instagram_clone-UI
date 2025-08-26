import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/repositry/widgets/uihelper.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  /// List of Profile Images
  var arrpost = [
    {'img': 'p1.png'},
    {'img': 'p2.png'},
    {'img': 'p3.png'},
    {'img': 'p4.png'},
    {'img': 'p5.png'},
    {'img': 'p6.png'},
    {'img': 'p7.png'},
    {'img': 'p8.png'},
    {'img': 'p9.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Open Gallery Button
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.white,
            shape: const ContinuousRectangleBorder(),
            context: context,
            builder: (context) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 124.h,
                    width: 124.w,
                    child: UiHelper.CustomImage(
                      imageurl: arrpost[index]['img'].toString(),
                    ),
                  );
                },
                itemCount: arrpost.length,
              );
            },
          );
        },
        backgroundColor: Colors.lightBlue,
        icon: Icon(
          CupertinoIcons.photo_on_rectangle,
          color: Colors.white,
          size: 22.sp,
        ),
        label: Text(
          'Open Gallery',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'regular',
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
          ),
        ),
      ),

      body: Center(
        /// Camera Button
        child: SizedBox(
          height: 40.h,
          width: 120.w,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            color: Colors.lightBlue,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Your Camera is open, Wait',
                    style: TextStyle(color: Colors.white, fontSize: 14.sp),
                  ),
                  backgroundColor: Colors.green,
                  elevation: 0,
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  duration: const Duration(seconds: 2),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(CupertinoIcons.camera, size: 20.sp),
                SizedBox(width: 5.w),
                Text(
                  'Camera',
                  style: TextStyle(
                    fontFamily: 'regular',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
