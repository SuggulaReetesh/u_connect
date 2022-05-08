import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotpasswordmessagemodalWidget extends StatefulWidget {
  @override
  _ForgotpasswordmessagemodalWidgetState createState() =>
      _ForgotpasswordmessagemodalWidgetState();
}

class _ForgotpasswordmessagemodalWidgetState
    extends State<ForgotpasswordmessagemodalWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ForgotpasswordmessagemodalWidget - FRAME

    return Container(
        width: 300,
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(255, 204, 42, 0.4000000059604645),
                offset: Offset(0, 0),
                blurRadius: 50)
          ],
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 48,
              left: 32,
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
                                          top: 6,
                                          left: 6,
                                          child: SvgPicture.asset(
                                              'assets/images/vector.svg',
                                              semanticsLabel: 'vector'),
                                        ),
                                        Positioned(
                                            top: 6,
                                            left: 6,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                      ]))),
                            ]))),
                  ]))),
          Positioned(
              top: 96,
              left: 32,
              child: Container(
                  width: 236,
                  height: 236,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 188,
                        left: 0,
                        child: Text(
                          'We have sent you a reset link on you registered mail id.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(200, 204, 221, 1),
                              fontFamily: 'Greycliff CF',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5),
                        )),
                    Positioned(
                        top: 104,
                        left: 0,
                        child: Text(
                          'Link Sent Successfully',
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
                    Positioned(
                        top: 0,
                        left: 82,
                        child: Text(
                          '🎉',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Greycliff CF',
                              fontSize: 72,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
        ]));
  }
}
