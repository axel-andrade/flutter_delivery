import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:masflu/app_theme.dart';
import 'package:masflu/main.dart';
import 'package:masflu/stores/user.dart';
import 'package:masflu/widgets/customButton.dart';
import 'package:provider/provider.dart';

class RecoverPasswordPage extends StatefulWidget {
  @override
  _RecoverPasswordPageState createState() => _RecoverPasswordPageState();
}

class _RecoverPasswordPageState extends State<RecoverPasswordPage> {
  var email = '';
  @override
  Widget build(BuildContext context) {
    var store = Provider.of<UserStore>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.blue,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: AppTheme.secondColor,
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Image.asset("assets/logo2.png"),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        "Esqueceu sua senha?",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Por favor, informe o E-mail associado a sua conta que enviaremos um link para o mesmo com as instruções para restauração de sua senha.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        autofocus: false,
                        initialValue: store.email,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppTheme.primaryColor,
                          labelText: "E-mail",
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              letterSpacing: 0.27,
                              color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Email Inválido';
                          }
                          return null;
                        },
                        onSaved: (val) {
                          store.setEmail(val);
                        },
                        onChanged: (val) {
                          store.setEmail(val);
                        },
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      CustomButton(
                        text: 'Enviar',
                        callback: () {},
                        icon: EvaIcons.paperPlane,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
