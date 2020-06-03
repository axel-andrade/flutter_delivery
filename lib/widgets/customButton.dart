import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function callback;
  final double width;

  CustomButton(
      {@required this.text, this.icon, @required this.callback, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: width != null ? width : 250,
      child: FlatButton(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            icon != null ? Icon(icon, color: Colors.white) : SizedBox(),
            icon != null ? SizedBox(width: 10) : SizedBox(),
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
        onPressed: () => callback(),
      ),
    );
  }
}
