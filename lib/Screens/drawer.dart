import 'package:flutter/material.dart';
import 'package:school_management_app/Screens/Attendance/Attendance.dart';
import 'package:school_management_app/Screens/Exam/Exam_Result.dart';
import 'package:school_management_app/Screens/Home_Screen.dart';
import 'package:school_management_app/Screens/Leave_Apply/Leave_apply.dart';
import 'package:school_management_app/Widgets/DrawerListTile.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        // color: Colors.red,
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen(),
                  ),
                );
              },
              child: DrawerListTile(
                imgpath: "../assets/images/home.png",
                name: "Home",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Attendance(),
                  ),
                );
              },
              child: DrawerListTile(
                imgpath: "../assets/images/attendance.png",
                name: "Attendance",
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: DrawerListTile(
                imgpath: "../assets/images/classroom.png",
                name: "Class work",
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: DrawerListTile(
                imgpath: "../assets/images/profile.png",
                name: "Profile",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ExamResult(),
                  ),
                );
              },
              child: DrawerListTile(
                imgpath: "../assets/images/exam.png",
                name: "Examination",
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: DrawerListTile(
                imgpath: "../assets/images/fee.png",
                name: "Fees",
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: DrawerListTile(
                imgpath: "../assets/images/calendar.png",
                name: "Time Table",
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: DrawerListTile(
                imgpath: "../assets/images/library.png",
                name: "Library",
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: DrawerListTile(
                imgpath: "../assets/images/downloads.png",
                name: "Downloads",
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: DrawerListTile(
                imgpath: "../assets/images/bus.png",
                name: "Track ",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => LeaveApply(),
                  ),
                );
              },
              child: DrawerListTile(
                imgpath: "../assets/images/leave_apply.png",
                name: "Leave apply",
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: DrawerListTile(
                imgpath: "../assets/images/activity.png",
                name: "Activity",
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: DrawerListTile(
                imgpath: "../assets/images/notification.png",
                name: "Notification",
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
