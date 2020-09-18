import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Map data;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Home',
          style: TextStyle(),
        )),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  data['address'],
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '1005',
                  style: TextStyle(fontSize: 60),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
