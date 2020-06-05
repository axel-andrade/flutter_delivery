import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:masflu/pages/drawer/main.dart';
import 'package:masflu/pages/home/main.dart';
import 'package:masflu/pages/notification/main.dart';
import 'package:masflu/pages/statistic/main.dart';
import 'package:masflu/pages/search/main.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return new Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Theme.of(context).primaryColor),
      ),
      drawer: DrawerPage(),
      drawerEdgeDragWidth: 40,
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => currentIndex = index);
          },
          children: <Widget>[
            HomePage(),
            SearchPage(),
            StatisticPage(),
            NotificationPage(),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Theme.of(context).backgroundColor,
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) {
          setState(() => currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(
              Icons.home,
              size: 25,
            ),
            title: Text(
              'Inicio',
              style: Theme.of(context).textTheme.body1,
            ),
            activeColor: Theme.of(context).primaryColor,
            inactiveColor: Theme.of(context).accentColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.search,
              size: 28,
            ),
            title: Text(
              'Busca',
              style: Theme.of(context).textTheme.body1,
            ),
            activeColor: Theme.of(context).primaryColor,
            inactiveColor: Theme.of(context).accentColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(
              EvaIcons.pieChart,
              size: 25,
            ),
            title: Text(
              'Estatísticas',
              style: Theme.of(context).textTheme.body1,
            ),
            activeColor: Theme.of(context).primaryColor,
            inactiveColor: Theme.of(context).accentColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(
              EvaIcons.bell,
              size: 25,
            ),
            title: Text(
              'Notificações',
              style: Theme.of(context).textTheme.body1,
            ),
            activeColor: Theme.of(context).primaryColor,
            inactiveColor: Theme.of(context).accentColor,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// class TabsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         body: TabBarView(
//           children: <Widget>[
//             HomePage(),
//             HomePage(),
//             HomePage(),
//             ProfilePage(),
//           ],
//         ),
//         bottomNavigationBar: new TabBar(
//           tabs: <Widget>[
//             Tab(
//               icon: Icon(Icons.home),
//               text: 'Início',
//             ),
//             Tab(
//               icon: Icon(EvaIcons.search),
//               text: 'Busca',
//             ),
//             Tab(
//               icon: Icon(EvaIcons.pieChart),
//               text: 'Estatística',
//             ),
//             Tab(
//               icon: Icon(EvaIcons.person),
//               text: 'Perfil',
//             ),
//           ],
//           labelColor: Theme.of(context).primaryColor,
//           labelStyle: TextStyle(
//             fontSize: 12,
//             fontWeight: FontWeight.bold,
//           ),
//           unselectedLabelColor: Colors.black38,
//           indicatorSize: TabBarIndicatorSize.tab,
//           indicatorPadding: EdgeInsets.all(4.0),
//           indicatorColor: Theme.of(context).primaryColor,
//         ),
//         backgroundColor: Colors.grey.withOpacity(0.2),
//       ),
//     );
//   }
// }
