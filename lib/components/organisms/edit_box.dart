import 'package:flutter/material.dart' hide CloseButton;

import 'package:what2cook/components/molecules/edit_button.dart';
import 'package:what2cook/components/molecules/add_button.dart';
import 'package:what2cook/components/molecules/remove_button.dart';
import 'package:what2cook/components/molecules/close_button.dart';

class EditBox extends StatefulWidget {

  final Function() add;
  final Function() remove;

  EditBox(this.add, this.remove);

  @override
  _EditBoxState createState() => _EditBoxState();
}

class _EditBoxState extends State<EditBox> {

  String _mode = 'close';

  void open() {
    setState(() {
      _mode = 'open';
    });
  }

  void close() {
    setState(() {
      _mode = 'close';
    });
  }

  @override
  Widget build(BuildContext context) {
    var editBox;
    if (_mode == 'close') {
      editBox = [Container(
        child: EditButton(open),
      )];
    } else if (_mode == 'open'){
      editBox = [
        Container(
          child: AddButton(widget.add),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: RemoveButton(widget.remove),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: CloseButton(close),
        ),
      ];
    }
    return Container(
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: editBox,
      ),
    );
  }
}