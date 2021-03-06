import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:school_management_app/Screens/Forget_Password_Screen.dart';
import 'package:school_management_app/Screens/Navigation_Screen.dart';
import 'package:school_management_app/Screens/Register_Screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _visible = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _visible = true;
      });
    });
    return Scaffold(
      body: SingleChildScrollView(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(seconds: 1),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  '../assets/images/Login.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Image.asset(
                      "../assets/images/Logo.png",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Text(
                    'School',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 70),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextField(
                      controller: emailController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blueAccent,
                            width: 0.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 0.0,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blueAccent,
                            width: 0.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 0.0,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: GestureDetector(
                        child: Text(
                          'Forget password?',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.blue.shade100,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgetScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () async {
                        // authService
                        //     .signInWithEmailAndPassword(
                        //         emailController.text, passwordController.text)
                        //     .then((auth) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Navigation(),
                          ),
                        );
                        Fluttertoast.showToast(
                          msg: "Login Successfully!!",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                        );
                        // }).catchError((error) {
                        //   showDialog(
                        //       context: context,
                        //       builder: (con) {
                        //         return AlertDialog(
                        //           title: Text("Error"),
                        //           content: Text(error.toString()),
                        //         );
                        //       });
                        // });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 50,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 55,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.blueAccent,
                                Colors.blue.shade700,
                                Colors.blue.shade800,
                                Colors.blue.shade900,
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.3,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Create new account?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.blue.shade100,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
