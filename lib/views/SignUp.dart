import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uconnect/models/RegistrationModel.dart';
import 'package:uconnect/theme/constants.dart';

import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:uconnect/views/personaldetails.dart';

class SignupWidget extends StatefulWidget {
  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  late RegistrationModel _currentMyData;
  var email = new TextEditingController();
  var mobilenumber = new TextEditingController();
  var password = new TextEditingController();
  var confirmpassword = new TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator SignupWidget - FRAME
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
                width: 414.w,
                height: 896.h,
                child: Stack(children: <Widget>[
                  Positioned(
                      top: 160.h,
                      left: 48.w,
                      child: Container(
                          width: 318.w,
                          height: 102.h,
                          alignment: Alignment.center,
                          child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Positioned(
                                    top: 46.h,
                                    left: 70.w,
                                    child: Text(
                                      'Wellcome to Venture Network,\n you’ve been missing so much!',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(200, 204, 221, 1),
                                          fontFamily: 'GreycliffCF',
                                          fontSize: 18.sp,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5555555555555556.h),
                                    )),
                                Positioned(
                                    top: 0.h,
                                    left: 120.w,
                                    child: Text(
                                      'Hello!',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'GreycliffCF',
                                          fontSize: 36.sp,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.0555555555555556.h),
                                    )),
                              ]))),
                  Positioned(
                      top: 310.h,
                      left: 32.w,
                      child: Container(
                          width: 350.w,
                          height: 292.h,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 228.h,
                                left: 0.w,
                                child: Container(
                                    width: 350.w,
                                    height: 64.h,
                                    child: TextFormField(
                                      controller: confirmpassword,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please Confirm Password';
                                        }
                                        return null;
                                      },
                                      decoration:
                                          decoration('Confirm Password'),
                                    ))),
                            Positioned(
                                top: 152.h,
                                left: 0.w,
                                child: Container(
                                    width: 350.w,
                                    height: 64.h,
                                    child: TextFormField(
                                      controller: password,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter password';
                                        }
                                        return null;
                                      },
                                      decoration: decoration('Password'),
                                    ))),
                            Positioned(
                                top: 76.h,
                                left: 0.w,
                                child: Container(
                                  width: 350.w,
                                  height: 64.h,
                                  child: IntlPhoneField(
                                    controller: mobilenumber,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter valid mobienumber';
                                      }
                                      return null;
                                    },
                                    countries: ['IN'],
                                    disableLengthCheck: true,
                                    showCountryFlag: false,
                                    showDropdownIcon: false,
                                    decoration: decoration('Mobile number'),
                                    onChanged: (phone) {
                                      print(phone.completeNumber);
                                    },
                                    onCountryChanged: (country) {
                                      print('Country changed to: ' +
                                          country.name);
                                    },
                                  ),
                                )),
                            Positioned(
                                top: 0.h,
                                left: 0.w,
                                child: Container(
                                    width: 350.w,
                                    height: 64.h,
                                    child: TextFormField(
                                      controller: email,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter Email';
                                        }
                                        return null;
                                      },
                                      decoration: decoration('Enter Email id'),
                                    ))),
                          ]))),
                  Positioned(
                      top: 650.h,
                      left: 32.w,
                      child: Container(
                          width: 350.w,
                          height: 198.h,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 0.h,
                                left: 0.w,
                                child: Container(
                                    width: 350.w,
                                    height: 64.h,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0.h,
                                          left: 0.w,
                                          child: InkWell(
                                           
                                            onTap: () {
                                              print(email.value.toString());
                                               if (_formKey.currentState!.validate()){

                                                //  _currentMyData.Email = email.value.toString();
                                                //  _currentMyData.Mobilenumber = mobilenumber.value.toString();
                                                //  _currentMyData.Password = password.value.toString();
                                                 
                                              // Navigator.pushReplacement(
                                              //     context,
                                              //     MaterialPageRoute(
                                              //         builder: (context) =>
                                              //             CompleteyourprofilepersonaldetailsWidget()));
                                            }
                                              
                                            },
                                            child: Container(
                                                width: 350.w,
                                                height: 64.h,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(8.r),
                                                    topRight:
                                                        Radius.circular(8.r),
                                                    bottomLeft:
                                                        Radius.circular(8.r),
                                                    bottomRight:
                                                        Radius.circular(8.r),
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Color.fromRGBO(
                                                            255, 204, 42, 0.25),
                                                        offset: Offset(0, 12),
                                                        blurRadius: 40.r)
                                                  ],
                                                  color: Color.fromRGBO(
                                                      255, 204, 42, 1),
                                                )),
                                          )),
                                      Positioned(
                                          top: 16.h,
                                          left: 145.w,
                                          child: Text(
                                            'Signup',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'GreycliffCF',
                                                fontSize: 18.sp,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1.7777777777777777.h),
                                          )),
                                    ]))),
                            Positioned(
                                top: 174.h,
                                left: 90.w,
                                child: Container(
                                    width: 169.w,
                                    height: 24.h,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0.h,
                                          left: 0.w,
                                          child: Text(
                                            'already a member? Login',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontFamily: 'GreycliffCF',
                                                fontSize: 16.sp,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1.7142857142857142.h),
                                          )),
                                    ]))),
                          ]))),
                ])),
          ),
        ),
      ),
    );
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
