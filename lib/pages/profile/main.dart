import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:masflu/app_theme.dart';
import 'package:masflu/widgets/profileListItem.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.secondColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Container(
            color: AppTheme.secondColor,
            child: ListTile(
              leading: GestureDetector(
                onTap: () {},
                child: Container(
                  color: Colors.white,
                  width: 48,
                  height: 48,
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.asset("assets/logo2.png"),
                  ),
                ),
              ),
              trailing: Icon(
                EvaIcons.edit,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Axel Andrade',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'ajaxeljunio@gmail.com',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {},
            ),
          ),
          SizedBox(),
          Expanded(
            child: ProfileListItem(),
          ),
        ],
      ),
    );
  }
}