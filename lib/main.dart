import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:masflu/pages/drawer/main.dart';
import 'package:masflu/pages/recover_password/main.dart';
import 'package:masflu/stores/user.dart';
import 'package:masflu/pages/login/main.dart';
import 'package:masflu/pages/splash/main.dart';
import 'package:masflu/pages/tabs/main.dart';
import 'package:masflu/themes/dark.dart';
import 'package:masflu/themes/darkPurple.dart';
import 'package:masflu/themes/light.dart';
import 'package:masflu/themes/lightPurple.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) => runApp(App()));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle());
    return MultiProvider(
      providers: [
        Provider<UserStore>.value(
          value: UserStore(),
        ),
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
