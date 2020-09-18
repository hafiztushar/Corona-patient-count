import 'package:flutter/material.dart';
import 'getcount.dart';
import 'location.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String address;
  void setuplocation() async {
    Location instance = new Location();
    await instance.getlocation();
    address = instance.address;
    //count
    GetCount countinstance = new GetCount();
    countinstance.getcount(address);

    Navigator.pushReplacementNamed(context, '/main_page', arguments: {
      'address': address,
    });
  }

  @override
  void initState() {
    super.initState();
    setuplocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SpinKitFoldingCube(
          color: Colors.white,
          size: 50.0,
        ));
  }
}
