import 'package:flutter/material.dart';
import 'package:masflu/controllers/home.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/homes';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = new HomeController();
  var list = [];
  var refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();
    refreshList();
  }

  Future<void> refreshList() async {
    refreshKey.currentState?.show(atTop: false);
    var updatedList = await controller.getItems();
    setState(()  {
      list = updatedList;
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
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              // crossAxisSpacing: 5.0,
              // mainAxisSpacing: 5.0,
            ),
            itemCount: list?.length,
            itemBuilder: (context, i) => list[i],
          ),
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
