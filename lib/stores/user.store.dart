import 'package:mobx/mobx.dart';
part 'user.store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  @observable
  String name = "Axel";

  @observable
  String email = "";

  @observable
  String picture = "https://placehold.it/200";

  @observable
  String token = "";

  @action
  void setUser(
    String pName,
    String pEmail,
    String pPicture,
    String pToken,
  ) {
    name = pName;
    email = pEmail;
    picture = pPicture;
    token = pToken;
  }

  @action
  void setEmail(String pEmail) {
    email = pEmail;
  }
}
