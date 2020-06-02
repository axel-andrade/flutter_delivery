import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:masflu/views/home/main.dart';
import 'package:masflu/views/profile/main.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[
            HomeView(),
            HomeView(),
            HomeView(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: new TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
              text: 'Início',
            ),
            Tab(
              icon: Icon(EvaIcons.search),
              text: 'Busca',
            ),
            Tab(
              icon: Icon(EvaIcons.pieChart),
              text: 'Estatística',
            ),
            Tab(
              icon: Icon(EvaIcons.person),
              text: 'Perfil',
            ),
          ],
          labelColor: Theme.of(context).primaryColor,
          labelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelColor: Colors.black38,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.all(4.0),
          indicatorColor: Theme.of(context).primaryColor,
        ),
        backgroundColor: Colors.grey.withOpacity(0.2),
      ),
    );
  }
}
