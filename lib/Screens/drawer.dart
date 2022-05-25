import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: color1,
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Profile(),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  buildMenuItem(
                    text: 'Take Quiz',
                    icon: Icons.timer,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Assignments',
                    icon: Icons.assignment_outlined,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Fees',
                    icon: Icons.monetization_on_outlined,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 24),
                  const Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Timetable',
                    icon: Icons.date_range_outlined,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Notifications',
                    icon: Icons.notifications_active_outlined,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: "FAQ'S",
                    icon: Icons.question_answer,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Icon(
                        icon,
                        color: Colors.white,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        'hi',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      // ChangeThemeButtonWidget(),
                    ],
                  ),
                ],
              ),
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
