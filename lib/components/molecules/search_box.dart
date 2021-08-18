import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/components/atoms/search_icon.dart';
import 'package:what2cook/components/atoms/cancel_icon.dart';

class SearchBox extends StatefulWidget {
  final Function(String) _search;

  SearchBox(this._search);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: W2CColor.grey,
          width: 2,
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width - 180,
            height: 35,
            child: TextField(
              textAlign: TextAlign.center,
              style: W2CTextStyle.notosans_regular_15,
              decoration: InputDecoration(
                fillColor: W2CColor.red,
                border: UnderlineInputBorder(),
                hintText: '재료를 검색하세요.',
              ),
              controller: _controller,
              onChanged: (String text) {
                widget._search(text);
              },
            ),
          ),
          InkWell(
            onTap: () {
              _controller.clear();
              widget._search('');
              FocusScope.of(context).unfocus();
            },
            child: CancelIcon(),
          ),
          InkWell(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SearchIcon(),
          ),
        ],
      ),
    );
  }
}