import 'package:flutter/material.dart';
import 'location.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var position, address;
  void setuplocation() async {
    Location instance = new Location();
    await instance.getlocation();
    position = instance.position;
    address = instance.address;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    setuplocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(50),
                child: Center(
                    child: Text(
                  '$address',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                  ),
                )))
          ],
        ),
      ),
    );
  }
}
