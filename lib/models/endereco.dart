class Endereco {
  String id_end;
  final String nome_end;
  final String rua;
  final String num_end;
  final String bairro;
  final String compl;
  final String cidade;
  final String estado;
  final String tel;
  final String cep;

  Endereco({
    this.id_end = '',
    required this.nome_end,
    required this.rua,
    required this.num_end,
    required this.bairro,
    required this.compl,
    required this.cidade,
    required this.estado,
    required this.tel,
    required this.cep,
  });
  Map<String, dynamic> toJson() => {
        'id_end': id_end,
        'nome_end': nome_end,
        'rua': rua,
        'num_end': num_end,
        'bairro': bairro,
        'compl': compl,
        'cidade': cidade,
        'estado': estado,
        'tel': tel,
        'cep': cep
      };
  static Endereco fromJson(Map<String, dynamic> json) => Endereco(
      id_end: json['id_end'],
      nome_end: json['nome_end'],
      rua: json['rua'],
      num_end: json['num_end'],
      bairro: json['bairro'],
      compl: json['compl'],
      cidade: json['cidade'],
      estado: json['estado'],
      tel: json['tel'],
      cep: json['cep']);
}

Map<String, dynamic> toJson2(id_end) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  //data = id_end
  return data;
}
