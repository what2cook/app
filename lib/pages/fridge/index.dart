import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/components/organisms/header.dart';

class Fridge extends StatefulWidget {
  @override
  _FridgeState createState() => _FridgeState();
}

class _FridgeState extends State<Fridge> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Header(),
    );
  }
}



