import 'package:masflu/models/user.dart';
import 'package:masflu/repositories/account.dart';
import 'package:masflu/view_models/signup.dart';

class SignupController {
  AccountRepository repository;

  SignupController() {
    repository = new AccountRepository();
  }

  Future<UserModel> create(SignupViewModel model) async {
    model.busy = true;
    var user = await repository.createAccount(model);
    model.busy = false;
    return user;
  }
}
