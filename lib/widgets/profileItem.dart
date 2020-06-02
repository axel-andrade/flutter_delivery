import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Function callback;
  final bool withTrailing;

  ProfileItem(
      {@required this.icon,
      @required this.title,
      @required this.subtitle,
      @required this.callback,
      this.withTrailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.2),
      child: ListTile(
        leading: GestureDetector(
          onTap: () {},
          child: Container(
            width: 48,
            height: 48,
            padding: EdgeInsets.symmetric(vertical: 4.0),
            alignment: Alignment.center,
            child: Icon(icon, color: Theme.of(context).primaryColor),
          ),
        ),
        trailing: withTrailing == false
            ? null
            : Icon(
                EvaIcons.arrowIosForward,
                color: Theme.of(context).primaryColor,
              ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Colors.white),
        ),
        onTap: () => callback,
      ),
    );
  }
}
