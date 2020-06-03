import 'package:masflu/models/user.dart';

class UserRepository {
  Future<UserModel> createUser() async {
    await Future.delayed(new Duration(milliseconds: 1500));
    return new UserModel(
      id: '1',
      name: 'Axel',
      email: 'teste@teste.com',
      picture: 'https://picsum.photos/200/200',
      role: 'student',
      token: 'xpto',
    );
  }

  Future<UserModel> logIn(email, password) async {
    await Future.delayed(new Duration(milliseconds: 1500));
    if (email == 'ajaxeljunio@gmail.com' && password == '123456') {
      return new UserModel(
        id: '1',
        name: 'Axel',
        email: 'teste@teste.com',
        picture: 'https://picsum.photos/200/200',
        role: 'student',
        token: 'xpto',
      );
    } else {
      throw Exception('Email ou senha incorretos.');
    }
  }
}
