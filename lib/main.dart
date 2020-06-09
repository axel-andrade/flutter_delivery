import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:masflu/pages/client/main.dart';
import 'package:masflu/pages/splash/main.dart';
import 'package:masflu/stores/user.dart';
import 'package:masflu/themes/dark.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<UserStore>.value(
          value: UserStore(),
        )
      ],
      child: MaterialApp(
        title: 'Base app',
        debugShowCheckedModeBanner: false,
        theme: darkTheme(),
        home: SplashPage(),
      ),
    );
  }
}
