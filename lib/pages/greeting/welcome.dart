import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/components/molecules/red_circle_arrow_button.dart';

class Welcome extends StatelessWidget {

  final VoidCallback _nextPage;

  Welcome(this._nextPage);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.only(left: 40, bottom: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(bottom: 30),
                child: Text.rich(
                    TextSpan(
                        style: TextStyle(color: W2CColor.white),
                        children: <TextSpan>[
                          TextSpan(
                            text: '냉장고는 깨끗하게\n내 몸은 건강하게\n',
                            style: W2CTextStyle.notosans_bold_30,
                          ),
                          TextSpan(
                            text: '레시피 여행을 떠나보세요\n',
                            style: W2CTextStyle.notosans_regular_15,
                          ),
                        ]
                    )
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 40),
                child: RedCircleArrowButton(this._nextPage),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(right: 40),
              height: 5,
              color: W2CColor.white.withOpacity(0.5),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: 0.5,
                heightFactor: 0.5,
                child: Container(color: W2CColor.white),
              )
          ),
        ],
      ),
    );
  }
}