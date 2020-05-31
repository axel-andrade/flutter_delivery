import 'package:masflu/models/user.dart';
import 'package:masflu/view_models/signup.dart';

class AccountRepository {
  Future<UserModel> createAccount(SignupViewModel model) async {
    await Future.delayed(new Duration(milliseconds: 1500));
    return new UserModel(
      id: "1",
      name: "Axel",
      email: "teste@teste.com",
      picture: "https://picsum.photos/200/200",
      role: "student",
      token: "xpto",
    );
  }
}
