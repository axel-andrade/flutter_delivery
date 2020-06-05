import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:masflu/pages/drawer/main.dart';
import 'package:masflu/stores/user.dart';
import 'package:masflu/utils.dart';
import 'package:masflu/widgets/avatar.dart';
import 'package:masflu/widgets/customButton.dart';
import 'package:provider/provider.dart';

class GridViewItem extends StatelessWidget {
  final Function callback;
  final Color color;
  final IconData icon;
  final String text;
  final String number;

  GridViewItem({
    @required this.callback,
    @required this.color,
    @required this.icon,
    @required this.text,
    @required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callback(),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                size: 30,
                color: Theme.of(context).accentColor,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.display1,),
              SizedBox(
                height: 10,
              ),
              Text(
                number,
                style: Theme.of(context).textTheme.display2),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).canvasColor,
            boxShadow: [
              BoxShadow(color: Theme.of(context).primaryColor, spreadRadius: 3),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  static const String routeName = '/homes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            GridViewItem(
              callback: () {},
              color: HexColor('#6495ED'),
              icon: EvaIcons.peopleOutline,
              text: 'Clientes',
              number: '145',
            ),
            GridViewItem(
              callback: () {},
              color: HexColor('#4169E1'),
              icon: Icons.store,
              text: 'Produtos',
              number: '75',
            ),
            GridViewItem(
              callback: () {},
              color: HexColor('#1E90FF'),
              icon: Icons.list,
              text: 'Serviços',
              number: '10',
            ),
            GridViewItem(
              callback: () {},
              color: HexColor('#00BFFF'),
              icon: EvaIcons.shoppingBagOutline,
              text: 'Vendas',
              number: '46',
            ),
            GridViewItem(
              callback: () {},
              color: HexColor('#87CEFA'),
              icon: EvaIcons.clipboardOutline,
              text: 'Ordens',
              number: '17',
            ),
            GridViewItem(
              callback: () {},
              color: HexColor('#87CEFA'),
              icon: Icons.account_balance,
              text: 'Financeiro',
              number: '',
            ),
          ],
        ),
      ),
    );
  }
}

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     var store = Provider.of<UserStore>(context);

//     return Scaffold(
//       // appBar: AppBar(),
//       backgroundColor: Colors.grey.withOpacity(0.2),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Image.network(store.picture),
//             Text(store.name),
//             Text(store.email),
//             CustomButton(
//               text: 'Entrar',
//               callback: () {},
//               icon: EvaIcons.logIn,
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             CustomAvatar(path: 'https://placehold.it/200', width: 120)
//           ],
//         ),
//       ),
//     );
//   }
// }
