import 'package:ecom_app/nav/categories.dart';
import 'package:ecom_app/nav/home.dart';
import 'package:ecom_app/nav/profile.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  static String id = "nav";
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int i = 0;
  int _currentIndex = 0;
  int _selectedIndex = 0;
  List page = [const Categories(), const Home(), const Profile()];
  String currentPage = "";
  void selectTab(String tabItem, int index) {
    setState(() {
      _currentIndex = page[index];
      _selectedIndex = index;
    });
  }

  final _page1 = GlobalKey<NavigatorState>();
  final _page2 = GlobalKey<NavigatorState>();
  final _page3 = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).popUntil((route) => route.isFirst);

        return false;
      },
      child: Scaffold(
        body: IndexedStack(
          index: i,
          children: <Widget>[
            Navigator(
              onPopPage: (m, n) {
                return true;
              },
              key: _page1,
              onGenerateRoute: (route) => MaterialPageRoute(
                settings: route,
                builder: (context) => Categories(),
              ),
            ),
            Navigator(
              key: _page2,
              onGenerateRoute: (route) => MaterialPageRoute(
                settings: route,
                builder: (context) => Home(),
              ),
            ),
            Navigator(
              key: _page3,
              onGenerateRoute: (route) => MaterialPageRoute(
                settings: route,
                builder: (context) => Profile(),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(size: 35),
            selectedFontSize: 17,
            onTap: (index) {
              setState(() {
                i = index;
              });
            },
            currentIndex: i,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu), label: "Categories"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile")
            ]),
      ),
    );
  }
}
