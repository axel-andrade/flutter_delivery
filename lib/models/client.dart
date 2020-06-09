class ClientModel {
  String id;
  String name;
  String email;
  String picture;
  String cpf;
  String phone;
  String address;
  DateTime birthDate;

  ClientModel({
    this.id,
    this.name,
    this.email,
    this.picture,
    this.cpf,
    this.phone,
    this.address,
    this.birthDate
  });

  ClientModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    picture = json['picture'];
    cpf = json['cpf'];
    phone = json['phone'];
    address = json['address'];
    birthDate = DateTime.parse(json['birthDate']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['picture'] = this.picture;
    data['cpf'] = this.cpf;
    data['phone'] = this.phone;
    data['birthDate'] = this.birthDate.toString();
    return data;
  }
}
