// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:uconnect/helperfunctions/sharedpref_helper.dart';
// import 'package:uconnect/services/auth.dart';
// import 'package:uconnect/services/database.dart';
// import 'package:uconnect/views/signin.dart';

// import 'chatscreen.dart';


// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   bool isSearching = false;
//   late String myName, myProfilePic, myUserName, myEmail;
//   //late Stream usersStream, chatRoomsStream;

//   TextEditingController searchUsernameEditingController =
//       TextEditingController();

//   getMyInfoFromSharedPreference() async {
//     myName = (await SharedPreferenceHelper().getDisplayName())!;
//     myProfilePic = (await SharedPreferenceHelper().getUserProfileUrl())!;
//     myUserName = (await SharedPreferenceHelper().getUserName())!;
//     myEmail = (await SharedPreferenceHelper().getUserEmail())!;
//     setState(() {});
//   }

//   getChatRoomIdByUsernames(String a, String b) {
//     if (a.substring(0, 1).codeUnitAt(0) > b.substring(0, 1).codeUnitAt(0)) {
//       return "$b\_$a";
//     } else {
//       return "$a\_$b";
//     }
//   }

//   onSearchBtnClick() async {
//     isSearching = true;
//     setState(() {});
//     usersStream = await DatabaseMethods()
//         .getUserByUserName(searchUsernameEditingController.text);

//     setState(() {});
//   }

//   Widget chatRoomsList() {
//     return StreamBuilder(
//       stream: chatRoomsStream,
//       builder: (context, snapshot) {
//         return snapshot.hasData
//             ? ListView.builder(
//                 itemCount: snapshot.data?.length,
//                 shrinkWrap: true,
//                 itemBuilder: (context, index) {
//                   DocumentSnapshot ds = snapshot.data?.docs[index];
//                   return ChatRoomListTile(ds["lastMessage"], ds.id, myUserName);
//                 })
//             : Center(child: CircularProgressIndicator());
//       },
//     );
//   }

//   Widget searchListUserTile({required String profileUrl, name, username, email}) {
//     return GestureDetector(
//       onTap: () {
//         var chatRoomId = getChatRoomIdByUsernames(myUserName, username);
//         Map<String, dynamic> chatRoomInfoMap = {
//           "users": [myUserName, username]
//         };
//         DatabaseMethods().createChatRoom(chatRoomId, chatRoomInfoMap);
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => ChatScreen(username, name)));
//       },
//       child: Container(
//         margin: EdgeInsets.symmetric(vertical: 8),
//         child: Row(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(40),
//               child: Image.network(
//                 profileUrl,
//                 height: 40,
//                 width: 40,
//               ),
//             ),
//             SizedBox(width: 12),
//             Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [Text(name), Text(email)])
//           ],
//         ),
//       ),
//     );
//   }


//   Widget searchUsersList() {
//     return StreamBuilder(
//       stream: usersStream,
//       builder: (context, snapshot) {
//         return snapshot.hasData
//             ? ListView.builder(
//                 itemCount: snapshot.data!.docs.length,
//                 shrinkWrap: true,
//                 itemBuilder: (context, index) {
//                   DocumentSnapshot ds = snapshot.data.docs[index];
//                   return searchListUserTile(
//                       profileUrl: ds["imgUrl"],
//                       name: ds["name"],
//                       email: ds["email"],
//                       username: ds["username"]);
//                 },
//               )
//             : Center(
//                 child: CircularProgressIndicator(),
//               );
//       },
//     );
//   }

//   getChatRooms() async {
//     chatRoomsStream = await DatabaseMethods().getChatRooms();
//     setState(() {});
//   }

//   onScreenLoaded() async {
//     await getMyInfoFromSharedPreference();
//     getChatRooms();
//   }

//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

  

