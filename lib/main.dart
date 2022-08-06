import 'package:flutter/material.dart';
import 'package:ten_members/screens/home_screen.dart';
import 'package:ten_members/screens/login_screen.dart';
import 'package:ten_members/screens/register_screen.dart';
import 'package:ten_members/widgets/bottom_nav_bar.dart';
import 'screens/welcome_screen.dart';

void main() => runApp(TenMembers());

class TenMembers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login_screen': (context) => LoginScreen(),
        '/register_screen': (context) => RegisterScreen(),
        '/home_screen': (context) => HomeScreen(),
        '/nav_screen': (context) => BottomNavBar(),
      },
    );
  }
}
