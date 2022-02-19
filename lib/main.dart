import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: UserPanel(),
    ));

class UserPanel extends StatefulWidget {
  const UserPanel({Key? key}) : super(key: key);

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
          title: Text('Tester User'),
          centerTitle: true,
          backgroundColor: Colors.black45),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Text(
                  'John Doe',
                  style: TextStyle(fontSize: 23, color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/brad.jpg'),
                  radius: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.mail_outline,
                      size: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7),
                    ),
                    Text(
                      'admin@tester.ru',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 17),
                ),
                Text(
                  'So many times we say hello: $_count',
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.radio_button_checked),
        backgroundColor: Colors.lime,
        onPressed: () {
          setState(() {
            _count++;
          });
        },
      ),
    );
  }
}
