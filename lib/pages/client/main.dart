import 'package:flutter/material.dart';
import 'package:masflu/controllers/client.dart';
import 'package:masflu/pages/client/ui/listItem.dart';
import 'package:masflu/pages/client/ui/listSkeleton.dart';

class ClientListPage extends StatefulWidget {
  static const String routeName = '/homes';

  @override
  _ClientListPageState createState() => _ClientListPageState();
}

class _ClientListPageState extends State<ClientListPage> {
  var refreshKey = GlobalKey<RefreshIndicatorState>();
  final controller = new ClientController();
  Future listFuture;

  @override
  void initState() {
    super.initState();
    listFuture = _getItems();
  }

  _getItems() async {
    return await controller.get();
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
      appBar: AppBar(
        title: Text(
          'Clientes',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Theme.of(context).primaryColor,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: RefreshIndicator(
          color: Theme.of(context).primaryColor,
          key: refreshKey,
          onRefresh: () => refreshList(),
          child: FutureBuilder(
            future: listFuture,
            initialData: [],
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.active:
                case ConnectionState.waiting:
                  print('Thread ativa ou esperando');
                  return ClientListSkeleton();
                case ConnectionState.done:
                  print('Thread finalizada.');
                  print(snapshot.data.isEmpty);
                  if (!snapshot.hasError && snapshot.data.isEmpty) {
                    return Center(
                      child: Text('Vazio'),
                    );
                  }
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        var client = snapshot.data[index];
                        return ClientListItem(model: client, isSkeleton: false,);
                      });
                default:
                  print('Comportamento inesperado');
                  return null;
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add, color: Theme.of(context).accentColor, size: 30,),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
