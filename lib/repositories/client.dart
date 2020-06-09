import 'package:masflu/models/client.dart';

class ClientRepository {
  Future<List<ClientModel>> get() async {
    var clients = new List<ClientModel>();
    clients.add(
      new ClientModel(
          id: '123',
          name: 'Axel',
          email: 'ajaxeljunio@gmail.com',
          picture: '',
          cpf: '14256481245',
          phone: '31991733167',
          address: 'Av. Principal, Recanto Feliz, Raposos - MG',
          birthDate: new DateTime(1993)),
    );
    clients.add(
      new ClientModel(
          id: '124',
          name: 'Axel',
          email: 'ajaxeljunio@gmail.com',
          picture: '',
          cpf: '14256481245',
          phone: '31991733167',
          address: 'Av. Principal, Recanto Feliz, Raposos - MG',
          birthDate: new DateTime(1993)),
    );
    clients.add(
      new ClientModel(
          id: '125',
          name: 'Axel',
          email: 'ajaxeljunio@gmail.com',
          picture: '',
          cpf: '14256481245',
          phone: '31991733167',
          address: 'Av. Principal, Recanto Feliz, Raposos - MG',
          birthDate: new DateTime(1993)),
    );
    clients.add(
      new ClientModel(
          id: '126',
          name: 'Axel',
          email: 'ajaxeljunio@gmail.com',
          picture: '',
          cpf: '14256481245',
          phone: '31991733167',
          address: 'Av. Principal, Recanto Feliz, Raposos - MG',
          birthDate: new DateTime(1993)),
    );
    await Future.delayed(new Duration(milliseconds: 1500));
    return clients;
  }

  Future<ClientModel> save(ClientModel c) async {
    await Future.delayed(new Duration(milliseconds: 1500));
    return c;
  }

  Future<void> delete(String id) async {
    await Future.delayed(new Duration(milliseconds: 1500));
  }

  Future<ClientModel> update(ClientModel c, String id) async {
    await Future.delayed(new Duration(milliseconds: 1500));
    return c;
  }
}
