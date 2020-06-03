import 'package:flutter/material.dart';
import 'package:masflu/app_theme.dart';

class InputText extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;
  final Function validator;
  final Function onSaved;

  InputText(
      {@required this.labelText,
      @required this.keyboardType,
      this.validator,
      @required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextFormField(
        autofocus: true,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        style: TextStyle(fontSize: 20, color: Colors.blue),
        validator: (val) => validator(val),
        onSaved: onSaved,
        
      ),
    );
  }
}
