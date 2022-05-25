import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final String name;
  final String imgpath;
  final Function ontap;

  const DrawerListTile({
    Key? key,
    required this.name,
    required this.imgpath,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "${imgpath}",
        height: 30,
      ),
      contentPadding: EdgeInsets.only(
        left: 70,
        top: 5,
        bottom: 5,
      ),
      title: Text(
        "${name}",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
