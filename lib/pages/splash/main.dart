import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:masflu/app_theme.dart';
import 'package:masflu/pages/login/main.dart';
import 'package:masflu/widgets/customLoading.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.secondColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset("assets/logo2.png"),
          ),
          SizedBox(
            height: 20,
          ),
          CustomLoading(
            busy: true,
            color: Colors.white
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);

    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }
}
