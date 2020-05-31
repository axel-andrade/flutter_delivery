import 'package:masflu/models/user.dart';
import 'package:masflu/repositories/account.dart';
import 'package:masflu/view_models/login.dart';

class LoginController {
  AccountRepository repository;

  LoginController() {
    repository = new AccountRepository();
  }

  // Future<UserModel> create(LoginViewModel model) async {
  //   model.busy = true;
  //   var user = await repository.createAccount(model);
  //   model.busy = false;
  //   return user;
  // }
}
