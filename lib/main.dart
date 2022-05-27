import 'package:flutter/material.dart';
import 'package:school_management_app/Screens/Splash_Screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Management',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue.shade900,
        primaryColor: Colors.blue.shade900
      ),
      home: SplashScreen(),
    );
  }
}
