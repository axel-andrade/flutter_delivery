class HomeRepository {
  Future<void> getItems() async {
    print("entrou no repositorio");
    await Future.delayed(Duration(seconds: 2));
  }
}