//   @override
//   void initState() {
//     onScreenLoaded();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       // appBar: AppBar(
//       //   title: Text("Messenger Clone"),
//       //   actions: [
//       //     InkWell(
//       //       onTap: () {
//       //         AuthMethods().signOut().then((s) {
//       //           Navigator.pushReplacement(
//       //               context, MaterialPageRoute(builder: (context) => SignIn()));
//       //         });
//       //       },
//       //       child: Container(
//       //           padding: EdgeInsets.symmetric(horizontal: 16),
//       //           child: Icon(Icons.exit_to_app)),
//       //     )
//       //   ],
//       // ),
//       body: Container(
//         margin: EdgeInsets.symmetric(horizontal: 20),
        
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 isSearching
//                     ? GestureDetector(
//                         onTap: () {
//                           isSearching = false;
//                           searchUsernameEditingController.text = "";
//                           setState(() {});
//                         },
//                         child: Padding(
//                             padding: EdgeInsets.only(right: 12),
//                             child: Icon(Icons.arrow_back)),
//                       )
//                     : Container(),
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.symmetric(vertical: 16),
//                     padding: EdgeInsets.symmetric(horizontal: 16),
//                     decoration: BoxDecoration(
//                         border: Border.all(
//                             color: Colors.grey,
//                             width: 1,
//                             style: BorderStyle.solid),
//                         borderRadius: BorderRadius.circular(24)),
//                     child: Row(
//                       children: [
//                         Expanded(
//                             child: TextField(
//                           controller: searchUsernameEditingController,
//                           decoration: InputDecoration(
//                               border: InputBorder.none, hintText: "username"),
//                         )),
//                         GestureDetector(
//                             onTap: () {
//                               if (searchUsernameEditingController.text != "") {
//                                 onSearchBtnClick();
//                               }
//                             },
//                             child: Icon(Icons.search))
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             isSearching ? searchUsersList() : chatRoomsList(),
//           ],
//         ),
        
//       ),
//       bottomNavigationBar: ClipRRect(
//          borderRadius: const BorderRadius.all(
//         Radius.circular(12),
//       ),
//         child: BottomNavigationBar(
//           backgroundColor: Colors.yellow,
//           showSelectedLabels: true,   // <-- HERE
//   showUnselectedLabels: false,
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.message,
//               color: Colors.black,),
//               label: 'Messaging',
//               backgroundColor: Colors.yellow,
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.group,
//               color: Colors.black,),
//               label: 'Groups',
//               backgroundColor: Colors.yellow,
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.calendar_today,
//               color: Colors.black,),
//               label: 'Events',
//               backgroundColor: Colors.yellow,
//             ),
//              BottomNavigationBarItem(
//               icon: Icon(Icons.settings,
//               color: Colors.black,),
//               label: 'Settings',
//               backgroundColor: Colors.yellow,
//             ),
//           ],
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.amber[800],
//           onTap: _onItemTapped,
//         ),
//       ), 
//     );
//   }
// }

// class ChatRoomListTile extends StatefulWidget {
//   final String lastMessage, chatRoomId, myUsername;
//   ChatRoomListTile(this.lastMessage, this.chatRoomId, this.myUsername);

//   @override
//   _ChatRoomListTileState createState() => _ChatRoomListTileState();
// }

// class _ChatRoomListTileState extends State<ChatRoomListTile> {
//   String profilePicUrl = "", name = "", username = "";

//   getThisUserInfo() async {
//     username =
//         widget.chatRoomId.replaceAll(widget.myUsername, "").replaceAll("_", "");
//     QuerySnapshot querySnapshot = await DatabaseMethods().getUserInfo(username);
//     print(
//         "something bla bla ${querySnapshot.docs[0].id} ${querySnapshot.docs[0]["name"]}  ${querySnapshot.docs[0]["imgUrl"]}");
//     name = "${querySnapshot.docs[0]["name"]}";
//     profilePicUrl = "${querySnapshot.docs[0]["imgUrl"]}";
//     setState(() {});
//   }

//   @override
//   void initState() {
//     getThisUserInfo();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => ChatScreen(username, name)));
//       },
//       child: Container(
//         margin: EdgeInsets.symmetric(vertical: 8),
//         child: Row(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(30),
//               child: Image.network(
//                 profilePicUrl,
//                 height: 40,
//                 width: 40,
//               ),
//             ),
//             SizedBox(width: 12),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   name,
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 SizedBox(height: 3),
//                 Text(widget.lastMessage)
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


