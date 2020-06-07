import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:masflu/pages/home/ui/homeItem.dart';
import 'package:masflu/repositories/home.dart';
import 'package:masflu/utils.dart';

class HomeController {
  HomeRepository repository;

  HomeController() {
    repository = new HomeRepository();
  }

  Future<List<HomeItem>> getItems() async {
    print('entrou no controller');
    await repository.getItems();
     return [
      HomeItem(
        callback: () {},
        color: HexColor('#6495ED'),
        icon: EvaIcons.peopleOutline,
        text: 'Clientes',
        number: '145',
      ),
      HomeItem(
        callback: () {},
        color: HexColor('#4169E1'),
        icon: Icons.store,
        text: 'Produtos',
        number: '75',
      ),
      HomeItem(
        callback: () {},
        color: HexColor('#1E90FF'),
        icon: Icons.list,
        text: 'Serviços',
        number: '10',
      ),
      HomeItem(
        callback: () {},
        color: HexColor('#00BFFF'),
        icon: EvaIcons.shoppingBagOutline,
        text: 'Vendas',
        number: '46',
      ),
      HomeItem(
        callback: () {},
        color: HexColor('#87CEFA'),
        icon: EvaIcons.clipboardOutline,
        text: 'Ordens',
        number: '17',
      ),
      HomeItem(
        callback: () {},
        color: HexColor('#87CEFA'),
        icon: Icons.account_balance,
        text: 'Financeiro',
        number: '',
      )
    ];
  }
}
