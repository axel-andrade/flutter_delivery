import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:masflu/pages/client/main.dart';
import 'package:masflu/pages/home/main.dart';
import 'package:masflu/pages/login/main.dart';
import 'package:masflu/utils.dart';
import 'package:masflu/widgets/drawerItem.dart';

class Routes {
  static const String contacts = HomePage.routeName;
  static const String events = HomePage.routeName;
  static const String notes = HomePage.routeName;
}

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            headerItem(context),
            DrawerItem(
              title: 'Clientes',
              subtitle: 'Meus clientes',
              icon: EvaIcons.peopleOutline,
              callback: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ClientListPage(),
                      ),
                    );
              },
            ),
            DrawerItem(
              title: 'Produtos',
              subtitle: 'Meus produtos',
              icon: Icons.store,
              callback: () {},
            ),
            DrawerItem(
              title: 'Serviços',
              subtitle: 'Meus serviços',
              icon: Icons.list,
              callback: () {},
            ),
            DrawerItem(
              title: 'Vendas',
              subtitle: 'Minhas vendas',
              icon: EvaIcons.shoppingBagOutline,
              callback: () {},
            ),
            DrawerItem(
              title: 'Ordens de Serviço',
              subtitle: 'Minhas ordens de serviço',
              icon: EvaIcons.clipboardOutline,
              callback: () {},
            ),
            DrawerItem(
              title: 'Financeiro',
              subtitle: 'Meus dados financeiros',
              icon: Icons.account_balance,
              callback: () {},
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1.0,
              color: Colors.grey.withOpacity(0.2),
            ),
            SizedBox(
              height: 10,
            ),
            DrawerItem(
              title: 'Configurações',
              subtitle: 'Minhas configurações',
              icon: EvaIcons.settings2Outline,
              callback: () {},
            ),
            DrawerItem(
              title: 'Temas',
              subtitle: 'Meus temas',
              icon: EvaIcons.colorPalette,
              callback: () {},
            ),
            DrawerItem(
              title: 'Ajuda',
              subtitle: 'Minhas opções de ajuda',
              icon: EvaIcons.questionMarkCircleOutline,
              callback: () {},
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1.0,
              color: Colors.grey.withOpacity(0.2),
            ),
            SizedBox(
              height: 10,
            ),
            DrawerItem(
              title: 'Sair',
              subtitle: 'Sair do aplicativo',
              icon: EvaIcons.logOutOutline,
              callback: () {
                utils.cleanStackAndNavigateToPage(context, () => LoginPage());
              },
              withTrailing: false,
            )
          ],
        ),
      ),
    );
  }

  Widget headerItem(context) {
    return DrawerHeader(
      child: new Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Container(
              color: Theme.of(context).backgroundColor,
              child: ListTile(
                leading: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 48,
                    height: 48,
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.asset("assets/logo2.png"),
                    ),
                  ),
                ),
                title: Text(
                  'Axel Andrade',
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
                subtitle: Text(
                  'ajaxeljunio@gmail.com',
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
                onTap: () => {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
