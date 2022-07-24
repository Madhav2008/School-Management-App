import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_management_app/Screens/Attendance/Attendance.dart';
import 'package:school_management_app/Screens/Exam/Exam_Result.dart';
import 'package:school_management_app/Screens/Leave_Apply/Leave_apply.dart';
import 'package:school_management_app/Screens/Profile_Screen.dart';
import 'package:school_management_app/Screens/drawer.dart';
import 'package:school_management_app/Widgets/AppBar.dart';
import 'package:school_management_app/Widgets/BouncingButton.dart';
import 'package:school_management_app/Widgets/DashboardCards.dart';
import 'package:school_management_app/Widgets/UserDetailCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late Animation animation, delayedAnimation, muchDelayedAnimation, LeftCurve;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Firebase.initializeApp();
    SystemChrome.setEnabledSystemUIOverlays(
      [],
    );

    animationController =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );

    delayedAnimation = Tween(begin: -1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(
          0.5,
          1.0,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );

    muchDelayedAnimation = Tween(begin: -1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(
          0.8,
          1.0,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );

    LeftCurve = Tween(begin: -1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(
          0.5,
          1.0,
          curve: Curves.easeInOut,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final TextEditingController _search = TextEditingController();

    animationController.forward();
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, child) {
        final GlobalKey<ScaffoldState> _scaffoldKey =
            GlobalKey<ScaffoldState>();
        return Scaffold(
          key: _scaffoldKey,
          drawer: const NavigationDrawerWidget(),
          appBar: CommonAppBar(
            notificationenabled: true,
            title: "Dashboard",
          ),
          body: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Opacity(
                  opacity: 0.3,
                  child: Image.asset(
                    '../assets/images/back.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListView(
                children: [
                  UserDetailCard(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 10.0,
                    ),
                    child: Material(
                      // elevation: 18,
                      shadowColor: Colors.black,
                      child: TextField(
                        // onChanged: (value) => _runFilter(value),
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                            // borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          focusColor: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      30.0,
                      10,
                      30,
                      10,
                    ),
                    child: Container(
                      alignment: Alignment(
                        1.0,
                        0,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          right: 20.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Transform(
                              transform: Matrix4.translationValues(
                                muchDelayedAnimation.value * width,
                                0,
                                0,
                              ),
                              child: Bouncing(
                                onPress: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Attendance(),
                                    ),
                                  );
                                },
                                child: DashboardCard(
                                  name: "Attendance",
                                  imgpath: "../assets/images/attendance.png",
                                ),
                              ),
                            ),
                            Transform(
                              transform: Matrix4.translationValues(
                                delayedAnimation.value * width,
                                0,
                                0,
                              ),
                              child: Bouncing(
                                onPress: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Profile(),
                                    ),
                                  );
                                },
                                child: DashboardCard(
                                  name: "Profile",
                                  imgpath: "../assets/images/profile.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      30.0,
                      10,
                      30,
                      10,
                    ),
                    child: Container(
                      alignment: Alignment(1.0, 0),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          right: 20.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Transform(
                              transform: Matrix4.translationValues(
                                muchDelayedAnimation.value * width,
                                0,
                                0,
                              ),
                              child: Bouncing(
                                onPress: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          ExamResult(),
                                    ),
                                  );
                                },
                                child: DashboardCard(
                                  name: "Exam",
                                  imgpath: "../assets/images/exam.png",
                                ),
                              ),
                            ),
                            Transform(
                              transform: Matrix4.translationValues(
                                delayedAnimation.value * width,
                                0,
                                0,
                              ),
                              child: Bouncing(
                                onPress: () {},
                                child: DashboardCard(
                                  name: "TimeTable",
                                  imgpath: "../assets/images/calendar.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      30.0,
                      10,
                      30,
                      10,
                    ),
                    child: Container(
                      alignment: Alignment(1.0, 0),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          right: 20.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Transform(
                              transform: Matrix4.translationValues(
                                muchDelayedAnimation.value * width,
                                0,
                                0,
                              ),
                              child: Bouncing(
                                onPress: () {},
                                child: DashboardCard(
                                  name: "Library",
                                  imgpath: "../assets/images/library.png",
                                ),
                              ),
                            ),
                            Transform(
                              transform: Matrix4.translationValues(
                                delayedAnimation.value * width,
                                0,
                                0,
                              ),
                              child: Bouncing(
                                onPress: () {},
                                child: DashboardCard(
                                  name: "Track Bus",
                                  imgpath: "../assets/images/bus.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      30.0,
                      10,
                      30,
                      10,
                    ),
                    child: Container(
                      alignment: Alignment(
                        1.0,
                        0,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          right: 20.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Transform(
                              transform: Matrix4.translationValues(
                                muchDelayedAnimation.value * width,
                                0,
                                0,
                              ),
                              child: Bouncing(
                                onPress: () {},
                                child: DashboardCard(
                                  name: "Activity",
                                  imgpath: "../assets/images/activity.png",
                                ),
                              ),
                            ),
                            Transform(
                              transform: Matrix4.translationValues(
                                delayedAnimation.value * width,
                                0,
                                0,
                              ),
                              child: Bouncing(
                                onPress: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          LeaveApply(),
                                    ),
                                  );
                                },
                                child: DashboardCard(
                                  name: "Apply Leave",
                                  imgpath: "../assets/images/leave_apply.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
