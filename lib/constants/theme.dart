import 'package:flutter/material.dart';

class W2CColor {
  static final Color red = Color(0xffe43630);
  static final Color white = Colors.white;
  static final Color black = Colors.black;
  static final Color grey = Colors.grey;

  static final Color google = Colors.white;
  static final Color kakao = Color(0xfffee500);
  static final Color naver = Color(0xff03c75a);
}

class W2CTextStyle {
  // NotoSans Regular
  static final TextStyle notosans_regular_10 = TextStyle(
    fontFamily: 'NotoSans',
    fontSize: 10,
    height: 1.5,
  );
  static final TextStyle notosans_regular_15 = TextStyle(
    fontFamily: 'NotoSans',
    fontSize: 15,
    height: 1.5,
  );
  static final TextStyle notosans_regular_20 = TextStyle(
    fontFamily: 'NotoSans',
    fontSize: 20,
    height: 1.5,
  );
  static final TextStyle notosans_regular_30 = TextStyle(
    fontFamily: 'NotoSans',
    fontSize: 30,
    height: 1.5,
  );
  static final TextStyle notosans_regular_40 = TextStyle(
    fontFamily: 'NotoSans',
    fontSize: 40,
    height: 1.5,
  );
  static final TextStyle notosans_regular_50 = TextStyle(
    fontFamily: 'NotoSans',
    fontSize: 50,
    height: 1.5,
  );

  // NotoSans Bold
  static final TextStyle notosans_bold_10 = TextStyle(
    fontFamily: 'NotoSans',
    fontWeight: FontWeight.w700,
    fontSize: 10,
    height: 1.5,
  );
  static final TextStyle notosans_bold_15 = TextStyle(
    fontFamily: 'NotoSans',
    fontWeight: FontWeight.w700,
    fontSize: 15,
    height: 1.5,
  );
  static final TextStyle notosans_bold_20 = TextStyle(
    fontFamily: 'NotoSans',
    fontWeight: FontWeight.w700,
    fontSize: 20,
    height: 1.5,
  );
  static final TextStyle notosans_bold_30 = TextStyle(
    fontFamily: 'NotoSans',
    fontWeight: FontWeight.w700,
    fontSize: 30,
    height: 1.5,
  );
  static final TextStyle notosans_bold_40 = TextStyle(
    fontFamily: 'NotoSans',
    fontWeight: FontWeight.w700,
    fontSize: 40,
    height: 1.5,
  );
  static final TextStyle notosans_bold_50 = TextStyle(
    fontFamily: 'NotoSans',
    fontWeight: FontWeight.w700,
    fontSize: 50,
    height: 1.5,
  );
}

class W2CShadow {
  static final BoxShadow big = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 3,
    blurRadius: 3,
    offset: Offset(0, 3),
  );
  static final BoxShadow small = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 1,
    blurRadius: 1,
    offset: Offset(0, 3),
  );
}