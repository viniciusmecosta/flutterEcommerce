class Cart {
  String id_card;
  final String num_card;
  final String validate;
  final String cvv;
  final String nome_card;
  final String cpf;

  Cart({
    this.id_card = '',
    required this.num_card,
    required this.validate,
    required this.cvv,
    required this.nome_card,
    required this.cpf,
  });
  Map<String, dynamic> toJson() => {
        'id_card': id_card,
        'num_card': num_card,
        'nome_card': nome_card,
        'validate': validate,
        'cvv': cvv,
        'cpf': cpf,
      };
  static Cart fromJson(Map<String, dynamic> json) => Cart(
      id_card: json['id_card'],
      num_card: json['num_card'],
      validate: json['validate'],
      cvv: json['cvv'],
      cpf: json['cpf'],
      nome_card: json['nome_card']);
}

Map<String, dynamic> toJson2(id_card) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  //data = id_end
  return data;
}
