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
            DrawerListTile(
              imgpath: "../assets/images/downloads.png",
              name: "Downloads",
            ),
            DrawerListTile(
              imgpath: "../assets/images/bus.png",
              name: "Track ",
            ),
            DrawerListTile(
              imgpath: "../assets/images/leave_apply.png",
              name: "Leave apply",
            ),
            DrawerListTile(
              imgpath: "../assets/images/activity.png",
              name: "Activity",
              ontap: () {},
            ),
            DrawerListTile(
              imgpath: "../assets/images/notification.png",
              name: "Notification",
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          // color: AppColor.primary1,
          padding: const EdgeInsets.symmetric(
            vertical: 40,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(urlImage),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.white;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: const TextStyle(
          color: color,
        ),
      ),
      // hoverColor: AppColor.primary,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const MainMenu(),
        //   ),
        // );
        break;
      case 1:
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const Assignments(),
        //   ),
        // );
        break;
      case 2:
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const Fees(),
        //   ),
        // );
        break;
      case 3:
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => TimeTable(),
        //   ),
        // );
        break;
      case 4:
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const NotificationsScreen(),
        //   ),
        // );
        break;
      case 5:
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const FAQ_Screen(),
        //   ),
        // );
        break;
    }
  }
}
