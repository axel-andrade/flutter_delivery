import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:masflu/widgets/profileItem.dart';

class ProfileListItemModel {
  final List<ProfileItem> items = <ProfileItem>[
    ProfileItem(
      title: 'Clientes',
      subtitle: 'Meus clientes',
      icon: EvaIcons.peopleOutline,
      callback: () {},
    ),
    ProfileItem(
      title: 'Produtos',
      subtitle: 'Meus produtos',
      icon: Icons.store,
      callback: () {},
    ),
    ProfileItem(
      title: 'Serviços',
      subtitle: 'Meus serviços',
      icon: Icons.list,
      callback: () {},
    ),
    ProfileItem(
      title: 'Vendas',
      subtitle: 'Minhas vendas',
      icon: EvaIcons.shoppingBagOutline,
      callback: () {},
    ),
    ProfileItem(
      title: 'Ordens de Serviço',
      subtitle: 'Minhas ordens de serviço',
      icon: EvaIcons.clipboardOutline,
      callback: () {},
    ),
    ProfileItem(
      title: 'Configurações',
      subtitle: 'Minhas configurações',
      icon: EvaIcons.settings2Outline,
      callback: () {},
    ),
    ProfileItem(
      title: 'Ajuda',
      subtitle: 'Minhas opções de ajuda',
      icon: EvaIcons.questionMarkCircleOutline,
      callback: () {},
    ),
    ProfileItem(
      title: 'Sair',
      subtitle: 'Sair do aplicativo',
      icon: EvaIcons.logOutOutline,
      callback: () {},
      withTrailing: false,
    ),
  ];
 

  List<ProfileItem> getItems () {
    return this.items;
  }
}