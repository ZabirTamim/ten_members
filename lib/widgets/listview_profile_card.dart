import 'package:flutter/material.dart';
import 'package:ten_members/constants.dart';

class ListViewProfileCard extends StatelessWidget {
  ListViewProfileCard({
    this.personPicture,
    this.personName,
    this.personPhone,
    this.personBikash,
    this.personRocket,
  });

  final AssetImage personPicture;
  final String personName;
  final String personPhone;
  final String personBikash;
  final String personRocket;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: kCardColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 2),
        child: Row(
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: personPicture,
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  personName,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  personPhone,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  personBikash,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  personRocket,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//AssetImage('images/tamim01.jpeg')
