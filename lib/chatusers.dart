import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home2Widget extends StatefulWidget {
  @override
  _Home2WidgetState createState() => _Home2WidgetState();
}

class _Home2WidgetState extends State<Home2Widget> {

  int _selectedIndex = 0;
   static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
   static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Home2Widget - FRAME

    return Scaffold(
      body: SafeArea(
        child: Container(
            width: 414.w,
            height: 896.h,
            child: Stack(children: <Widget>[
              Positioned(
                  top: 64.h,
                  left: 32.w,
                  child: Container(
                      width: 350.w,
                      height: 56.h,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0.h,
                            left: 302.w,
                            child: Container(
                                width: 48.w,
                                height: 48.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Profilepic.png'),
                                      fit: BoxFit.fitWidth),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(48.r, 48.r)),
                                ))),
                        Positioned(
                            top: 24.h,
                            left: 0.w,
                            child: Text(
                              'Sandeep Jain',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Greycliff CF',
                                  fontSize: 24.sp,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.3333333333333333.h),
                            )),
                        Positioned(
                            top: 0.h,
                            left: 0.w,
                            child: Text(
                              'Good Morning',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Greycliff CF',
                                  fontSize: 16.sp,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.75.h),
                            )),
                      ]))),
              // Positioned(
              //     top: 152.h,
              //     left: 0.w,
              //     child: Container(
              //         width: 414.w,
              //         height: 76.h,
              //         decoration: BoxDecoration(
              //           color: Color.fromRGBO(0, 0, 0, 1),
              //         ),
              //         child: Stack(children: <Widget>[
              //           Positioned(
              //               top: 0.h,
              //               left: 0.w,
              //               child: Container(
              //                 decoration: BoxDecoration(),
              //                 padding: EdgeInsets.symmetric(
              //                     horizontal: 32, vertical: 4),
              //                 child: Row(
              //                   mainAxisSize: MainAxisSize.min,
              //                   children: <Widget>[
              //                     Container(
              //                         width: 68.w,
              //                         height: 64.h,
              //                         child: Stack(children: <Widget>[
              //                           Positioned(
              //                               top: 0.h,
              //                               left: 0.w,
              //                               child: Container(
              //                                   width: 64.w,
              //                                   height: 64.h,
              //                                   decoration: BoxDecoration(
              //                                     image: DecorationImage(
              //                                         image: AssetImage(
              //                                             'assets/images/Profilepic.png'),
              //                                         fit: BoxFit.fitWidth),
              //                                     borderRadius:
              //                                         BorderRadius.all(
              //                                             Radius.elliptical(
              //                                                 64.r, 64.r)),
              //                                   ))),
              //                           Positioned(
              //                               top: 38.h,
              //                               left: 44.w,
              //                               child: Container(
              //                                   width: 24.w,
              //                                   height: 24.h,
              //                                   decoration: BoxDecoration(
              //                                     color: Color.fromRGBO(
              //                                         0, 0, 0, 1),
              //                                     borderRadius:
              //                                         BorderRadius.all(
              //                                             Radius.elliptical(
              //                                                 24.r, 24.r)),
              //                                   ))),
              //                           Positioned(
              //                               top: 42.h,
              //                               left: 48.w,
              //                               child: Container(
              //                                   width: 16.w,
              //                                   height: 16.h,
              //                                   decoration: BoxDecoration(),
              //                                   child: Stack(children: <Widget>[
              //                                     Positioned(
              //                                         top: 3.3333332538604736.h,
              //                                         left: 8.w,
              //                                         child: SvgPicture.asset(
              //                                             'assets/images/vector.svg',
              //                                             semanticsLabel:
              //                                                 'vector')),
              //                                     Positioned(
              //                                         top: 8.h,
              //                                         left:
              //                                             3.3333332538604736.w,
              //                                         child: SvgPicture.asset(
              //                                             'assets/images/vector.svg',
              //                                             semanticsLabel:
              //                                                 'vector')),
              //                                   ]))),
              //                         ])),
              //                     SizedBox(width: 24.w),
              //                     Container(
              //                         width: 68.w,
              //                         height: 68.h,
              //                         child: Stack(children: <Widget>[
              //                           Positioned(
              //                               top: 2.h,
              //                               left: 2.w,
              //                               child: Container(
              //                                   // width: 64.w,
              //                                   // height: 64.h,
              //                                   // decoration: BoxDecoration(
              //                                   //   image: DecorationImage(
              //                                   //       image: AssetImage(
              //                                   //           'assets/images/vector.png'),
              //                                   //       fit: BoxFit.fitWidth),
              //                                   //   borderRadius:
              //                                   //       BorderRadius.all(
              //                                   //           Radius.elliptical(
              //                                   //               64.r, 64.r)),
              //                                   // )
              //                                   )
              //                                   ),
              //                           Positioned(
              //                               top: 0.h,
              //                               left: 0.w,
              //                               child: Container(
              //                                   width: 68.w,
              //                                   height: 68.h,
              //                                   decoration: BoxDecoration(
              //                                     border: Border.all(
              //                                       color: Color.fromRGBO(
              //                                           90, 255, 116, 1),
              //                                       width: 1.5.w,
              //                                     ),
              //                                     borderRadius:
              //                                         BorderRadius.all(
              //                                             Radius.elliptical(
              //                                                 68, 68)),
              //                                   ))),
              //                         ])),
              //                   ],
              //                 ),
              //               )),
              //         ]))),
              Positioned(
                  top: 356.h,
                  left: 24.w,
                  child: Container(
                      width: 347.w,
                      height: 40.h,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0.h,
                            left: 0.w,
                            child: Container(
                                width: 347.w,
                                height: 40.h,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 40.h,
                                      left: 0.w,
                                      child: Divider(
                                          color:
                                              Color.fromRGBO(255, 204, 42, 1),
                                          thickness: 3)),
                                  Positioned(
                                      top: 0.h,
                                      left: 8.w,
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                                width: 105.w,
                                                height: 32.h,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0.h,
                                                      left: 0.w,
                                                      child: Text(
                                                        'Private chats',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    1),
                                                            fontFamily:
                                                                'Greycliff CF',
                                                            fontSize: 18.sp,
                                                            letterSpacing:
                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height:
                                                                1.7777777777777777
                                                                    .h),
                                                      )),
                                                ])),
                                            SizedBox(width: 32.w),
                                            Container(
                                                width: 59.w,
                                                height: 32.h,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0.h,
                                                      left: 0.w,
                                                      child: Text(
                                                        'Groups',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    0.5),
                                                            fontFamily:
                                                                'Greycliff CF',
                                                            fontSize: 18.sp,
                                                            letterSpacing:
                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height:
                                                                1.7777777777777777
                                                                    .h),
                                                      )),
                                                ])),
                                            SizedBox(width: 32.w),
                                            Container(
                                                width: 111.w,
                                                height: 32.h,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0.h,
                                                      left: 0.w,
                                                      child: Text(
                                                        'Public Groups',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    0.5),
                                                            fontFamily:
                                                                'Greycliff CF',
                                                            fontSize: 18.sp,
                                                            letterSpacing:
                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height:
                                                                1.7777777777777777
                                                                    .h),
                                                      )),
                                                ])),
                                          ],
                                        ),
                                      )),
                                ]))),
                      ]))),
              Positioned(
                  top: 252.h,
                  left: 64.w,
                  child: Container(
                      width: 350.w,
                      height: 72.h,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0.h,
                            left: 0.w,
                            child: Container(
                                width: 350.w,
                                height: 72.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12.r),
                                    topRight: Radius.circular(0.r),
                                    bottomLeft: Radius.circular(12.r),
                                    bottomRight: Radius.circular(0.r),
                                  ),
                                  color: Color.fromRGBO(31, 31, 31, 1),
                                ))),
                        Positioned(
                            top: 26.h,
                            left: 32.w,
                            child: Container(
                                width: 20.w,
                                height: 20.h,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 0.h,
                                      left: 0.w,
                                      child: Container(
                                          width: 20.w,
                                          height: 20.h,
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 0.h,
                                                left: 0.w,
                                                child: Container(
                                                    width: 20.w,
                                                    height: 20.h,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                    ),
                                                    child: Stack(
                                                        children: <Widget>[
                                                          Positioned(
                                                              top: 2.5.h,
                                                              left: 2.5.w,
                                                              child: SvgPicture.asset(
                                                                  'assets/images/vector.svg',
                                                                  semanticsLabel:
                                                                      'vector')),
                                                          Positioned(
                                                              top:
                                                                  13.874999046325684
                                                                      .h,
                                                              left:
                                                                  13.874999046325684
                                                                      .w,
                                                              child: SvgPicture.asset(
                                                                  'assets/images/vector.svg',
                                                                  semanticsLabel:
                                                                      'vector')),
                                                        ]))),
                                          ]))),
                                ]))),
                      ]))),
            ])),      
      ),
      bottomNavigationBar: ClipRRect(
         borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
        child: BottomNavigationBar(
          backgroundColor: Colors.yellow,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.message,
              color: Colors.black,),
              label: 'Messaging',
              backgroundColor: Colors.yellow,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group,
              color: Colors.black,),
              label: 'Groups',
              backgroundColor: Colors.yellow,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today,
              color: Colors.black,),
              label: 'Events',
              backgroundColor: Colors.yellow,
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.settings,
              color: Colors.black,),
              label: 'Settings',
              backgroundColor: Colors.yellow,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ), 
    );
  }
}
