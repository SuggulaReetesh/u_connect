import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uconnect/models/OnBoardingModel.dart';
import 'package:uconnect/views/Register.dart';
import 'package:uconnect/views/SignUp.dart';

class Onboarding4Widget extends StatefulWidget {
  @override
  _Onboarding4WidgetState createState() => _Onboarding4WidgetState();
}

class _Onboarding4WidgetState extends State<Onboarding4Widget> {
  int currentIndex = 0;
  int _currentPage = 0;
  late Timer _timer;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
    _timer = Timer.periodic(Duration(seconds: 10), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
        body: SafeArea(
      child: Container(
          width: 414.w,
          height: 896.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.r),
              topRight: Radius.circular(32.r),
              bottomLeft: Radius.circular(32.r),
              bottomRight: Radius.circular(32.r),
            ),
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          child: Stack(children: <Widget>[
            PageView.builder(
                // physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return (Container(
                    child: Stack(
                      children: [
                        Positioned(
                            top: 480.h,
                            left: 48.w,
                            child: Container(
                                width: 300.w,
                                height: 150.h,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 88.h,
                                      left: 0.w,
                                      child: Text(
                                        contents[i].discription,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                228, 230, 238, 1),
                                            fontFamily: 'GreycliffCF',
                                            fontSize: 16.sp,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.normal,
                                            height: 1.75.h),
                                      )),
                                  Positioned(
                                      top: 0.h,
                                      left: 0.w,
                                      child: Column(children: [
                                        Text(
                                          contents[i].title1,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              fontFamily: 'GreycliffCF',
                                              fontSize: 36.sp,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.normal,
                                              height: 1.0555555555555556.h),
                                        ),
                                        Text(
                                          contents[i].title2,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              fontFamily: 'GreycliffCF',
                                              fontSize: 36.sp,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.normal,
                                              height: 1.0555555555555556.h),
                                        ),
                                      ])),
                                ]))),
                        Positioned(
                            top: 12.h,
                            left: 12.w,
                            child: Container(
                                child: Image.asset(contents[i].image),
                                width: 390.w,
                                height: 420.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(24.r),
                                    topRight: Radius.circular(24.r),
                                    bottomLeft: Radius.circular(24.r),
                                    bottomRight: Radius.circular(24.r),
                                  ),
                                ))),
                      ],
                    ),
                  ));
                }),
            Positioned(
                top: 674.h,
                left: 48.w,
                child: Container(
                    width: 50.w,
                    height: 10.h,
                    child: Stack(
                      children: List<Widget>.generate(
                        contents.length,
                        (index) => buildDot(index, context),
                      ),
                    ))),
            Positioned(
                top: 708.h,
                left: 48.w,
                child: Container(
                    width: 318.w,
                    height: 140.h,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 76.h,
                          left: 0.w,
                          child: Container(
                              width: 318.w,
                              height: 64.h,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0.h,
                                    left: 0.w,
                                    child: Container(
                                        width: 318.w,
                                        height: 64.h,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12.r),
                                            topRight: Radius.circular(12.r),
                                            bottomLeft: Radius.circular(12.r),
                                            bottomRight: Radius.circular(12.r),
                                          ),
                                          border: Border.all(
                                            color:
                                                Color.fromRGBO(255, 204, 42, 1),
                                            width: 2.w,
                                          ),
                                        ))),
                                Positioned(
                                    top: 16.h,
                                    left: 134.w,
                                    child: Text(
                                      'Login',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'GreycliffCF',
                                          fontSize: 20.sp,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.6.h),
                                    )),
                              ]))),
                      Positioned(
                          top: 0.h,
                          left: 0.w,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterWidget()));
                            },
                            child: Container(
                                width: 318.w,
                                height: 64.h,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 0.h,
                                      left: 0.w,
                                      child: Container(
                                          width: 318.w,
                                          height: 64.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12.r),
                                              topRight: Radius.circular(12.r),
                                              bottomLeft: Radius.circular(12.r),
                                              bottomRight:
                                                  Radius.circular(12.r),
                                            ),
                                            color:
                                                Color.fromRGBO(255, 204, 42, 1),
                                          ))),
                                  Positioned(
                                    top: 16.h,
                                    left: 127.w,
                                    child: Text(
                                      'Signup',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'GreycliffCF',
                                          fontSize: 20.sp,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.normal,
                                          height: 1.6.h),
                                    ),
                                  ),
                                ])),
                          )),
                    ]))),
          ])),
    ));
  }

  buildDot(int index, BuildContext context) {
    return Positioned(
        top: 0.h,
        left: ((index) * 20).w,
        child: Container(
            width: 10.w,
            height: 10.h,
            decoration: BoxDecoration(
              color: currentIndex == index
                  ? Color.fromRGBO(255, 204, 42, 1)
                  : Color.fromRGBO(31, 31, 31, 1),
              borderRadius: BorderRadius.all(Radius.elliptical(10.r, 10.r)),
            )));
  }
}
