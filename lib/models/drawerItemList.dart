import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:masflu/widgets/drawerItem.dart';

class DrawerItemListModel {
  final List<DrawerItem> items = <DrawerItem>[
    // DrawerItem(
    //   title: 'Clientes',
    //   subtitle: 'Meus clientes',
    //   icon: EvaIcons.peopleOutline,
    //   callback: () {},
    // ),
    // DrawerItem(
    //   title: 'Produtos',
    //   subtitle: 'Meus produtos',
    //   icon: Icons.store,
    //   callback: () {},
    // ),
    // DrawerItem(
    //   title: 'Serviços',
    //   subtitle: 'Meus serviços',
    //   icon: Icons.list,
    //   callback: () {},
    // ),
    // DrawerItem(
    //   title: 'Vendas',
    //   subtitle: 'Minhas vendas',
    //   icon: EvaIcons.shoppingBagOutline,
    //   callback: () {},
    // ),
    // DrawerItem(
    //   title: 'Ordens de Serviço',
    //   subtitle: 'Minhas ordens de serviço',
    //   icon: EvaIcons.clipboardOutline,
    //   callback: () {},
    // ),
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
    DrawerItem(
      title: 'Sair',
      subtitle: 'Sair do aplicativo',
      icon: EvaIcons.logOutOutline,
      callback: () {},
      withTrailing: false,
    ),
  ];

  List<DrawerItem> getItems() {
    return this.items;
  }
}
