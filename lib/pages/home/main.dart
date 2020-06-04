import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:masflu/app_theme.dart';
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
        padding: EdgeInsets.all(10),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                number,
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppTheme.primaryColor,
            boxShadow: [
              BoxShadow(color: Colors.lightBlue[50], spreadRadius: 3),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.code),
          color: Colors.blue,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      backgroundColor: AppTheme.secondColor,
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
