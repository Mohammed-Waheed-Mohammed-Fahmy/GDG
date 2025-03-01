import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_one/featurs/onpoarding_screens/presentation/pages/onpoardnig_screens/OnboardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void inintState() {
    super.initState();
    // Future.delayed(Duration(seconds: 3), () {
    //   Navigator.pushReplacement(
    //       context, MaterialPageRoute(builder: (context) => Onboardingscreen()));
    // });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
        height: ScreenUtil().screenHeight,
        width: ScreenUtil().screenWidth,
        child: Center(
          child: Container(
            width: 300.w,
            height: 256.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/1.png"),
                    fit: BoxFit.cover)),
          )
              .animate(delay: Duration(milliseconds: 500))
              // First, fade in the widget
              .fadeIn(
                  duration: Duration(milliseconds: 800), curve: Curves.easeIn)
              // Then slide it upward from 50 pixels below to its final position
              .slide(
                begin: Offset(0, 50),
                end: Offset(0, 0),
                duration: Duration(milliseconds: 1000),
                curve: Curves.easeOut,
              )
              // Scale it from 80% of its size to full size with an elastic curve
              .scale(
                begin: Offset(0.8, 0.8), // 80% of its size (x and y)
                end: Offset(1.0, 1.0), // 100% of its size (x and y)
                duration: Duration(milliseconds: 8000),
                curve: Curves.elasticOut,
              )
              // Apply a slight rotation that settles back to 0 radians
              .rotate(
                begin: 0.1, // in radians (approx. 5.7°)
                end: 0.0,
                duration: Duration(milliseconds: 2000),
                curve: Curves.easeInOut,
              ),
        ),
      )),
    );
  }
}
