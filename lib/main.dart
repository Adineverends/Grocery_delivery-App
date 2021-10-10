import 'package:flutter/material.dart';
import 'package:tarkari/bottombar.dart';
import 'package:tarkari/productdetail.dart';
import 'package:tarkari/signup.dart';

import 'splashscreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen() ,
    );
  }
}
