import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'pages/intro/index.dart';
import 'pages/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'What2Cook',
      theme: ThemeData(
        primaryColor: W2CColor.red,
        accentColor: W2CColor.red,
      ),
      home: Index(),
      debugShowCheckedModeBanner: false,
    );
  }
}