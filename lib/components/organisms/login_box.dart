import 'package:flutter/material.dart';

import 'package:what2cook/components/molecules/google_login_button.dart';
import 'package:what2cook/components/molecules/kakao_login_button.dart';
import 'package:what2cook/components/molecules/naver_login_button.dart';

class LoginBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 20),
          child: GoogleLoginButton(),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 20),
          child: KakaoLoginButton(),
        ),
        Container(
          child: NaverLoginButton(),
        ),
      ],
    );
  }
}