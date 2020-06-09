import 'package:masflu/models/client.dart';
import 'package:masflu/repositories/client.dart';

class ClientController {
  ClientRepository _repository;
  
  ClientController() {
    _repository = new ClientRepository();
  }
  
  Future<ClientModel> save (ClientModel c) async {
    return await _repository.save(c);
  }

  Future<ClientModel> update (ClientModel data, String id) async {
    return await _repository.update(data, id);
  }

  Future<List<ClientModel>> get () async {
    var clients = await _repository.get();
    return clients;
  }

  Future<void> delete (String id) async {
    return await _repository.delete(id);
  }

}
