import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:equinox_21/screens/timeline_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TimelineScreen(),
    );
  }
}

// var moonLanding;
//
// void time() {
//   moonLanding = DateTime.now();
//   print(moonLanding);
// }
