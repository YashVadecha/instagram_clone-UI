import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/domain/constans/app_colors.dart';

class UiHelper {

  /// TextField
  static Widget CustomTextField({
    required TextEditingController controller,
    required String text,
    Icon? icon,
    required bool hide,
  }) {
    return Container(
      height: 50.h,
      width: 343.w,
      decoration: BoxDecoration(
        color: const Color(0XFF121212),
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(
          color: Colors.white24,
        ),
      ),
      child: TextField(
        controller: controller,
        obscureText: hide,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 14.h),
          prefixIcon: icon, // directly assign Icon? type
          hintText: text,
          hintStyle: TextStyle(fontSize: 14.sp, color: Colors.white),
          border: InputBorder.none,
        ),
      ),
    );
  }


  /// Image
  static CustomImage({required String imageurl}) {
    return Image.asset('assets/images/$imageurl');
  }

  /// Button
  static CustomButton({required callback, required String text}) {
    return Container(
      height: 44.h,
      width: 343.w,
      decoration: BoxDecoration(
        color: AppColors.bluecolor,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: MaterialButton(
        onPressed: () {
          callback();
        },
        child: Text(text,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'regular',
            )),
      ),
    );
  }

  /// TextButton
  static CustomTextButton({required String text, required callback,TextStyle? textStyle,Color? color}) {
    return TextButton(
        onPressed: () {
          callback();
        },
        child: Text(
          text,
          style: textStyle?? TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
            color: color ?? AppColors.bluecolor
          ),
        ));
  }
}
