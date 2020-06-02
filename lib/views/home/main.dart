import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:masflu/stores/user.dart';
import 'package:masflu/widgets/avatar.dart';
import 'package:masflu/widgets/customButton.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var store = Provider.of<UserStore>(context);

    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.grey.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(store.picture),
            Text(store.name),
            Text(store.email),
            CustomButton(
              text: 'Entrar',
              callback: () {},
              icon: EvaIcons.logIn,
            ),
            SizedBox(
              width: 10,
            ),
            CustomAvatar(path: 'https://placehold.it/200', width: 120)
          ],
        ),
      ),
    );
  }
}
