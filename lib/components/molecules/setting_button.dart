import 'package:flutter/material.dart';

import 'package:what2cook/components/atoms/setting_icon.dart';

class SettingButton extends StatelessWidget {
  final Function() _onTap;

  SettingButton(this._onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: InkWell(
        onTap: _onTap,
        child: SettingIcon(),
      ),
    );
  }
}
