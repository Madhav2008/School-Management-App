import 'package:connectivity/connectivity.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:school_management_app/Screens/Home_Screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<Widget> _tabItems = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    // CategoryScreen(),
    // PostRecipeScreen(),
    // SearchScreenNav(),
    // ProfileScreen()
  ];
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Connectivity().onConnectivityChanged,
      builder:
          (BuildContext context, AsyncSnapshot<ConnectivityResult> snapshot) {
        if (snapshot != null &&
            snapshot.hasData &&
            snapshot.data != ConnectivityResult.none) {
          return Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              key: _bottomNavigationKey,
              index: 0,
              height: 50,
              items: [
                Icon(Icons.home_filled,
                    size: 30,
                    color: (_page == 0) ? Colors.blueAccent : Colors.white),
                Icon(Icons.category_sharp,
                    size: 30,
                    color: (_page == 1) ? Colors.blueAccent : Colors.white),
                Icon(Icons.add_box,
                    size: 30,
                    color: (_page == 2) ? Colors.blueAccent : Colors.white,),
                Icon(
                  Icons.search_sharp,
                  size: 30,
                  color: (_page == 3) ? Colors.blueAccent : Colors.white,
                ),
                Icon(
                  Icons.account_circle,
                  size: 30,
                  color: (_page == 4) ? Colors.blueAccent : Colors.white,
                ),
              ],
              color: Colors.blue.shade900,
              buttonBackgroundColor: Colors.grey[50],
              backgroundColor: Colors.blue.shade900,
              animationDuration: Duration(milliseconds: 500),
              onTap: (index) {
                setState(() {
                  _page = index;
                });
              },
              letIndexChange: (index) => true,
            ),
            body: _tabItems[_page],
          );
        } else {
          return Center(
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(Icons.favorite),
                        // SizedBox(width:5),
                        Image.asset(
                          'assets/images/no-internet.png',
                          width: 130,
                          height: 130,
                          // color: Colors.white,
                          // color: Colors.yellow,
                        ),
                        // SizedBox(width:5),
                        // Icon(Icons.favorite),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(Icons.wifi_off),
                        // SizedBox(width:5),
                        Text(
                          "No Internet Access",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black,
                            // color: Colors.yellow,
                          ),
                        ),
                        // SizedBox(width:5),
                        // Icon(Icons.wifi_off),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
