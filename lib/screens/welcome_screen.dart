import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ten_members/constants.dart';
import 'package:ten_members/widgets/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo01',
              child: Container(
                child: Image.asset('images/logo01.png'),
                height: 80.0,
              ),
            ),
            Center(
              child: ColorizeAnimatedTextKit(
                speed: Duration(milliseconds: 800),
                text: ['10 Members'],
                textStyle: TextStyle(
                  fontSize: 50.0,
                  letterSpacing: 3.0,
                ),
                colors: [
                  Color(0xff2f3e46),
                  Color(0xff354f52),
                  Color(0xff52796f),
                  Color(0xff84a98c),
                  Color(0xffcad2c5),
                ],
              ),
            ),
            SizedBox(height: 150),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: RoundedButton(
                buttonText: 'Log in',
                buttonColor: Color(0xff4E878C),
                buttonCallback: () {
                  Navigator.pushNamed(context, '/login_screen');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: RoundedButton(
                buttonText: 'Register',
                buttonColor: Color(0xff00241B),
                buttonCallback: () {
                  Navigator.pushNamed(context, '/register_screen');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
