import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) callBack;

  Button({
    @required this.text,
    this.big = false,
    this.color = DEFAULT,
    @required this.callBack,
  });

  Button.big({
    @required this.text,
    this.big = true,
    this.color = DEFAULT,
    @required this.callBack,
  });

  Button.operation({
    @required this.text,
    this.big = false,
    this.color = OPERATION,
    @required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        color: this.color,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 38,
            fontWeight: FontWeight.w300,
          ),
        ),
        onPressed: () => callBack(text),
      ),
    );
  }
}
