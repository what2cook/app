import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/components/atoms/google_icon.dart';

class GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: W2CColor.google,
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10),
            padding: EdgeInsets.all(10),
            child: GoogleIcon(),
          ),
          Container(
            margin: EdgeInsets.only(right: 50),
            child: Text('구글 계정으로 로그인', style: W2CTextStyle.notosans_regular_20),
          ),
        ],
      ),
    );
  }
}
