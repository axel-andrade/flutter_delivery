import 'package:flutter/material.dart';
import 'package:path/path.dart';

class Utils {
  int getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  void cleanStackAndNavigateToPage(BuildContext context, page) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => page(),
        ),
        ModalRoute.withName('/'));
  }

  void navigateToPage(BuildContext context, page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page(),
      ),
    );
  }

  SnackBar createSnackBarError (String err){
    var snackbar = new SnackBar(
      content: new Text(err),
      backgroundColor: Colors.red,
    );
    return snackbar;
  }

}

class HexColor extends Color {
  HexColor(final String hexColor) : super(getColorFromHex(hexColor));

  static int getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}

Utils utils = new Utils();
