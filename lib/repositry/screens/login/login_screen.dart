import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/domain/constans/app_colors.dart';
import 'package:instagram_clone/repositry/screens/bottomnav/bottomnav_screen.dart';
import 'package:instagram_clone/repositry/widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Logo
            UiHelper.CustomImage(imageurl: 'Instagram Logo.png'),
            SizedBox(height: 30.h,
            ),
            UiHelper.CustomTextField(
                controller: emailcontroller, text: 'Email', hide: false),
            SizedBox(height: 12.h,
            ),
            UiHelper.CustomTextField(
                controller: passcontroller, text: 'Password', hide: false),
            Padding(
              padding: EdgeInsets.only(top: 12.h),

              /// Text Button
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  UiHelper.CustomTextButton(
                      text: 'Forgot password?', callback: () {})
                ],
              ),
            ),

            /// Button
            SizedBox(
              height: 15.h,
            ),
            UiHelper.CustomButton(callback: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavScreen(),));
            }, text: 'Login'),
             SizedBox(
              height: 20.h,
            ),

            /// Facebook icon With Button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomImage(imageurl: 'Shape.png'),
                UiHelper.CustomTextButton(
                  text: 'Log in with Facebook',
                  callback: () {},
                  textStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.bluecolor),
                )
              ],
            ),
            SizedBox(height: 40.h,),
            Text('OR',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14.sp),),
            SizedBox(height: 40.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t have an account?',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp),),
                UiHelper.CustomTextButton(text: 'Sign up.', callback: (){})
              ],
            )
          ],
        ),
      ),
    );
  }
}
