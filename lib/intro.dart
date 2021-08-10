import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';

import 'constants/theme.dart';
import 'greeting.dart';

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
      child: SvgPicture.asset('assets/images/logo_white.svg'),
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