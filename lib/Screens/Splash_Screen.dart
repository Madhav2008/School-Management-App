import 'package:flutter/material.dart';
import 'package:school_management_app/Screens/Home_Screen.dart';
import 'package:school_management_app/Screens/Login_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          '../assets/splash.gif',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
        ),
      ),
    );
  }
}
