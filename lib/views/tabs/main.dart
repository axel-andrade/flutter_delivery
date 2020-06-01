import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masflu/views/home/main.dart';

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
            HomeView(),
          ],
        ),
        bottomNavigationBar: new TabBar(
          tabs: <Widget>[
            Tab(
              icon: FaIcon(FontAwesomeIcons.home),
              text: 'Início',
            ),
            Tab(
              icon: FaIcon(FontAwesomeIcons.search),
              text: 'Busca',
            ),
            Tab(
              icon: FaIcon(FontAwesomeIcons.chartPie),
              text: 'Estatística',
            ),
            Tab(
              icon: FaIcon(FontAwesomeIcons.user),
              text: 'Perfil',
            ),
          ],
          labelColor: Theme.of(context).primaryColor,
          unselectedLabelColor: Colors.black38,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
