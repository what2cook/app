import 'package:flutter/material.dart';

import 'package:what2cook/components/atoms/logout_icon.dart';

class LogoutButton extends StatelessWidget {
  final Function() _onTap;

  LogoutButton(this._onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: InkWell(
        onTap: _onTap,
        child: LogoutIcon(),
      ),
    );
  }
}
