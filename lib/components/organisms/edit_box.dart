import 'package:flutter/material.dart' hide CloseButton;

import 'package:what2cook/components/molecules/edit_button.dart';
import 'package:what2cook/components/molecules/add_button.dart';
import 'package:what2cook/components/molecules/remove_button.dart';
import 'package:what2cook/components/molecules/close_button.dart';
import 'package:what2cook/components/molecules/done_button.dart';

class EditBox extends StatefulWidget {

  final Function() addMode;
  final Function() removeMode;
  final Function() doneMode;

  EditBox(this.addMode, this.removeMode, this.doneMode);

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

  void add() {
    setState(() {
      _mode = 'add';
    });
  }

  void remove() {
    setState(() {
      _mode = 'remove';
    });
  }

  void done() {
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
          child: AddButton(() {
            widget.addMode();
            add();
          }),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: RemoveButton(() {
            widget.removeMode();
            remove();
          }),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: CloseButton(close),
        ),
      ];
    } else if (_mode == 'add' || _mode == 'remove') {
      editBox = [Container(
        child: DoneButton(() {
          widget.doneMode();
          done();
        }),
      )];
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