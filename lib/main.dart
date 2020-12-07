import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:equinox_21/xyz.dart';
import 'package:equinox_21/abc.dart';

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

class TimelineScreen extends StatefulWidget {
  @override
  _TimelineScreenState createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              top: screenHeight(context) * 0.05,
              bottom: screenHeight(context) * 0.2,
              left: screenWidth(context) * 0.1),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Timeline',
                  style: TextStyle(
                      color: textColorNight, fontSize: screenWidth(context) * 0.1),
                ),
                SizedBox(
                  height: screenHeight(context) * 0.05,
                ),
                TimelineTile(
                  alignment: TimelineAlign.manual,
                  lineXY: 0.3,
                  isFirst: true,
                  beforeLineStyle: LineStyle(
                    color: Colors.yellow,
                    thickness: 4,
                  ),
                  indicatorStyle: IndicatorStyle(
                    indicator: CircleAvatar(
                      child: Image.asset('images/indicator.png'),
                    ),
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(screenWidth(context) * 0.1),
                    child: Text(
                      'Registration!',
                      style: TextStyle(color: textColorNight),
                    ),
                  ),
                  startChild: Container(
                    child: Text(
                      '8:00 pm',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textColorNight, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.manual,
                  lineXY: 0.3,
                  beforeLineStyle: LineStyle(
                    color: Colors.yellow,
                    thickness: 4,
                  ),
                  indicatorStyle: IndicatorStyle(
                    indicator: CircleAvatar(
                      child: Image.asset('images/indicator.png'),
                    ),
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(screenWidth(context) * 0.1),
                    child: Text(
                      'Hack Starts',
                      style: TextStyle(color: textColorNight),
                    ),
                  ),
                  startChild: Container(
                    child: Text(
                      '8:00 pm',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textColorNight, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.manual,
                  lineXY: 0.3,
                  beforeLineStyle: LineStyle(
                    color: Colors.yellow,
                    thickness: 4,
                  ),
                  indicatorStyle: IndicatorStyle(
                    indicator: CircleAvatar(
                      child: Image.asset('images/indicator.png'),
                    ),
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(screenWidth(context) * 0.1),
                    child: Text(
                      'Snack Time',
                      style: TextStyle(color: textColorNight),
                    ),
                  ),
                  startChild: Container(
                    child: Text(
                      '8:00 pm',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textColorNight, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10.0),
// color: Colors.white),
// ),

Widget notSelectedIndicator = ColoredBox(
  color: Colors.white,
);

class _IconIndicator extends StatelessWidget {
  const _IconIndicator({
    Key key,
    this.iconData,
    this.size,
  }) : super(key: key);

  final IconData iconData;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red.withOpacity(0.7),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 30,
              width: 30,
              child: Icon(
                iconData,
                size: size,
                color: const Color(0xFF9E3773).withOpacity(0.7),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

const textColorNight = Colors.white;
const darkBackground = Color(0xFF0E1C36);
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

// padding: EdgeInsets.only(
// left: screenWidth(context) * 0.05,
// right: screenWidth(context) * 0.05,
// bottom: screenWidth(context) * 0.1),
