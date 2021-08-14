import 'package:flutter/material.dart';
import 'dart:async';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/pages/greeting/index.dart';
import 'package:what2cook/components/atoms/white_logo.dart';

class Intro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IntroState();
  }
}

class IntroState extends State<Intro> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: W2CColor.red,
      alignment: Alignment.center,
      child: WhiteLogo(),
    );
  }

  startTimer() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => Greeting()
    ));
  }
}