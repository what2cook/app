import 'package:flutter/material.dart';

import 'package:what2cook/components/atoms/red_logo.dart';
import 'package:what2cook/components/molecules/logout_button.dart';
import 'package:what2cook/components/molecules/setting_button.dart';

class Header extends StatelessWidget {
  final Function() logout;
  final Function() setting;

  Header(this.logout, this.setting);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          LogoutButton(logout),
          RedLogo(),
          SettingButton(setting),
        ],
      ),
    );
  }
}
