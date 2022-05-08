import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewsfeedWidget extends StatefulWidget {
  @override
  _NewsfeedWidgetState createState() => _NewsfeedWidgetState();
}

class _NewsfeedWidgetState extends State<NewsfeedWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator NewsfeedWidget - FRAME

    return Container(
        width: 414,
        height: 896,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 120,
              left: 0,
              child: Container(
                  width: 414,
                  height: 776,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                        width: 366,
                                        height: 214,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16),
                                            bottomLeft: Radius.circular(16),
                                            bottomRight: Radius.circular(16),
                                          ),
                                          color: Color.fromRGBO(31, 31, 31, 1),
                                        ),
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 178,
                                              left: 72,
                                              child: Container(
                                                  width: 24,
                                                  height: 24,
                                                  decoration: BoxDecoration(),
                                                  child:
                                                      Stack(children: <Widget>[
                                                    Positioned(
                                                        top: 2,
                                                        left: 2,
                                                        child: Container(
                                                            width: 20,
                                                            height: 20,
                                                            child: Stack(
                                                                children: <
                                                                    Widget>[
                                                                  Positioned(
                                                                      top: 0,
                                                                      left: 0,
                                                                      child: Container(
                                                                          width: 20,
                                                                          height: 20,
                                                                          child: Stack(children: <Widget>[
                                                                            Positioned(
                                                                                top: 0,
                                                                                left: 0,
                                                                                child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector')),
                                                                          ]))),
                                                                ]))),
                                                  ]))),
                                          Positioned(
                                              top: 166,
                                              left: 23,
                                              child: Divider(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  thickness: 1)),
                                          Positioned(
                                              top: 140,
                                              left: 23,
                                              child: Text(
                                                '12:44 PM - Nov 22, 2021',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        200, 204, 221, 1),
                                                    fontFamily: 'Greycliff CF',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 84,
                                              left: 24,
                                              child: Text(
                                                'Great ! Hows everything going with you?',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Greycliff CF',
                                                    fontSize: 16,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1.5),
                                              )),
                                          Positioned(
                                              top: 24,
                                              left: 24,
                                              child: Container(
                                                  width: 129,
                                                  height: 48,
                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 25,
                                                            left: 60,
                                                            child: Text(
                                                              '@vaishalib',
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          200,
                                                                          204,
                                                                          221,
                                                                          1),
                                                                  fontFamily:
                                                                      'Greycliff CF',
                                                                  fontSize: 14,
                                                                  letterSpacing:
                                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  height: 1),
                                                            )),
                                                        Positioned(
                                                            top: 5,
                                                            left: 60,
                                                            child: Text(
                                                              'Vaishali B',
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          1),
                                                                  fontFamily:
                                                                      'Greycliff CF',
                                                                  fontSize: 16,
                                                                  letterSpacing:
                                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  height: 1),
                                                            )),
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: Container(
                                                                width: 48,
                                                                height: 48,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: AssetImage(
                                                                          'assets/images/Unsplashzz5lqevsmy.png'),
                                                                      fit: BoxFit
                                                                          .fitWidth),
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.elliptical(
                                                                              48,
                                                                              48)),
                                                                ))),
                                                      ]))),
                                        ])),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  ]))),
          Positioned(
              top: 808,
              left: 326,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48),
                    topRight: Radius.circular(48),
                    bottomLeft: Radius.circular(48),
                    bottomRight: Radius.circular(48),
                  ),
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(),
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 3.3333332538604736,
                              left: 8,
                              child: SvgPicture.asset(
                                  'assets/images/vector.svg',
                                  semanticsLabel: 'vector')),
                          Positioned(
                              top: 8,
                              left: 3.3333332538604736,
                              child: SvgPicture.asset(
                                  'assets/images/vector.svg',
                                  semanticsLabel: 'vector')),
                        ])),
                  ],
                ),
              )),
          Positioned(
              top: 48,
              left: 32,
              child: Container(
                  width: 350,
                  height: 48,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 302,
                        child: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Profilepic.png'),
                                  fit: BoxFit.fitWidth),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(48, 48)),
                            ))),
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 48,
                            height: 48,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 18),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        SvgPicture.asset(
                                            'assets/images/vector.svg',
                                            semanticsLabel: 'vector'),
                                        SizedBox(height: 6),
                                        SvgPicture.asset(
                                            'assets/images/vector.svg',
                                            semanticsLabel: 'vector'),
                                        SizedBox(height: 6),
                                        SvgPicture.asset(
                                            'assets/images/vector.svg',
                                            semanticsLabel: 'vector'),
                                      ],
                                    ),
                                  )),
                            ]))),
                  ]))),
        ]));
  }
}
