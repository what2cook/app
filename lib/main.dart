import 'package:flutter/material.dart';
import 'package:uni_links/uni_links.dart';
import 'dart:async';
import 'package:flutter/services.dart' show PlatformException;
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/pages/index.dart';
import 'package:what2cook/pages/intro/index.dart';
import 'package:what2cook/pages/recipe/index.dart';
import 'package:what2cook/pages/recipe/detail.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('local');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Future<void> getStreamLink() async {
    linkStream.listen((String? link) {
      if (link != null) {
        Uri.parse(link).queryParameters.forEach((key, value) {
          Hive.box('local').put(key, value);
          print('save in local: {${key} : ${value}}');
        });
      }
    }, onError: (err) {
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    getStreamLink();

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
