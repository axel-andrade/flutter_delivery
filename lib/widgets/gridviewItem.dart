import 'package:flutter/material.dart';

class GridViewItem extends StatelessWidget {
  final Function callback;
  final Color color;
  final IconData icon;
  final String text;
  final String number;

  GridViewItem({
    @required this.callback,
    @required this.color,
    @required this.icon,
    @required this.text,
    @required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callback(),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                size: 30,
                color: Theme.of(context).accentColor,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.display1,),
              SizedBox(
                height: 10,
              ),
              Text(
                number,
                style: Theme.of(context).textTheme.display2),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).canvasColor,
            boxShadow: [
              BoxShadow(color: Theme.of(context).primaryColor, spreadRadius: 3),
            ],
          ),
        ),
      ),
    );
  }
}