import 'package:flutter/material.dart';
import 'package:ten_members/componants/profile_person_list.dart';
import 'package:ten_members/constants.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kInnerPageBAckgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: personsList.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return personsList[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
