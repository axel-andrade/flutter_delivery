class HomeRepository {
  Future<void> getItems() async {
    print("atualizou repositorio");
    await Future.delayed(Duration(seconds: 2));
  }
}
