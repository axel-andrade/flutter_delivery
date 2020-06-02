import 'package:flutter/material.dart';
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
      backgroundColor: Colors.grey.withOpacity(0.2),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 8),
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
