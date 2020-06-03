import 'package:flutter/material.dart';

class CustomLoading extends StatelessWidget {
  bool busy = false;
  Widget child;
  Color color;
  
  CustomLoading({
    @required this.busy,
     this.child,
    @required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: busy 
        ? CircularProgressIndicator(backgroundColor: color,)
        : child
    );
  }
}

