import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotpasswordWidget extends StatefulWidget {
  @override
  _ForgotpasswordWidgetState createState() => _ForgotpasswordWidgetState();
}

class _ForgotpasswordWidgetState extends State<ForgotpasswordWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ForgotpasswordWidget - FRAME

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
              top: 48,
              left: 32,
              child: Container(
                  width: 350,
                  height: 466,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 402,
                        left: 0,
                        child: Container(
                            width: 350,
                            height: 64,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 350,
                                      height: 64,
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
                                  top: 16,
                                  left: 141,
                                  child: Text(
                                    'Recover',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Greycliff CF',
                                        fontSize: 18,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.7777777777777777),
                                  )),
                            ]))),
                    Positioned(
                        top: 0,
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
                                          top: 12,
                                          left: 5,
                                          child: SvgPicture.asset(
                                              'assets/images/vector.svg',
                                              semanticsLabel: 'vector'),
                                        ),
                                        Positioned(
                                            top: 5,
                                            left: 5,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                      ]))),
                            ]))),
                  ]))),
          Positioned(
              top: 338,
              left: 32,
              child: Container(
                  width: 350,
                  height: 64,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 350,
                            height: 64,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 350,
                                      height: 64,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                        color: Color.fromRGBO(31, 31, 31, 1),
                                      ))),
                              Positioned(
                                  top: 18,
                                  left: 24,
                                  child: Text(
                                    'Enter email id',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(85, 85, 85, 1),
                                        fontFamily: 'Greycliff CF',
                                        fontSize: 16,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.75),
                                  )),
                            ]))),
                  ]))),
          Positioned(
              top: 206,
              left: 48,
              child: Text(
                'Reset link to your password would be sent to your verified email id. Check your inbox and spam for the mail.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(85, 85, 85, 1),
                    fontFamily: 'Lato',
                    fontSize: 18,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5555555555555556),
              )),
          Positioned(
              top: 160,
              left: 48,
              child: Text(
                'Forgot Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Greycliff CF',
                    fontSize: 36,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.0555555555555556),
              )),
        ]));
  }
}
