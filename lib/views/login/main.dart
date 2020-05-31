import 'package:flutter/material.dart';
import 'package:masflu/stores/user.store.dart';
import 'package:masflu/view_models/signup.dart';
import 'package:masflu/view_models/login.dart';
import 'package:masflu/views/recover_password/main.dart';
import 'package:masflu/views/signup/main.dart';
import 'package:masflu/widgets/facebook_login_button.dart';
import 'package:masflu/widgets/google_login_button.dart';
import 'package:masflu/widgets/passoword_field.dart';
import 'package:provider/provider.dart';

import '../drawer/main.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var model = new LoginViewModel();
  @override
  Widget build(BuildContext context) {
    var store = Provider.of<UserStore>(context);
    print(store);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/logo2.png"),
            ),
            TextFormField(
              //autofocus: true,
              initialValue: store.email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  letterSpacing: 0.27,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              style: TextStyle(fontSize: 20),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Email Inválido';
                }
                return null;
              },
              onSaved: (val) {
                model.email = val;
              },
            ),
            SizedBox(
              height: 10,
            ),
            PasswordField(
              // helperText: 'No more than 8 characters.',
              labelText: 'Password',
              onFieldSubmitted: (String value) {
                // setState(() {
                //   this._password = value;
                // });
              },
              validator: (value) {
                if (value.isEmpty) {
                  return 'Senha Inválida';
                }
                return null;
              },
              onSaved: (val) {
                model.email = val;
              },
            ),
            Container(
              height: 30,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Esqueci minha senha?",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    letterSpacing: 0.27,
                    color: Colors.blue,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecoverPasswordView(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color.fromRGBO(227, 29, 26, 0.4),
                    Color(0XFFF92B7F),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Entrar",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          letterSpacing: 0.27,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      // Container(
                      //   child: SizedBox(
                      //     child: Image.asset("assets/bone.png"),
                      //     height: 28,
                      //     width: 28,
                      //   ),
                      // )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavigationHomeScreen(),
                      ),
                    );
                  },
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  "- OU -",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            FacebookButton(),
            SizedBox(
              height: 10,
            ),
            GoogleButton(),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Ainda não tem uma conta?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              child: FlatButton(
                child: Text(
                  "Cadastre-se",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    letterSpacing: 0.27,
                    color: Colors.blue,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupView(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
