import 'package:flutter/material.dart';
import 'package:masflu/controllers/home.dart';
import 'package:masflu/pages/home/ui/homeItemPlaceholder.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/homes';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = new HomeController();
  var refreshKey = GlobalKey<RefreshIndicatorState>();
  Future listFuture;

  @override
  void initState() {
    super.initState();
    listFuture = _getItems();
  }

  _getItems() async {
    return await controller.getItems();
  }

  Future<void> refreshList() async {
    refreshKey.currentState?.show(atTop: false);
    setState(() {
      listFuture = _getItems();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SafeArea(
          child: RefreshIndicator(
            key: refreshKey,
            onRefresh: () => refreshList(),
            child: FutureBuilder(
              future: listFuture,
              // initialData: [],
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.active:
                  case ConnectionState.waiting:
                    print('Thread ativa ou esperando');
                    return HomeItemPlaceholder();
                  case ConnectionState.done:
                    print('Thread finalizada.');
                    print(snapshot.data.isEmpty);
                    if (!snapshot.hasError && snapshot.data.isEmpty) {
                      return Center(
                        child: Text('Vazio'),
                      );
                    }
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, i) => snapshot.data[i],
                    );

                  default:
                    print('Comportamento inesperado');
                    return null;
                }
              },
            ),
          ),
        ));
  }
}
