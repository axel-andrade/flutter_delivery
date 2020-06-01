import 'package:flutter/material.dart';
import 'package:masflu/views/home/main.dart';

class GoogleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          color: Color.fromRGBO(227, 29, 26, 0.4),
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
                "assets/google.png",
              ),
            ),
            Text(
              "Entrar com Google",
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color.fromRGBO(227, 29, 26, 0.4),
              ),
            ),
          ],
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeView(),
            ),
          );
        },
      ),
    );
  }
}
