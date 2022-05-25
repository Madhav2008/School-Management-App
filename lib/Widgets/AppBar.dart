import 'package:flutter/material.dart';

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
    return AppBar(
      title: Text(
        "${title}",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
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
                onTap: () {},
                child: Image.asset(
                  "../assets/images/notification.png",
                  width: 35,
                ),
              )
            : SizedBox(
                width: 1,
              ),
              actions: [
          // ChangeThemeButtonWidget(),
          Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.white,
              iconTheme: const IconThemeData(
                color: Colors.white,
              ),
              textTheme: const TextTheme().apply(
                bodyColor: Colors.white,
              ),
            ),
      ],
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}
