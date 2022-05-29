// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:school_management_app/Screens/Login_Screen.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    // var height = MediaQuery.of(context).size.height;
    const urlImage = '../assets/images/profile.png';
    // final color =
    //     Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
    //         ? Colors.white
    //         : Colors.black;
    // final Colors.white =
    //     Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
    //         ? Colors.grey.shade900
    //         : Colors.white;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        // child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: size.width,
                  // height: 250,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.blue.shade800,
                        Colors.blue.shade900,
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(38),
                      bottomLeft: Radius.circular(38),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back_ios_sharp,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => const HomeScreen(),
                                //   ),
                                // );
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'My Profile',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 45.0,
                              bottom: 10.0,
                            ),
                            // child: Icon(
                            //   Icons.account_circle,
                            //   size: size.width * 0.2,
                            //   color: Colors.white,
                            // ),
                            child: CircleAvatar(
                              radius: 55,
                              backgroundImage: NetworkImage(urlImage),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 30.0,
                                  left: 15.0,
                                ),
                                child: Text(
                                  "Madhav Arora",
                                  style: TextStyle(
                                    fontSize: size.width * 0.065,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  left: 15.0,
                                  bottom: 25.0,
                                ),
                                child: Text(
                                  "Class IX-F | Roll no: 15",
                                  style: TextStyle(
                                    fontSize: size.width * 0.040,
                                    color: Colors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: width,
                  // height: height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(38),
                      topLeft: Radius.circular(38),
                    ),
                  ),
                  // child: Align(
                  // alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Class',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 8.0,
                                      left: 8.0,
                                    ),
                                    child: Text(
                                      'IX-F',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 8.0,
                                      left: 8.0,
                                    ),
                                    child: Icon(
                                      Icons.lock,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 180,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5.0,
                                    bottom: 10.0,
                                    left: 10.0,
                                    right: 10.0,
                                  ),
                                  child: Divider(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Date Of Birth',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 8.0,
                                      left: 8.0,
                                    ),
                                    child: Text(
                                      '09-10-2008',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 8.0,
                                      left: 8.0,
                                    ),
                                    child: Icon(
                                      Icons.lock,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 180,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5.0,
                                    bottom: 10.0,
                                    left: 10.0,
                                    right: 10.0,
                                  ),
                                  child: Divider(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Date Of Admission',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 8.0,
                                      left: 8.0,
                                    ),
                                    child: Text(
                                      '04-10-20',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 8.0,
                                      left: 8.0,
                                    ),
                                    child: Icon(
                                      Icons.lock,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 210,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5.0,
                                    bottom: 10.0,
                                    left: 10.0,
                                    right: 10.0,
                                  ),
                                  child: Divider(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Academic Year',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 8.0,
                                      left: 8.0,
                                    ),
                                    child: Text(
                                      '2020-2021',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 8.0,
                                      left: 8.0,
                                    ),
                                    child: Icon(
                                      Icons.lock,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 210,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5.0,
                                    bottom: 10.0,
                                    left: 10.0,
                                    right: 10.0,
                                  ),
                                  child: Divider(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Student Name',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  left: 8.0,
                                ),
                                child: Text(
                                  'Madhav Arora',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  left: 8.0,
                                ),
                                child: Icon(
                                  Icons.lock,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5.0,
                              bottom: 10.0,
                              left: 10.0,
                              right: 10.0,
                            ),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Father Name',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  left: 8.0,
                                ),
                                child: Text(
                                  'Vijay Arora',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  left: 8.0,
                                ),
                                child: Icon(
                                  Icons.lock,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5.0,
                              bottom: 10.0,
                              left: 10.0,
                              right: 10.0,
                            ),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Mother Name',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  left: 8.0,
                                ),
                                child: Text(
                                  'Priya Arora',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  left: 8.0,
                                ),
                                child: Icon(
                                  Icons.lock,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5.0,
                              bottom: 10.0,
                              left: 10.0,
                              right: 10.0,
                            ),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Phone No.',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  left: 8.0,
                                ),
                                child: Text(
                                  '9999348666',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  left: 8.0,
                                ),
                                child: Icon(
                                  Icons.lock,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5.0,
                              bottom: 10.0,
                              left: 10.0,
                              right: 10.0,
                            ),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LoginScreen(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: size.height * 0.015),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade500,
                                    blurRadius: 3,
                                  )
                                ],
                                color: Colors.blue.shade900,
                                borderRadius: BorderRadius.circular(35),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 7,
                              ),
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // color: AppColor.primary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),
              ),
            )
          ],
        ),
      ),
      // ),
    );
  }
}
