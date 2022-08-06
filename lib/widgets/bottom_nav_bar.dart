import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:ten_members/screens/developer_screen.dart';
import 'package:ten_members/screens/home_screen.dart';
import 'package:ten_members/screens/idea_screen.dart';
import 'package:ten_members/screens/investment_screen.dart';
import 'package:ten_members/screens/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: navScreens(),
      items: navBarsItems(),
      controller: _controller,
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      resizeToAvoidBottomInset: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style9,
    );
  }
}

List<Widget> navScreens() {
  return [
    HomeScreen(),
    ProfileScreen(),
    InvestmentScreen(),
    IdeaScreen(),
    DeveloperScreen(),
  ];
}

List<PersistentBottomNavBarItem> navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home),
      title: ("Profiles"),
      activeColor: Colors.blueAccent,
      inactiveColor: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.person),
      title: ("Profiles"),
      activeColor: Colors.blueAccent,
      inactiveColor: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.add_chart),
      title: ("Investments"),
      activeColor: Colors.blueAccent,
      inactiveColor: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.add_comment_rounded),
      title: ("Ideas"),
      activeColor: Colors.blueAccent,
      inactiveColor: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.developer_mode),
      title: ("Developer"),
      activeColor: Colors.blueAccent,
      inactiveColor: Colors.grey,
    ),
  ];
}
