import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:masflu/controllers/login.dart';
import 'package:masflu/stores/user.dart';
import 'package:masflu/utils.dart';
import 'package:masflu/pages/recover_password/main.dart';
import 'package:masflu/pages/tabs/main.dart';
import 'package:masflu/widgets/customButton.dart';
import 'package:masflu/widgets/customLoading.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = new LoginController();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  var busy = false;
  var hidePassword = true;
  var password = '123456';

  Future handleLogIn(email, password) async {
    try {
      setState(() {
        busy = true;
      });
      var user = await controller.logIn(email, password);
      setState(() {
        busy = false;
      });
      utils.cleanStackAndNavigateToPage(context, () => TabsPage());
    } catch (err) {
      setState(() {
        busy = false;
      });
      onError(err.message);
    }
  }

  onError(String err) {
    scaffoldKey.currentState.showSnackBar(utils.createSnackBarError(err));
  }

  @override
  Widget build(BuildContext context) {
    var store = Provider.of<UserStore>(context);
    print(store);
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Theme.of(context).backgroundColor,
        child: CustomLoading(
          busy: busy,
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset("assets/logo2.png"),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                autofocus: false,
                initialValue: store.email,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Theme.of(context).canvasColor,
                  labelText: "E-mail",
                  labelStyle: Theme.of(context).textTheme.subtitle,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Theme.of(context).accentColor),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                style: TextStyle(fontSize: 20, color: Theme.of(context).accentColor),
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
                height: 20,
              ),
              TextFormField(
                autofocus: false,
                maxLength: 8,
                initialValue: password,
                keyboardType: TextInputType.text,
                obscureText: hidePassword,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Theme.of(context).canvasColor,
                  labelText: "Senha",
                  labelStyle: Theme.of(context).textTheme.subtitle,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Theme.of(context).accentColor),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      child: hidePassword == true
                          ? Icon(
                              Icons.visibility,
                              color: Theme.of(context).accentColor,
                            )
                          : Icon(
                              Icons.visibility_off,
                              color: Theme.of(context).accentColor,
                            )),
                ),
                style: TextStyle(fontSize: 20, color: Theme.of(context).accentColor),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Senha Inválida';
                  } else if (value.length != 8) {
                    return 'O número mínimo de caracteres é 8';
                  }
                  return null;
                },
                onSaved: (val) {
                  setState(() {
                    password = val;
                  });
                },
                onChanged: (val) {
                  setState(() {
                    password = val;
                  });
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
                      fontSize: 14,
                      letterSpacing: 0.27,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecoverPasswordPage(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                text: 'Entrar',
                callback: () {
                  handleLogIn(store.email, password);
                },
                icon: EvaIcons.logIn,
              )
            ],
          ),
        ),
      ),
    );
  }
}
