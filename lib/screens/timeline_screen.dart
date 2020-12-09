import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:equinox_21/constants.dart';
import 'package:equinox_21/widgets/indicators.dart';
// import 'package:flutter_svg/flutter_svg.dart';

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
        gradient: isDarkMode ? darkBackgroundGradient : lightBackgroundGradient,
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
                      style: GoogleFonts.raleway(
                        color: isDarkMode ? textColorNight : textColorDay,
                        fontSize: screenWidth(context) * 0.1,
                      ),
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
                                        style: textStyle(
                                            context, isDarkMode, isClicked1),
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
                                          style:
                                              textStyle(context, isDarkMode, false),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            startChild: Container(
                              child: Text(
                                '8:00 pm',
                                textAlign: TextAlign.center,
                                style: textStyle(context, isDarkMode, false),
                              ),
                            ),
                          ), //1
                          TimelineTile(
                            alignment: TimelineAlign.manual,
                            lineXY: 0.3,
                            beforeLineStyle: LineStyle(
                              color: Color(0xffA7C549),
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
                                        'Registration!',
                                        style: textStyle(
                                            context, isDarkMode, isClicked2),
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
                                          style:
                                              textStyle(context, isDarkMode, false),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            startChild: Container(
                              child: Text(
                                '8:00 pm',
                                textAlign: TextAlign.center,
                                style: textStyle(context, isDarkMode, false),
                              ),
                            ),
                          ), //2
                          TimelineTile(
                            alignment: TimelineAlign.manual,
                            lineXY: 0.3,
                            beforeLineStyle: LineStyle(
                              color: Colors.green,
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
                                        style: textStyle(
                                            context, isDarkMode, isClicked3),
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
                                          style:
                                              textStyle(context, isDarkMode, false),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            startChild: Container(
                              child: Text(
                                '8:00 pm',
                                textAlign: TextAlign.center,
                                style: textStyle(context, isDarkMode, false),
                              ),
                            ),
                          ), //3
                          TimelineTile(
                            alignment: TimelineAlign.manual,
                            lineXY: 0.3,
                            beforeLineStyle: LineStyle(
                              color: Colors.green,
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
                                        style: textStyle(
                                            context, isDarkMode, isClicked4),
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
                                          style:
                                              textStyle(context, isDarkMode, false),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            startChild: Container(
                              child: Text('8:00 pm',
                                  textAlign: TextAlign.center,
                                  style: textStyle(context, isDarkMode, false)),
                            ),
                          ), //4
                          TimelineTile(
                            alignment: TimelineAlign.manual,
                            lineXY: 0.3,
                            beforeLineStyle: LineStyle(
                              color: Colors.green,
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
                                        style: textStyle(
                                            context, isDarkMode, isClicked5),
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
                                          style:
                                              textStyle(context, isDarkMode, false),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            startChild: Container(
                              child: Text(
                                '8:00 pm',
                                textAlign: TextAlign.center,
                                style: textStyle(context, isDarkMode, false),
                              ),
                            ),
                          ), //5
                          TimelineTile(
                            alignment: TimelineAlign.manual,
                            lineXY: 0.3,
                            beforeLineStyle: LineStyle(
                              color: Colors.green,
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
                                        style: textStyle(
                                            context, isDarkMode, isClicked6),
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
                                          style:
                                              textStyle(context, isDarkMode, false),
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
                                  color: isDarkMode ? textColorNight : textColorDay,
                                ),
                              ),
                            ),
                          ), //6
                          TimelineTile(
                            alignment: TimelineAlign.manual,
                            lineXY: 0.3,
                            beforeLineStyle: LineStyle(
                              color: Colors.green,
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
                                      Text('Registration!',
                                          style: textStyle(
                                              context, isDarkMode, isClicked7)),
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
                                          style:
                                              textStyle(context, isDarkMode, false),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            startChild: Container(
                              child: Text(
                                '8:00 pm',
                                textAlign: TextAlign.center,
                                style: textStyle(context, isDarkMode, false),
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
                  child: isDarkMode ? moonImage : sunImage,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
