import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC84cwkgCN6uHqlX45Rjvp1ocOp5U11f_I",
            authDomain: "to-do-2avq29.firebaseapp.com",
            projectId: "to-do-2avq29",
            storageBucket: "to-do-2avq29.firebasestorage.app",
            messagingSenderId: "65817611565",
            appId: "1:65817611565:web:355b55dbd2c503415c17a4"));
  } else {
    await Firebase.initializeApp();
  }
}
