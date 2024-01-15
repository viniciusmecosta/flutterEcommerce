class User {
  String id_user;
  final String nome_user;
  final String senha;
  final String email;

  User({
    this.id_user = '',
    required this.nome_user,
    required this.senha,
    required this.email,
  });
  Map<String, dynamic> toJson() => {
        'id_user': id_user,
        'nome_user': nome_user,
        'senha': senha,
        'email': email,
      };
  static User fromJson(Map<String, dynamic> json) => User(
        id_user: json['id_user'],
        nome_user: json['nome_user'],
        senha: json['senha'],
        email: json['email'],
      );
}

Map<String, dynamic> toJson(id_user) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  //data = id_end
  return data;
}
