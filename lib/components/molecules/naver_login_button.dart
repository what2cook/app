import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/components/atoms/naver_icon.dart';

class NaverLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: W2CColor.naver,
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10),
            child: NaverIcon(),
          ),
          Container(
            margin: EdgeInsets.only(right: 40),
            child: Text(
              '네이버 계정으로 로그인',
              style: W2CTextStyle.notosans_regular_20.merge(
                  TextStyle(color: W2CColor.white)
              ),
            ),
          ),
        ],
      ),
    );
  }
}