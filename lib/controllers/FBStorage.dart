// import 'dart:io';

// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/foundation.dart';

// class FBStorage {
//   static Future<String> uploadPostImages({required String postID,required File postImageFile}) async {
//     try {
//       String fileName = 'images/$postID/postImage';
//       Reference reference = FirebaseStorage.instance.ref().child(fileName);
//        uploadTask = reference.putFile(postImageFile);
//       StorageTaskSnapshot storageTaskSnapshot = await uploadTask.onComplete;
//       String postIageURL = await reference.putFile(postImageFile).whenComplete(() => null) ref.getDownloadURL();
//       return postIageURL;
//     }catch(e) {
//       return null;
//     }
//   }
// }