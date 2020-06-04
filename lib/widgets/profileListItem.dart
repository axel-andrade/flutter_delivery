import 'package:flutter/material.dart';
import 'package:masflu/app_theme.dart';
import 'package:masflu/models/profileListItem.dart';
import 'package:masflu/widgets/profileItem.dart';

class ProfileListItem extends StatefulWidget {
  @override
  _ProfileListItemState createState() => _ProfileListItemState();
}

class _ProfileListItemState extends State<ProfileListItem> {
  final List<ProfileItem> items = new ProfileListItemModel().getItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.secondColor,
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 4, left: 15, right: 15, bottom: 4),
        itemCount: items.length,
        reverse: false,
        itemBuilder: (BuildContext context, int index) {
          return items[index];
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          thickness: 2,
        ),
      ),
    );
  }
}
