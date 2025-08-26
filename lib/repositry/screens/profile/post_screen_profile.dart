import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/repositry/widgets/uihelper.dart';

class PostScreenProfile extends StatefulWidget {
  const PostScreenProfile({super.key});

  @override
  State<PostScreenProfile> createState() => _PostScreenProfileState();
}

class _PostScreenProfileState extends State<PostScreenProfile> {
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
      body: GridView.builder(
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
      ),
    );
  }
}
