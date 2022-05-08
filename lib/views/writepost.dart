import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShareapostWidget extends StatefulWidget {
  @override
  _ShareapostWidgetState createState() => _ShareapostWidgetState();
}

class _ShareapostWidgetState extends State<ShareapostWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ShareapostWidget - FRAME

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
              top: 816,
              left: 32,
              child: Container(
                  width: 350,
                  height: 48,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 250,
                        child: Container(
                            width: 100,
                            height: 48,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 100,
                                      height: 48,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  255, 204, 42, 0.25),
                                              offset: Offset(0, 12),
                                              blurRadius: 40)
                                        ],
                                        color: Color.fromRGBO(255, 204, 42, 1),
                                      ))),
                              Positioned(
                                  top: 12,
                                  left: 32,
                                  child: Text(
                                    'Post',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Greycliff CF',
                                        fontSize: 18,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.3333333333333333),
                                  )),
                            ]))),
                    Positioned(
                        top: 12,
                        left: 0,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(),
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 3,
                                        left: 2,
                                        child: Container(
                                            width: 20,
                                            height: 18,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Container(
                                                      width: 20,
                                                      height: 18,
                                                      child: Stack(
                                                          children: <Widget>[
                                                            Positioned(
                                                                top: 0,
                                                                left: 0,
                                                                child: SvgPicture.asset(
                                                                    'assets/images/vector.svg',
                                                                    semanticsLabel:
                                                                        'vector')),
                                                          ]))),
                                            ]))),
                                  ])),
                              SizedBox(width: 24),
                              Container(
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
                                                          children: <Widget>[
                                                            Positioned(
                                                                top: 0,
                                                                left: 0,
                                                                child: SvgPicture.asset(
                                                                    'assets/images/vector.svg',
                                                                    semanticsLabel:
                                                                        'vector')),
                                                          ]))),
                                            ]))),
                                  ])),
                            ],
                          ),
                        )),
                  ]))),
          Positioned(
              top: 192,
              left: 48,
              child: Text(
                'What do you want to talk about?',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    fontFamily: 'Greycliff CF',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 120,
              left: 48,
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
                  width: 230,
                  height: 48,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 8,
                        left: 121,
                        child: Text(
                          'Share a post',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Greycliff CF',
                              fontSize: 20,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.6),
                        )),
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
