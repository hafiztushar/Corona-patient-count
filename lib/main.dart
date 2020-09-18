import 'package:flutter/material.dart';
import 'home.dart';
import 'main_page.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/main_page': (context) => MainPage(),
      },
    ));
