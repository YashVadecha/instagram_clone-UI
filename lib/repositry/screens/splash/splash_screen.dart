import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/repositry/screens/login/login_screen.dart';
import 'package:instagram_clone/repositry/widgets/uihelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        color: Colors.transparent, // makes sure no background
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Welcome to',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.sp, // responsive text
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4.h), // responsive spacing
            Text.rich(
              TextSpan(
                style: TextStyle(color: Colors.white, fontSize: 15.sp), // responsive text
                children: const [
                  TextSpan(
                    text: "Yash Vadecha's ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'Instagram_clone (UI)',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imageurl: 'image 1.png'),
            SizedBox(height: 10.h), // responsive spacing
            UiHelper.CustomImage(imageurl: 'Instagram Logo.png'),
            SizedBox(height: 10.h), // responsive spacing
          ],
        ),
      ),
    );
  }
}
