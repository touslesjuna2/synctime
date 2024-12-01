import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBD0pj5hR0PDlIkIOQB-2_DvF0EnCTA5ME",
            authDomain: "synctime-4929c.firebaseapp.com",
            projectId: "synctime-4929c",
            storageBucket: "synctime-4929c.firebasestorage.app",
            messagingSenderId: "155589309189",
            appId: "1:155589309189:web:c346e5ac5900f968cbbd6c",
            measurementId: "G-PML9XX1XRG"));
  } else {
    await Firebase.initializeApp();
  }
}
