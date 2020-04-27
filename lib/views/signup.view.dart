import 'package:flutter/material.dart';
import 'package:masflu/controllers/signup.controller.dart';
import 'package:masflu/stores/user.store.dart';
import 'package:masflu/view-models/signup.viewmodel.dart';
import 'package:masflu/views/drawer/navigation-home-view.dart';
import 'package:masflu/widgets/password-field.widget.dart';
import 'package:provider/provider.dart';

class SignupView extends StatefulWidget {
  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final _formKey = GlobalKey<FormState>();
  final _controller = new SignupController();
  var model = new SignupViewModel();

  @override
  Widget build(BuildContext context) {
    var store = Provider.of<UserStore>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color.fromRGBO(227, 29, 26, 0.4),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              width: 175,
              height: 175,
              alignment: Alignment(0.0, 1.15),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/profile-picture1.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Container(
                height: 56,
                width: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1.0],
                    colors: [
                      Color.fromRGBO(227, 29, 26, 0.4),
                      Color(0XFFF92B7F),
                    ],
                  ),
                  border: Border.all(
                    width: 4.0,
                    color: const Color(0xFFFFFFFF),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(56),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              //autofocus: true,
              initialValue: store.email,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome",
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
                model.name = val;
              },
            ),
            SizedBox(
              height: 10,
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
            TextFormField(
              //autofocus: true,
              initialValue: store.email,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Telefone",
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
                  return 'Telefone Inválido';
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
            SizedBox(
              height: 10,
            ),
            PasswordField(
              // helperText: 'No more than 8 characters.',
              labelText: 'Repetir senha',
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
            SizedBox(
              height: 10,
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
                        "Cadastrar",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          letterSpacing: 0.27,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
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
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   height: 40,
            //   alignment: Alignment.center,
            //   child: FlatButton(
            //     child: Text(
            //       "Cancelar",
            //       textAlign: TextAlign.center,
            //     ),
            //     onPressed: () => Navigator.pop(context, false),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
