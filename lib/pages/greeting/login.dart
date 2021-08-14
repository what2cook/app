import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/components/organisms/login_box.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.only(left: 40, bottom: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 40, bottom: 100),
            child: LoginBox(),
          ),
          Container(
              margin: EdgeInsets.only(right: 40),
              height: 5,
              color: W2CColor.white.withOpacity(0.5),
              child: FractionallySizedBox(
                  alignment: Alignment.centerRight,
                  widthFactor: 0.5,
                  heightFactor: 0.5,
                  child: Container(
                      color: W2CColor.white
                  )
              )
          ),
        ],
      ),
    );
  }
}