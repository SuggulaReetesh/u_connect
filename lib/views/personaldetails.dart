import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:uconnect/models/PersonlDetails.dart';
import 'package:uconnect/views/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';

class CompleteyourprofilepersonaldetailsWidget extends StatefulWidget {
  @override
  _CompleteyourprofilepersonaldetailsWidgetState createState() =>
      _CompleteyourprofilepersonaldetailsWidgetState();
}

class _CompleteyourprofilepersonaldetailsWidgetState
    extends State<CompleteyourprofilepersonaldetailsWidget> {
  DateTime _selectedDate = DateTime.now();
  late String stateValue;
  late String cityValue;
  late String countryValue;
  PersonalDetailsModel _currentMyData = new PersonalDetailsModel();
  var username = new TextEditingController();
  var dateofBirth = new TextEditingController();
  var city = new TextEditingController();
  var state = new TextEditingController();
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
                          controller: username,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Username';
                            }
                            return null;
                          },
                          decoration: decoration('Username'),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextFormField(
                          controller: dateofBirth,
                          readOnly: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Date of Birth';
                            }
                            return null;
                          },
                          onTap: () {
                            _selectDate(context);
                          },
                          decoration: decoration('Date of birth'),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextFormField(
                          controller: city,
                          onTap: (){},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter city';
                            }
                            return null;
                          },
                          decoration: decoration('City'),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextFormField(
                          controller: state,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter state';
                            }
                            return null;
                          },
                          decoration: decoration('State'),
                        ),
                        SizedBox(
                          height: 70.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 60.h,
                          child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _currentMyData.userName =
                                      username.text.toString();
                                  _currentMyData.dateOfBirth =
                                      dateofBirth.text.toString();
                                  _currentMyData.city = city.text.toString();
                                  // DatabaseMethods().addManulaRegisterdUserInfoToDB(_currentMyData).whenComplete(() =>
                                  // Navigator.pushReplacement(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             CompleteyourprofilepersonaldetailsWidget()))
                                  // ).then((value) => CircularProgressIndicator() );

                                }
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

  Future<void> _selectDate(BuildContext context) async {
    DateTime? newSelectedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate != null ? _selectedDate : DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
    );
    if (newSelectedDate != null) {
      _selectedDate = newSelectedDate;
      dateofBirth
        ..text = DateFormat.yMMMd().format(_selectedDate)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: dateofBirth.text.length, affinity: TextAffinity.upstream));
    }
  }
}
