import 'package:attendance_system/loginscreen.dart';
import 'package:attendance_system/role.dart';
import 'package:attendance_system/signUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      //     home : const KeyboardVisibilityProvider (
      //       child: LoginScreen(),
      // ),
      home : const KeyboardVisibilityProvider(
          child: SignUp()),
    );
  }
}

