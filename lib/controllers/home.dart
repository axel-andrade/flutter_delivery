import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:masflu/repositories/home.dart';
import 'package:masflu/widgets/gridviewItem.dart';

import '../utils.dart';

class HomeController {
  HomeRepository repository;

  HomeController() {
    repository = new HomeRepository();
  }

  Future<List<GridViewItem>> getItems() async {
    await repository.getItems();
     return [
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
      )
    ];
  }
}
