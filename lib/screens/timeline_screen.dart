import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:equinox_21/constants.dart';
import 'package:equinox_21/widgets/indicators.dart';

bool isClicked1 = false;
bool isClicked2 = false;
bool isClicked3 = false;
bool isClicked4 = false;
bool isClicked5 = false;
bool isClicked6 = false;
bool isClicked7 = false;
bool isDarkMode = false;

class TimelineScreen extends StatefulWidget {
  @override
  _TimelineScreenState createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  // isDarkMode == true ? darkBackground : lightBackground
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Color(0xffE0FCFD),
            Color(0xffD5F7FC),
            Color(0xffBBEBF8),
            Color(0xffB1E6F7),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              isDarkMode = !isDarkMode;
            });
          },
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                top: screenHeight(context) * 0.04,
                bottom: screenHeight(context) * 0.05,
                left: screenWidth(context) * 0.02),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\t\tTimeline',
                      style: TextStyle(
                          color: textColorNight,
                          fontSize: screenWidth(context) * 0.1),
                    ),
                    SizedBox(height: screenHeight(context) * 0.01),
                    Expanded(
                      child: ListView(
                        children: [
                          TimelineTile(
                            alignment: TimelineAlign.manual,
                            lineXY: 0.3,
                            isFirst: true,
                            beforeLineStyle: LineStyle(
                              color: Colors.yellow,
                              thickness: 4,
                            ),
                            indicatorStyle: indicator(context),
                            endChild: Padding(
                              padding: tilePadding(context),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Registration!',
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? textColorNight
                                              : textColorDay,
                                        ), //fontWeight:
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isClicked1 = !isClicked1;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: dropDownColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  isClicked1 == true
                                      ? Text(
                                          'hemlo',
                                          style: TextStyle(color: textColorNight),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            startChild: Container(
                              child: Text(
                                '8:00 pm',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: textColorNight,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ), //1
                          TimelineTile(
                            alignment: TimelineAlign.manual,
                            lineXY: 0.3,
                            beforeLineStyle: LineStyle(
                              color: Color(0xffBFD046),
                              thickness: 4,
                            ),
                            indicatorStyle: earthIndicator(context),
                            endChild: Padding(
                              padding: tilePadding(context),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Hack Starts',
                                        style: TextStyle(color: textColorNight),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isClicked2 = !isClicked2;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: dropDownColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  isClicked2 == true
                                      ? Text(
                                          'hemlo',
                                          style: TextStyle(color: textColorNight),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            startChild: Container(
                              child: Text(
                                '8:00 pm',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: textColorNight,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ), //2
                          TimelineTile(
                            alignment: TimelineAlign.manual,
                            lineXY: 0.3,
                            beforeLineStyle: LineStyle(
                              color: Color(0xff3F964F),
                              thickness: 4,
                            ),
                            afterLineStyle: LineStyle(
                              color: Color(0xff3F964F),
                              thickness: 4,
                            ),
                            indicatorStyle: indicator(context),
                            endChild: Padding(
                              padding: tilePadding(context),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Snack Time',
                                        style: TextStyle(color: textColorNight),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isClicked3 = !isClicked3;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: dropDownColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  isClicked3 == true
                                      ? Text(
                                          'hemlo',
                                          style: TextStyle(color: textColorNight),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            startChild: Container(
                              child: Text(
                                '8:00 pm',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: textColorNight,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ), //3
                          TimelineTile(
                            alignment: TimelineAlign.manual,
                            lineXY: 0.3,
                            beforeLineStyle: LineStyle(
                              color: Color(0xff3F964F),
                              thickness: 4,
                            ),
                            afterLineStyle: LineStyle(
                              color: Color(0xff3F964F),
                              thickness: 4,
                            ),
                            indicatorStyle: indicator(context),
                            endChild: Padding(
                              padding: tilePadding(context),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Snack Time',
                                        style: TextStyle(color: textColorNight),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isClicked4 = !isClicked4;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: dropDownColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  isClicked4 == true
                                      ? Text(
                                          'hemlo',
                                          style: TextStyle(color: textColorNight),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            startChild: Container(
                              child: Text(
                                '8:00 pm',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: textColorNight,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ), //4
                          TimelineTile(
                            alignment: TimelineAlign.manual,
                            lineXY: 0.3,
                            beforeLineStyle: LineStyle(
                              color: Color(0xff3F964F),
                              thickness: 4,
                            ),
                            afterLineStyle: LineStyle(
                              color: Color(0xff3F964F),
                              thickness: 4,
                            ),
                            indicatorStyle: indicator(context),
                            endChild: Padding(
                              padding: tilePadding(context),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Snack Time',
                                        style: TextStyle(color: textColorNight),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isClicked5 = !isClicked5;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: dropDownColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  isClicked5 == true
                                      ? Text(
                                          'hemlo',
                                          style: TextStyle(color: textColorNight),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            startChild: Container(
                              child: Text(
                                '8:00 pm',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: textColorNight,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ), //5
                          TimelineTile(
                            alignment: TimelineAlign.manual,
                            lineXY: 0.3,
                            beforeLineStyle: LineStyle(
                              color: Color(0xff3F964F),
                              thickness: 4,
                            ),
                            afterLineStyle: LineStyle(
                              color: Color(0xff3F964F),
                              thickness: 4,
                            ),
                            indicatorStyle: indicator(context),
                            endChild: Padding(
                              padding: tilePadding(context),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Snack Time',
                                        style: TextStyle(color: textColorNight),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isClicked6 = !isClicked6;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: dropDownColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  isClicked6 == true
                                      ? Text(
                                          'hemlo',
                                          style: TextStyle(color: textColorNight),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            startChild: Container(
                              child: Text(
                                '8:00 pm',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: textColorNight,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ), //6
                          TimelineTile(
                            alignment: TimelineAlign.manual,
                            lineXY: 0.3,
                            beforeLineStyle: LineStyle(
                              color: Color(0xff3F964F),
                              thickness: 4,
                            ),
                            afterLineStyle: LineStyle(
                              color: Color(0xff3F964F),
                              thickness: 4,
                            ),
                            indicatorStyle: indicator(context),
                            endChild: Padding(
                              padding: tilePadding(context),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Snack Time',
                                        style: TextStyle(color: textColorNight),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isClicked7 = !isClicked7;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: dropDownColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  isClicked7 == true
                                      ? Text(
                                          'hemlo',
                                          style: TextStyle(color: textColorNight),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            startChild: Container(
                              child: Text(
                                '8:00 pm',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: textColorNight,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ), //7
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: screenHeight(context) * 0.55,
                  right: 0.0,
                  child: moonImage,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
