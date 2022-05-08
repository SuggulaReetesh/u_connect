import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uconnect/theme/theme.dart';
import 'package:uconnect/views/Login.dart';
import 'package:uconnect/views/OnBoarding1.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void>  main() async{
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Set the fit size (fill in the screen size of the device in the design) If the design is based on the size of the iPhone6 ​​(iPhone6 ​​750*1334)
    return ScreenUtilInit(
      designSize: Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        title: 'Flutter_ScreenUtil',
        theme: darkThemeData(context),
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
       // home: OnBoardScreen(),
        home: LoginWidget()
      ),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     printScreenInformation();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 // Using Extensions
//                 Container(
//                   padding: EdgeInsets.all(10.w),
//                   width: 0.5.sw,
//                   height: 200.h,
//                   color: Colors.red,
//                   child: Text(
//                     'My actual width: ${0.5.sw}dp \n\n'
//                     'My actual height: ${200.h}dp',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 12.sp,
//                     ),
//                   ),
//                 ),
//                 // Without using Extensions
//                 Container(
//                   padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
//                   width: ScreenUtil().setWidth(180),
//                   height: ScreenUtil().setHeight(200),
//                   color: Colors.blue,
//                   child: Text(
//                     'My design draft width: 180dp\n\n'
//                     'My design draft height: 200dp',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: ScreenUtil().setSp(12),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               padding: EdgeInsets.all(10.w),
//               width: 100.r,
//               height: 100.r,
//               color: Colors.green,
//               child: Text(
//                 'I am a square with a side length of 100',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 12.sp,
//                 ),
//               ),
//             ),
//             Text('Device width:${ScreenUtil().screenWidth}dp'),
//             Text('Device height:${ScreenUtil().screenHeight}dp'),
//             Text('Device pixel density:${ScreenUtil().pixelRatio}'),
//             Text('Bottom safe zone distance:${ScreenUtil().bottomBarHeight}dp'),
//             Text('Status bar height:${ScreenUtil().statusBarHeight}dp'),
//             Text(
//               'The ratio of actual width to UI design:${ScreenUtil().scaleWidth}',
//               textAlign: TextAlign.center,
//             ),
//             Text(
//               'The ratio of actual height to UI design:${ScreenUtil().scaleHeight}',
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(
//               height: 10.h,
//             ),
//             Text('System font scaling factor:${ScreenUtil().textScaleFactor}'),
//             SizedBox(height: 5),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   '16sp, will not change with the system.',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 16.sp,
//                   ),
//                   textScaleFactor: 1.0,
//                 ),
//                 Text(
//                   '16sp,if data is not set in MediaQuery,my font size will change with the system.',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 16.sp,
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   void printScreenInformation() {
//     print('Device width dp:${1.sw}dp');
//     print('Device height dp:${1.sh}dp');
//     print('Device pixel density:${ScreenUtil().pixelRatio}');
//     print('Bottom safe zone distance dp:${ScreenUtil().bottomBarHeight}dp');
//     print('Status bar height dp:${ScreenUtil().statusBarHeight}dp');
//     print('The ratio of actual width to UI design:${ScreenUtil().scaleWidth}');
//     print(
//         'The ratio of actual height to UI design:${ScreenUtil().scaleHeight}');
//     print('System font scaling:${ScreenUtil().textScaleFactor}');
//     print('0.5 times the screen width:${0.5.sw}dp');
//     print('0.5 times the screen height:${0.5.sh}dp');
//     print('Screen orientation:${ScreenUtil().orientation}');
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage>  with TickerProviderStateMixin{

//   TabController _tabController;
//   MyProfileData myData;

//   bool _isLoading = false;

//   @override
//   void initState() {
//     FBCloudMessaging.instance.takeFCMTokenWhenAppLaunch();
//     FBCloudMessaging.instance.initLocalNotification();
//     _tabController = new TabController(vsync: this, length: 2);
//     _tabController.addListener(_handleTabSelection);
//     _takeMyData();
//     super.initState();
//   }

//   Future<void> _takeMyData() async{
//     setState(() {
//       _isLoading = true;
//     });
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String myThumbnail;
//     String myName;
//     if (prefs.get('myThumbnail') == null) {
//       String tempThumbnail = iconImageList[Random().nextInt(50)];
//       prefs.setString('myThumbnail',tempThumbnail);
//       myThumbnail = tempThumbnail;
//     }else{
//       myThumbnail = prefs.get('myThumbnail');
//     }

//     if (prefs.get('myName') == null) {
//       String tempName = Utils.getRandomString(8);
//       prefs.setString('myName',tempName);
//       myName = tempName;
//     }else{
//       myName = prefs.get('myName');
//     }

//     setState(() {
//       myData = MyProfileData(
//           myThumbnail: myThumbnail,
//           myName: myName,
//           myLikeList: prefs.getStringList('likeList'),
//           myLikeCommnetList: prefs.getStringList('likeCommnetList'),
//           myFCMToken: prefs.getString('FCMToken'),
//       );
//     });

//     setState(() {
//       _isLoading = false;
//     });
//   }

//   void _handleTabSelection() => setState(() {});

//   void onTabTapped(int index) {
//     setState(() {
//       _tabController.index = index;
//     });
//   }

//   void updateMyData(MyProfileData newMyData) {
//     setState(() {
//       myData = newMyData;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Thread example'),
//         centerTitle: true,
//       ),
//       body: Stack(
//         children: <Widget>[
//           TabBarView(
//             controller: _tabController,
//             children: [
//               ThreadMain(myData: myData,updateMyData: updateMyData,),
//               UserProfile(myData: myData,updateMyData: updateMyData,),
//             ]
//           ),
//           Utils.loadingCircle(_isLoading),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: onTabTapped,
//         currentIndex: _tabController.index,
//         selectedItemColor: Colors.amber[900],
//         unselectedItemColor: Colors.grey[800],
//         showUnselectedLabels: true,
//         items: [
//           BottomNavigationBarItem(
//             icon: new Icon(Icons.people),
//             title: new Text('Thread'),
//           ),
//           BottomNavigationBarItem(
//             icon: new Icon(Icons.account_circle),
//             title: new Text('Profile'),
//           ),
//         ],
//       ),
//     );
//   }
// }
