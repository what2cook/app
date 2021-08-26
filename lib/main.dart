import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/pages/index.dart';
import 'package:what2cook/pages/intro/index.dart';
import 'package:what2cook/pages/recipe/index.dart';
import 'package:what2cook/pages/recipe/detail.dart';

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
      routes: {
        '/': (context) => Index(),
        '/intro': (context) => Intro(),
        '/recipe': (context) => Recipe(),
        '/recipe/detail': (context) => Detail(),
      },
      initialRoute: '/intro',
      debugShowCheckedModeBanner: false,
    );
  }
}
