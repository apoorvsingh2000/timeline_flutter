import 'package:flutter/material.dart';

class ShowTime extends AnimatedWidget {
  ShowTime({Key key, this.animation}) : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    return new Text(
      animation.value.toString(),
      style: new TextStyle(fontSize: 150.0),
    );
  }
}

class Show extends StatefulWidget {
  @override
  _ShowState createState() => _ShowState();
}

class _ShowState extends State<Show> with TickerProviderStateMixin {
  AnimationController _controller;
  static const int kStartValue = 4;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: kStartValue),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () => _controller.forward(from: 0.0),
      ),
      body: Container(
        child: Center(
          child: ShowTime(
            animation: StepTween(
              begin: kStartValue,
              end: 0,
            ).animate(_controller),
          ),
        ),
      ),
    );
  }
}
