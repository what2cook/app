import 'package:flutter/material.dart';

import 'package:what2cook/components/molecules/google_login_button.dart';
import 'package:what2cook/components/molecules/kakao_login_button.dart';
import 'package:what2cook/components/molecules/naver_login_button.dart';

class LoginBox extends StatelessWidget {
  final login;

  LoginBox(this.login);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 20),
          child: InkWell(
            onTap: () {
              login('google');
            },
            child: GoogleLoginButton(),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 20),
          child: InkWell(
            onTap: () {
              login('kakao');
            },
            child: KakaoLoginButton(),
          ),
        ),
        Container(
          child: InkWell(
            onTap: () {
              login('naver');
            },
            child: NaverLoginButton(),
          ),
        ),
      ],
    );
  }
}
