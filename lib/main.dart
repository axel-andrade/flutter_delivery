import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:masflu/app_theme.dart';
import 'package:masflu/pages/recover_password/main.dart';
import 'package:masflu/stores/user.dart';
import 'package:masflu/pages/login/main.dart';
import 'package:masflu/pages/splash/main.dart';
import 'package:masflu/pages/tabs/main.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Colors.pink, // status bar color
  ));
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) => runApp(App()));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: AppTheme.secondColor,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MultiProvider(
      providers: [
        Provider<UserStore>.value(
          value: UserStore(),
        ),
      ],
      child: MaterialApp(
        title: 'Base app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            backgroundColor: AppTheme.secondColor,
            fontFamily: 'Raleway',
            primaryColor: Colors.blue,
            appBarTheme: AppBarTheme(
              color: AppTheme.secondColor,
            )),
        home: TabsPage(),
      ),
    );
  }
}
