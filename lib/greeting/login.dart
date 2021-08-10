import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/theme.dart';

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
            height: 50,
            width: 300,
            margin: EdgeInsets.only(right: 40, bottom: 20),
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
                  child: SvgPicture.asset('assets/images/google.svg'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 60),
                  child: Text(
                      '구글 계정으로 로그인',
                      style: W2CTextStyle.notosans_regular_20
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 300,
            margin: EdgeInsets.only(right: 40, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: W2CColor.kakao,
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.all(10),
                  child: SvgPicture.asset('assets/images/kakao.svg'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 50),
                  child: Text(
                      '카카오 계정으로 로그인',
                      style: W2CTextStyle.notosans_regular_20
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 300,
            margin: EdgeInsets.only(right: 40, bottom: 100),
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
                  child: SvgPicture.asset('assets/images/naver.svg'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 50),
                  child: Text(
                      '네이버 계정으로 로그인',
                      style: W2CTextStyle.notosans_regular_20.merge(
                          TextStyle(color: W2CColor.white)
                      ),
                  ),
                ),
              ],
            ),
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