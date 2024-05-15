import 'package:course_learning_app/admin/addquize.dart';
import 'package:course_learning_app/admin/admin_homepage.dart';
import 'package:course_learning_app/admin/adminlogin.dart';
import 'package:course_learning_app/firebase_options.dart';
import 'package:course_learning_app/pages/Learning_resources.dart';
import 'package:course_learning_app/pages/homeu_1.dart';
import 'package:course_learning_app/pages/user_login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main () async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
    ); 
  }
}

