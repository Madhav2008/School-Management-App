import 'package:flutter/material.dart';
import 'package:school_management_app/Screens/Attendance/Attendance.dart';
import 'package:school_management_app/Screens/Exam/Exam_Result.dart';
import 'package:school_management_app/Screens/Home_Screen.dart';
import 'package:school_management_app/Screens/Leave_Apply/Leave_apply.dart';
import 'package:school_management_app/Widgets/DrawerListTile.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerListTile(
          imgpath: "home.png",
          name: "Home",
          ontap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen(),
              ),
            );
          },
        ),
        DrawerListTile(
          imgpath: "attendance.png",
          name: "Attendance",
          ontap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Attendance(),
              ),
            );
          },
        ),
        DrawerListTile(
          imgpath: "classroom.png",
          name: "Class work",
          ontap: () {},
        ),
        DrawerListTile(
          imgpath: "profile.png",
          name: "Profile",
          ontap: () {},
        ),
        DrawerListTile(
          imgpath: "exam.png",
          name: "Examination",
          ontap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => ExamResult(),
              ),
            );
          },
        ),
        DrawerListTile(
          imgpath: "fee.png",
          name: "Fees",
          ontap: () {},
        ),
        DrawerListTile(
          imgpath: "calendar.png",
          name: "Time Table",
          ontap: () {},
        ),
        DrawerListTile(
          imgpath: "library.png",
          name: "Library",
          ontap: () {},
        ),
        DrawerListTile(
          imgpath: "downloads.png",
          name: "Downloads",
          ontap: () {},
        ),
        DrawerListTile(
          imgpath: "bus.png",
          name: "Track ",
          ontap: () {},
        ),
        DrawerListTile(
          imgpath: "leave_apply.png",
          name: "Leave apply",
          ontap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => LeaveApply(),
              ),
            );
          },
        ),
        DrawerListTile(
          imgpath: "activity.png",
          name: "Activity",
          ontap: () {},
        ),
        DrawerListTile(
          imgpath: "notification.png",
          name: "Notification",
          ontap: () {},
        ),
      ],
    );
  }
}
