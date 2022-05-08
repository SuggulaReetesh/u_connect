import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostWidget extends StatefulWidget {
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator PostWidget - FRAME

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
              top: 824,
              left: 24,
              child: Container(
                  width: 366,
                  height: 48,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 294,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                              color: Color.fromRGBO(31, 31, 31, 1),
                            ))),
                    Positioned(
                        top: 12,
                        left: 48,
                        child: Text(
                          'Type a message',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(57, 57, 57, 1),
                              fontFamily: 'Greycliff CF',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5),
                        )),
                    Positioned(
                        top: 0,
                        left: 12,
                        child: Container(
                            width: 354,
                            height: 48,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 306,
                                  child: Container(
                                      width: 48,
                                      height: 48,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 48,
                                                height: 48,
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      255, 204, 42, 1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              48, 48)),
                                                ))),
                                        Positioned(
                                            top: 15,
                                            left: 15.75,
                                            child: Container(
                                                width: 18,
                                                height: 18,
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      255, 204, 42, 1),
                                                ),
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 4.5,
                                                      left: 6.75,
                                                      child: SvgPicture.asset(
                                                          'assets/images/vector.svg',
                                                          semanticsLabel:
                                                              'vector')),
                                                ]))),
                                      ]))),
                              Positioned(
                                  top: 12,
                                  left: 0,
                                  child: Container(
                                      width: 24,
                                      height: 24,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 24,
                                                height: 24,
                                                decoration: BoxDecoration(),
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 1.3877756595611572,
                                                      left: 2.0016634464263916,
                                                      child: SvgPicture.asset(
                                                          'assets/images/vector.svg',
                                                          semanticsLabel:
                                                              'vector')),
                                                ]))),
                                      ]))),
                            ]))),
                  ]))),
          Positioned(
              top: 338,
              left: 0,
              child: Container(
                  width: 414,
                  height: 462,
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
                              horizontal: 32, vertical: 24),
                          child: Row(
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
                                        width: 318,
                                        height: 84,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 44,
                                              child: Container(
                                                  width: 274,
                                                  height: 84,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(16),
                                                      topRight:
                                                          Radius.circular(16),
                                                      bottomLeft:
                                                          Radius.circular(16),
                                                      bottomRight:
                                                          Radius.circular(16),
                                                    ),
                                                    color: Color.fromRGBO(
                                                        31, 31, 31, 1),
                                                  ),
                                                  child:
                                                      Stack(children: <Widget>[
                                                    Positioned(
                                                        top: 24,
                                                        left: 24,
                                                        child: Text(
                                                          'Great !Hows everything going with you?',
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(255,
                                                                      255, 255, 1),
                                                              fontFamily:
                                                                  'Greycliff CF',
                                                              fontSize: 14,
                                                              letterSpacing:
                                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              height:
                                                                  1.2857142857142858),
                                                        )),
                                                  ]))),
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 32,
                                                  height: 32,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/Profilepic.png'),
                                                        fit: BoxFit.fitWidth),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.elliptical(
                                                                32, 32)),
                                                  ))),
                                        ])),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  ]))),
          Positioned(
              top: 192,
              left: 32,
              child: Container(
                  width: 350,
                  height: 146,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 146,
                        left: 0,
                        child: Divider(
                            color: Color.fromRGBO(85, 85, 85, 1),
                            thickness: 1)),
                    Positioned(
                        top: 110,
                        left: 0,
                        child: Container(
                            width: 72,
                            height: 24,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 48,
                                  child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 2,
                                            left: 2,
                                            child: Container(
                                                width: 20,
                                                height: 20,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 20,
                                                          height: 20,
                                                          child: Stack(
                                                              children: <
                                                                  Widget>[
                                                                Positioned(
                                                                    top: 0,
                                                                    left: 0,
                                                                    child: SvgPicture.asset(
                                                                        'assets/images/vector.svg',
                                                                        semanticsLabel:
                                                                            'vector')),
                                                              ]))),
                                                ]))),
                                      ])))
                            ]))),
                    Positioned(
                        top: 98,
                        left: 0,
                        child: Divider(
                            color: Color.fromRGBO(85, 85, 85, 1),
                            thickness: 1)),
                    Positioned(
                        top: 72,
                        left: 0,
                        child: Text(
                          '12:44 PM - Nov 22, 2021',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(200, 204, 221, 1),
                              fontFamily: 'Greycliff CF',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 0,
                        left: 1,
                        child: Text(
                          'Great !Hows everything going with you?',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Greycliff CF',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5),
                        )),
                  ]))),
          Positioned(
              top: 120,
              left: 32,
              child: Container(
                  width: 129,
                  height: 48,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 25,
                        left: 60,
                        child: Text(
                          '@vaishalib',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(200, 204, 221, 1),
                              fontFamily: 'Greycliff CF',
                              fontSize: 14,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 5,
                        left: 60,
                        child: Text(
                          'Vaishali B',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Greycliff CF',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Unsplashzz5lqevsmy.png'),
                                  fit: BoxFit.fitWidth),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(48, 48)),
                            ))),
                  ]))),
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
                                      width: 48,
                                      height: 48,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 48,
                                                height: 48,
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(0, 0, 0,
                                                      0.699999988079071),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              48, 48)),
                                                ))),
                                        Positioned(
                                            top: 12,
                                            left: 12,
                                            child: Container(
                                                width: 24,
                                                height: 24,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Stack(
                                                              children: <
                                                                  Widget>[
                                                                Positioned(
                                                                    top: 12,
                                                                    left: 5,
                                                                    child: SvgPicture.asset(
                                                                        'assets/images/vector.svg',
                                                                        semanticsLabel:
                                                                            'vector')),
                                                                Positioned(
                                                                    top: 5,
                                                                    left: 5,
                                                                    child: SvgPicture.asset(
                                                                        'assets/images/vector.svg',
                                                                        semanticsLabel:
                                                                            'vector')),
                                                              ]))),
                                                ]))),
                                      ]))),
                            ]))),
                  ]))),
        ]));
  }
}
