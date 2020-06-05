import 'package:flutter/material.dart';
import 'package:masflu/models/drawerItemList.dart';
import 'package:masflu/widgets/drawerItem.dart';

class DrawerItemList extends StatefulWidget {
  @override
  _DrawerItemListState createState() => _DrawerItemListState();
}

class _DrawerItemListState extends State<DrawerItemList> {
  final List<DrawerItem> items = new DrawerItemListModel().getItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
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
