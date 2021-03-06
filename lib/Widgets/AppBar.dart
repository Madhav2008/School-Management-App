import 'package:flutter/material.dart';
import 'package:school_management_app/Screens/Notification/Notification_Screen.dart';

class CommonAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  // final bool menuenabled;
  final bool notificationenabled;
  // final Function ontap;
  const CommonAppBar({
    Key? key,
    required this.title,
    // required this.menuenabled,
    required this.notificationenabled,
    // required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // Stack(
        //   children: [
        //     Container(
        //       width: MediaQuery.of(context).size.width,
        //       height: MediaQuery.of(context).size.height,
        //       child: Opacity(
        //         opacity: 032,
        //         child: Image.asset(
        //           '../assets/images/back.jpg',
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        //     ),
        AppBar(
      title: Text(
        "${title}",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      // leading: menuenabled == true
      //     ? IconButton(
      //         color: Colors.black,
      //         onPressed: () => ontap,
      //         icon: Icon(
      //           Icons.menu,
      //         ),
      //       )
      //     : null,
      actions: [
        notificationenabled == true
            ? InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => NotificationsScreen(),
                    ),
                  );
                },
                child: Image.asset(
                  "../assets/images/notification.png",
                  width: 35,
                ),
              )
            : SizedBox(
                width: 1,
              ),
      ],
      centerTitle: true,
      backgroundColor: Colors.white,
      // elevation: 0.0,
      //   ),
      // ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}
