import 'package:flutter/material.dart';
import 'package:masflu/controllers/signup.controller.dart';
import 'package:masflu/stores/user.store.dart';
import 'package:masflu/view-models/signup.viewmodel.dart';
import 'package:masflu/views/drawer/navigation-home-view.dart';
import 'package:provider/provider.dart';

class SignupOldView extends StatefulWidget {
  @override
  _SignupOldViewState createState() => _SignupOldViewState();
}

class _SignupOldViewState extends State<SignupOldView> {
  final _formKey = GlobalKey<FormState>();
  final _controller = new SignupController();
  var model = new SignupViewModel();

  @override
  Widget build(BuildContext context) {
    var store = Provider.of<UserStore>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text("Cadastre-se"),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Nome Inválido';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    model.name = val;
                  },
                ),
                TextFormField(
                  initialValue: store.email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'E-mail Inválido';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    model.email = val;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Senha Inválida';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    model.password = val;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                model.busy
                    ? Center(
                        child: Container(
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.blue,
                          ),
                        ),
                      )
                    : Container(
                        width: double.infinity,
                        height: 50,
                        child: FlatButton(
                          color: Theme.of(context).primaryColor,
                          child: Text("Cadastrar"),
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              _formKey.currentState.save();
                            }

                            setState(() {});
                            _controller.create(model).then((data) {
                              setState(() {});
                              store.setUser(
                                data.name,
                                data.email,
                                data.picture,
                                data.token,
                              );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NavigationHomeScreen(),
                                ),
                              );
                            });
                          },
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
