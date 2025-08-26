import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/domain/constans/app_colors.dart';
import 'package:instagram_clone/repositry/widgets/uihelper.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  TextEditingController serachcontroller = TextEditingController();

  var arrprofile = [
    {
      'img': 'm1.png',
      'name': 'joshua_l',
      'desc': 'Have a nice day, bro!',
      'tr': 'mc.png'
    },
    {
      'img': 'm2.png',
      'name': 'karennne',
      'desc': 'I heard this is a good movie, s…',
      'tr': 'mc.png'
    },
    {
      'img': 'm3.png',
      'name': 'martini_rond',
      'desc': 'See you on the next meeting!',
      'tr': 'mc.png'
    },
    {
      'img': 'm4.png',
      'name': 'andrewww_',
      'desc': 'Sounds good 😂😂😂',
      'tr': 'mc.png'
    },
    {
      'img': 'm5.png',
      'name': 'kiero_d',
      'desc': 'The new design looks cool, b…',
      'tr': 'mc.png'
    },
    {
      'img': 'm6.png',
      'name': 'maxjacobson',
      'desc': 'Thank you, bro!',
      'tr': 'mc.png'
    },
    {
      'img': 'm7.png',
      'name': 'jamie.franco',
      'desc': "Yeap, I'm going to travel in To…",
      'tr': 'mc.png'
    },
    {
      'img': 'm8.png',
      'name': 'm_humphrey',
      'desc': 'Instagram UI is pretty good',
      'tr': 'mc.png'
    },
    {
      'img': 'm9.png',
      'name': 'joan_bill',
      'desc': 'Thanks Joan!',
      'tr': 'mc.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(CupertinoIcons.back, size: 22.sp)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'yash_vadecha',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'regular'),
            ),
            SizedBox(width: 5.w),
            Icon(
              CupertinoIcons.chevron_down,
              size: 16.sp,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 22.sp,
              ))
        ],
      ),

      /// Bottom Button
      bottomNavigationBar: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(18.w),
              shape: const ContinuousRectangleBorder(side: BorderSide.none)),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.camera_fill,
                color: AppColors.bluecolor,
                size: 20.sp,
              ),
              SizedBox(width: 6.w),
              Text(
                'Camera',
                style: TextStyle(
                    color: AppColors.bluecolor,
                    fontFamily: 'regular',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp),
              )
            ],
          )),
      body: Column(
        children: [
          SizedBox(height: 10.h),

          /// Search Bar
          Center(
            child: Container(
              height: 36.h,
              width: 347.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.greycolor),
              child: TextField(
                style: TextStyle(fontSize: 14.sp, color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                      fontFamily: 'regular',
                      color: const Color(0xff979797),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                  prefixIcon: Icon(Icons.search,
                      color: const Color(0xff979797), size: 20.sp),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 8.h),
                ),
              ),
            ),
          ),

          /// Body Section
          Expanded(
            child: ListView.builder(
              itemCount: arrprofile.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: SizedBox(
                      height: 56.h,
                      width: 56.w,
                      child: UiHelper.CustomImage(
                          imageurl: arrprofile[index]['img'].toString())),
                  title: Text(
                    arrprofile[index]['name'].toString(),
                    style: TextStyle(fontSize: 14.sp, color: Colors.white),
                  ),
                  subtitle: Text(
                    arrprofile[index]['desc'].toString(),
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                  ),
                  trailing: UiHelper.CustomImage(
                      imageurl: arrprofile[index]['tr'].toString()),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
