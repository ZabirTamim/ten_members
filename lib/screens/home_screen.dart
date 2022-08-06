import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:ten_members/componants/sender_reciever.dart';
import 'package:ten_members/constants.dart';
import 'package:ten_members/widgets/homescreen_listview_card.dart';

class HomeScreen extends StatefulWidget {
  static String session = 'January - Fabruary';
  static String ammount = '600';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<SenderReciever> senderRecieverList = [
    SenderReciever(sender: 'Tamim Al Zabir', reciever: 'Salman Omar'),
    SenderReciever(sender: 'Sadin Ahnaf', reciever: 'Salman Omar'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
        onPressed: () {},
      ),
      backgroundColor: Colors.white70,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Color(0xff94E9C6),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 100,
                          child: Image.asset('images/logo01.png'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            getSesssionAndAmmount(context);
                          },
                          child: Text(
                            'Change Session',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff4E878C),
                            ),
                            elevation: MaterialStateProperty.all(10.0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Our Total Balance',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '\$100000\.00',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: kInnerPageBAckgroundColor,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          HomeScreen.session,
                          style: TextStyle(fontSize: 17.0),
                        ),
                        Text(
                          HomeScreen.ammount,
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                    ListView.builder(
                      itemCount: senderRecieverList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return ListViewCard(
                          senderName: senderRecieverList[index].sender,
                          recieverName: senderRecieverList[index].reciever,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

getSesssionAndAmmount(context) {
  return Alert(
      context: context,
      title: 'Change Session',
      content: Column(
        children: <Widget>[
          TextField(
            onChanged: (value) {
              HomeScreen.session = value;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.calendar_today_rounded),
              labelText: 'Session',
            ),
          ),
          TextField(
            onChanged: (value) {
              HomeScreen.ammount = value;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.attach_money_rounded),
              labelText: 'Amount',
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Change",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ]).show();
}
