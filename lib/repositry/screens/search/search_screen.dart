import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/repositry/widgets/uihelper.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  /// Controller
  TextEditingController searchcontroller = TextEditingController();

  /// Image Array
  var arrImg = [
    {'img': '1.png'},
    {'img': '2.png'},
    {'img': '3.png'},
    {'img': '4.png'},
    {'img': '5.png'},
    {'img': '6.png'},
    {'img': '7.png'},
    {'img': '8.png'},
    {'img': '9.png'},
    {'img': '10.png'},
    {'img': '11.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 16.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 16.h),

                /// Search bar
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 36.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: const Color(0xff262626),
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 14.sp, color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
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
                    SizedBox(width: 8.w),
                    SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: UiHelper.CustomImage(imageurl: 'live.png')),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 9.w, top: 9.h, bottom: 20.h),

                /// Row Chips
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        /// IGTV
                        Container(
                          height: 32.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              border: Border.all(color: Colors.white10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  height: 16.h,
                                  width: 16.w,
                                  child:
                                  UiHelper.CustomImage(imageurl: 'igtv.png')),
                              SizedBox(width: 5.w),
                              Text(
                                'IGTV',
                                style: TextStyle(
                                    color: const Color(0xffF9F9F9),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 6.w),

                        /// Shop
                        Container(
                          height: 32.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              border: Border.all(color: Colors.white10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.shopping_bag_rounded, size: 18.sp),
                              SizedBox(width: 5.w),
                              Text(
                                'Shop',
                                style: TextStyle(
                                    color: const Color(0xffF9F9F9),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 6.w),

                        /// Style
                        Container(
                          height: 32.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              border: Border.all(color: Colors.white10)),
                          child: Center(
                            child: Text(
                              'Style',
                              style: TextStyle(
                                  color: const Color(0xffF9F9F9),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp),
                            ),
                          ),
                        ),
                        SizedBox(width: 6.w),

                        /// Sports
                        Container(
                          height: 32.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              border: Border.all(color: Colors.white10)),
                          child: Center(
                            child: Text(
                              'Sports',
                              style: TextStyle(
                                  color: const Color(0xffF9F9F9),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp),
                            ),
                          ),
                        ),
                        SizedBox(width: 6.w),

                        /// Auto
                        Container(
                          height: 32.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              border: Border.all(color: Colors.white10)),
                          child: Center(
                            child: Text(
                              'Auto',
                              style: TextStyle(
                                  color: const Color(0xffF9F9F9),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),

              /// Body Images Section
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 4.w,
                  crossAxisSpacing: 4.w,
                  childAspectRatio: 1,
                ),
                itemCount: arrImg.length,
                itemBuilder: (context, index) {
                  return Container(
                    clipBehavior: Clip.antiAlias,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
                    child: UiHelper.CustomImage(
                      imageurl: arrImg[index]['img'].toString(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
