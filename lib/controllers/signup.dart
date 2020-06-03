import 'package:masflu/models/user.dart';
import 'package:masflu/repositories/user.dart';

class SignupController {
  UserRepository repository;

  SignupController() {
    repository = new UserRepository();
  }

  Future<UserModel> createUser(model) async {
    model.busy = true;
    var user = await repository.createUser();
    model.busy = false;
    return user;
  }
}
