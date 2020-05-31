import 'package:flutter/material.dart';
import 'package:masflu/stores/user.dart';
import 'package:provider/provider.dart';

class HomeDrawerView extends StatefulWidget {
  @override
  _HomeDrawerViewState createState() => _HomeDrawerViewState();
}

class _HomeDrawerViewState extends State<HomeDrawerView> {
  @override
  Widget build(BuildContext context) {
    var store = Provider.of<UserStore>(context);

    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(store.picture),
            Text(store.name),
            Text(store.email),
          ],
        ),
      ),
    );
  }
}
