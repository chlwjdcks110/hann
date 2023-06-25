import 'package:flutter/material.dart';
import 'package:hann/Login.dart';
import 'package:hann/alarm.dart';
import 'package:hann/home.dart';
import 'package:hann/prescription.dart';
import 'package:hann/pill.dart';
import 'package:hann/recently.dart';
import 'package:hann/pslist.dart';
import 'package:hann/QRcodemain.dart';
import 'package:hann/takelist.dart';
import 'package:hann/bluetooth.dart';
import 'package:hann/Newuser.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
      routes: <String, WidgetBuilder>{
        '/home' : (BuildContext context) => home(),
        '/alarm' : (BuildContext context) => alarm(),
        '/pill' : (BuildContext context) => pill(),
        '/prescription' : (BuildContext context) => prescription(),
        '/pslist' : (BuildContext context) => pslist(),
        '/recently' : (BuildContext context) => recently(),
        '/QRcodescan' : (BuildContext context) => QRcodescan(),
        '/takelist' : (BuildContext context) => takelist(),
        '/bluetooth' : (BuildContext context) => Bluetooth(title: '블루투스'),

      },
    );
  }
}
