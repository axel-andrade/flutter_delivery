import 'package:masflu/app_theme.dart';
import 'package:masflu/config/drawer.dart';
import 'package:masflu/controllers/drawer.dart';
import 'package:flutter/material.dart';
import 'package:masflu/views/drawer/help/main.dart';
import 'package:masflu/views/drawer/home/main.dart';

class NavigationHomeScreen extends StatefulWidget {
  @override
  _NavigationHomeScreenState createState() => _NavigationHomeScreenState();
}

class _NavigationHomeScreenState extends State<NavigationHomeScreen> {
  Widget screenView;
  DrawerIndex drawerIndex;

  @override
  void initState() {
    drawerIndex = DrawerIndex.HOME;
    screenView = HomeDrawerView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            onDrawerCall: (DrawerIndex drawerIndexdata) {
              changeIndex(drawerIndexdata);
              //callback from drawer for replace screen as user need with passing DrawerIndex(Enum index)
            },
            screenView: screenView,
            //we replace screen view as we need on navigate starting screens like MyHomePage, HelpScreen, FeedbackScreen, etc...
          ),
        ),
      ),
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;

      switch (drawerIndex) {
        case DrawerIndex.HOME:
          setState(() {
            screenView = HomeDrawerView();
          });
          break;
        case DrawerIndex.CLIENT:
          setState(() {
            screenView = HelpScreen();
          });
          break;
        case DrawerIndex.PRODUCT:
          // TODO: Handle this case.
          break;
        case DrawerIndex.SERVICE:
          // TODO: Handle this case.
          break;
        case DrawerIndex.STATISTIC:
          // TODO: Handle this case.
          break;
      }
    }
  }
}