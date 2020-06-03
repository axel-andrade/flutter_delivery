import 'package:masflu/models/user.dart';
import 'package:masflu/repositories/user.dart';

class LoginController {
  UserRepository repository;

  LoginController() {
    repository = new UserRepository();
  }

  Future<UserModel> logIn(String email, String password) async {
    return repository.logIn(email, password);
  }
}
