import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCWD2tfcUuAIGOMGjcexuejCz5VYRFlZ6U",
            authDomain: "synergy-e6v43n.firebaseapp.com",
            projectId: "synergy-e6v43n",
            storageBucket: "synergy-e6v43n.appspot.com",
            messagingSenderId: "808731476068",
            appId: "1:808731476068:web:8b4bcc0b1fa94403f19f71"));
  } else {
    await Firebase.initializeApp();
  }
}
