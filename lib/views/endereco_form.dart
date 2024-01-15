import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../models/endereco.dart';

class EnderecoForm extends StatefulWidget {
  const EnderecoForm({super.key});
  @override
  State<EnderecoForm> createState() => _EnderecoFormState();
}

class _EnderecoFormState extends State<EnderecoForm> {
  final _form = GlobalKey<FormState>();
  final nome_end = TextEditingController();
  final rua = TextEditingController();
  final num_end = TextEditingController();
  final bairro = TextEditingController();
  final cep = TextEditingController();
  final compl = TextEditingController();
  final cidade = TextEditingController();
  final estado = TextEditingController();
  final tel = TextEditingController();

  @override
  Widget build(BuildContext context) {
    try {
      // ignore: unused_local_variable
      final Endereco end =
          ModalRoute.of(context)?.settings.arguments as Endereco;
    } catch (e) {
      print(e);
    }
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;

    return Scaffold(
        appBar: AppBar(
          title: Text("Adicione um endereço"),
          titleTextStyle: TextStyle(
            fontFamily: 'Actor',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ), //TextStyle,
          actions: const <Widget>[
            //IconButton
          ], //<Widget>[]
          backgroundColor: Colors.white54,
          elevation: 200.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            tooltip: 'Voltar',
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
              ;
            },
          ), //IconButton
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Form(
            key: _form,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 16,
                ),
                Container(
                  margin: EdgeInsets.only(left: comprimento * 0.04),
                  height: 20,
                  child: Text("Descrição do Endereço",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  alignment: Alignment.bottomLeft,
                ),
                Container(
                  width: comprimento * 0.9,
                  child: TextFormField(
                    controller: nome_end,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo não pode ficar vazio';
                      }
                      if (value.length < 3) {
                        return 'O campo Nome do endereço deve ter mais de 2 caracteres';
                      } else
                        return null;
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFFF67952)),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  margin: EdgeInsets.only(left: comprimento * 0.04),
                  height: 20,
                  child: Text("Rua",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  alignment: Alignment.bottomLeft,
                ),
                Container(
                  width: comprimento * 0.9,
                  child: TextFormField(
                    controller: rua,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo não pode ficar vazio';
                      }
                      if (value.length < 3) {
                        return 'O campo rua deve ter mais de 2 caracteres';
                      } else
                        return null;
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFFF67952)),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: comprimento * 0.04),
                  height: 20,
                  child: const Text("Número",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                Container(
                  width: comprimento * 0.9,
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: num_end,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo não pode ficar vazio';
                      } else
                        return null;
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // Set border for focused state
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFFF67952)),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: comprimento * 0.04),
                  height: 20,
                  child: Text("Bairro",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                Container(
                  width: comprimento * 0.9,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: bairro,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo não pode ficar vazio';
                      }
                      if (value.length < 2) {
                        return 'O Bairro deve ter mais de 1 caracteres';
                      } else
                        return null;
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFFF67952)),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: comprimento * 0.04),
                  height: 20,
                  child: Text("CEP",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                Container(
                  width: comprimento * 0.9,
                  child: TextFormField(
                    controller: cep,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo não pode ficar vazio';
                      }
                      if (value.length != 8) {
                        return 'Digite um número válido!';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFFF67952)),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: comprimento * 0.04),
                  height: 20,
                  child: Text("Complemento",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                Container(
                  width: comprimento * 0.9,
                  child: TextFormField(
                    controller: compl,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo não pode ficar vazio';
                      }
                      if (value.length < 3) {
                        return 'O campo Complemento deve ter mais de 2 caracteres';
                      } else
                        return null;
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFFF67952)),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: comprimento * 0.04),
                  height: 20,
                  child: Text("Cidade",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                Container(
                  width: comprimento * 0.9,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: cidade,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo não pode ficar vazio';
                      }
                      if (value.length < 3) {
                        return 'O campo cidade deve ter mais de 2 caracteres';
                      } else
                        return null;
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFFF67952)),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: comprimento * 0.04),
                  height: 20,
                  child: Text("Estado",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                Container(
                  width: comprimento * 0.9,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: estado,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo não pode ficar vazio';
                      }
                      if (value.length < 2) {
                        return 'O campo cidade deve ter mais de 1 caracteres';
                      } else
                        return null;
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFFF67952)),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: comprimento * 0.04),
                  height: 20,
                  child: Text("Telefone",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                Container(
                  width: comprimento * 0.9,
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: tel,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo não pode ficar vazio';
                      }
                      if (value.length < 10 || value.length > 11) {
                        return 'Digite um número válido!';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFFF67952)),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                    height: altura * 0.1,
                    width: comprimento * 0.90,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_form.currentState!.validate()) {
                          final end = Endereco(
                              nome_end: nome_end.text,
                              rua: rua.text,
                              num_end: num_end.text,
                              bairro: bairro.text,
                              compl: compl.text,
                              cidade: cidade.text,
                              estado: estado.text,
                              tel: tel.text,
                              cep: cep.text);
                          createEndereco(end);
                          Navigator.of(context).pop();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Endereço cadastrado')),
                          );
                        }
                      },
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFFF67952)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFF67952)),
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                      child: const Text(
                        'Salvar',
                        style: TextStyle(fontSize: 18),
                      ),
                    )),
              ],
            ),
          ),
        ));
  }

  Future createEndereco(Endereco end) async {
    final docEnd = FirebaseFirestore.instance.collection('enderecos').doc();

    end.id_end = docEnd.id;

    final json = end.toJson();

    await docEnd.set(json);
  }
}
