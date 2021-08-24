import 'package:flutter/material.dart';
import 'dart:async';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/pages/greeting/index.dart';
import 'package:what2cook/components/atoms/white_logo.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: W2CColor.red,
      alignment: Alignment.center,
      child: WhiteLogo(),
    );
  }

  _startTimer() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, _route);
  }

  _route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Greeting()));
  }
}
