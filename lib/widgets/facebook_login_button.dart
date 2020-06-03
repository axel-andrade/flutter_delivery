import 'package:flutter/material.dart';
import 'package:masflu/pages/home/main.dart';

class FacebookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          color: Theme.of(context).primaryColor,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: FlatButton(
        child: Row(
          children: <Widget>[
            Container(
              height: 24,
              width: 100,
              child: Image.asset(
                "assets/facebook.png",
              ),
            ),
            Text(
              "Entrar com Facebook",
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
      ),
    );
  }
}
