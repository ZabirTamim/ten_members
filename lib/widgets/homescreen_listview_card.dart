import 'package:flutter/material.dart';
import 'package:ten_members/constants.dart';

class ListViewCard extends StatelessWidget {
  ListViewCard({
    @required this.senderName,
    @required this.recieverName,
  });

  final String senderName;
  final String recieverName;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      color: kCardColor,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'sender',
                  style: TextStyle(
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  senderName,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'reciever',
                  style: TextStyle(
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  recieverName,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
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
