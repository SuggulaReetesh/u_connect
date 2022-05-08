import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator LoginWidget - FRAME

     return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
                      child: Center(
                          child: Column(children: <Widget>[
                        SizedBox(
                          height: 120.h,
                        ),
                        Text(
                          'Hello!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'GreycliffCF',
                              fontSize: 36.sp,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.0555555555555556.h),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Wellcome to Venture Network,\n you’ve been missing so much!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(200, 204, 221, 1),
                              fontFamily: 'GreycliffCF',
                              fontSize: 18.sp,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5555555555555556.h),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormField(
                          controller: email,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Email';
                            }
                            return null;
                          },
                          decoration: decoration('Enter Email id'),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextFormField(
                          controller: password,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            }
                            return null;
                          },
                          decoration: decoration('Password'),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 60.h,
                          child: ElevatedButton(
                              onPressed: () {
                                
                              },
                              child: Text("SignUp")),
                        ), 
                        SizedBox(height: 70.h),
                        Text(
                          'already a member? Login',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'GreycliffCF',
                              fontSize: 16.sp,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.7142857142857142.h),
                        ),
                      ])),
                    )))));
  }

  InputDecoration decoration(String placeholder) {
    return InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(4298190080))),
        hintText: placeholder,
        fillColor: Color.fromRGBO(31, 31, 31, 1),
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              topRight: Radius.circular(8.r),
              bottomLeft: Radius.circular(8.r),
              bottomRight: Radius.circular(8.r),
            )));
  }
}
