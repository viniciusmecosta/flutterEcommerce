import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/endereco.dart';

class EnderecoFormEdit extends StatefulWidget {
  const EnderecoFormEdit({super.key});

  @override
  State<EnderecoFormEdit> createState() => _EnderecoFormState();
}

class _EnderecoFormState extends State<EnderecoFormEdit> {
  final _form = GlobalKey<FormState>();

  final Map<String, String> _formData = {};

  void _loadFormData(Endereco end) {
    // ignore: unnecessary_null_comparison
    if (end != null) {
      _formData['id_end'] = end.id_end;
      _formData['Nome do Endereco'] = end.nome_end;
      _formData['Rua'] = end.rua;
      _formData['Número'] = end.num_end;
      _formData['Bairro'] = end.bairro;
      _formData['CEP'] = end.cep;
      _formData['Complemento'] = end.compl;
      _formData['Cidade'] = end.cidade;
      _formData['Estado'] = end.estado;
      _formData['Telefone'] = end.tel;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Endereco end = ModalRoute.of(context)?.settings.arguments as Endereco;
    _loadFormData(end);
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(
          title: Text("Edite um endereço"),
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
                  height: 20,
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
                    initialValue: _formData['Nome do Endereco'],
                    onSaved: (value) => _formData['Nome do Endereco'] = value!,
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
                  height: 20,
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
                    initialValue: _formData['Rua'],
                    onSaved: (newValue) => _formData['Rua'] = newValue!,
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
                  height: 20,
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo não pode ficar vazio';
                      } else
                        return null;
                    },
                    initialValue: _formData['Número'],
                    onSaved: (newValue) => _formData['Número'] = newValue!,
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
                  height: 20,
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo não pode ficar vazio';
                      }
                      if (value.length < 2) {
                        return 'O Bairro deve ter mais de 1 caracteres';
                      } else
                        return null;
                    },
                    initialValue: _formData['Bairro'],
                    onSaved: (newValue) => _formData['Bairro'] = newValue!,
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
                  height: 20,
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
                    initialValue: _formData['CEP'],
                    onSaved: (newValue) => _formData['CEP'] = newValue!,
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
                  height: 20,
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
                    initialValue: _formData['Complemento'],
                    onSaved: (newValue) => _formData['Complemento'] = newValue!,
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
                  height: 20,
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo não pode ficar vazio';
                      }
                      if (value.length < 3) {
                        return 'O campo cidade deve ter mais de 2 caracteres';
                      } else
                        return null;
                    },
                    initialValue: _formData['Cidade'],
                    onSaved: (newValue) => _formData['Cidade'] = newValue!,
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
                  height: 20,
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo não pode ficar vazio';
                      }
                      if (value.length < 2) {
                        return 'O campo cidade deve ter mais de 1 caracteres';
                      } else
                        return null;
                    },
                    initialValue: _formData['Estado'],
                    onSaved: (newValue) => _formData['Estado'] = newValue!,
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
                  height: 20,
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo não pode ficar vazio';
                      }
                      if (value.length < 10 || value.length > 10) {
                        return 'Digite um número válido!';
                      }
                      return null;
                    },
                    initialValue: _formData['Telefone'],
                    onSaved: (value) => _formData['Telefone'] = value!,
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
                  height: 20,
                ),
                Container(
                    height: altura * 0.1,
                    width: comprimento * 0.90,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_form.currentState!.validate()) {
                          _form.currentState!.save();
                          dynamic nome_end1 =
                              _formData['Nome do Endereco'].toString();
                          dynamic rua1 = _formData['Rua'].toString();
                          dynamic num_end1 = _formData['Número'].toString();
                          dynamic bairro1 = _formData['Bairro'].toString();
                          dynamic compl1 = _formData['Complemento'].toString();
                          dynamic cidade1 = _formData['Cidade'].toString();
                          dynamic estado1 = _formData['Estado'].toString();
                          dynamic cep1 = _formData['CEP'].toString();
                          dynamic tel1 = _formData['Telefone'].toString();
                          final docUser = FirebaseFirestore.instance
                              .collection('enderecos')
                              .doc('${end.id_end}');
                          await docUser.update({
                            'nome_end': nome_end1,
                            'rua': rua1,
                            'num_end': num_end1,
                            'bairro': bairro1,
                            'compl': compl1,
                            'cidade': cidade1,
                            'estado': estado1,
                            'cep': cep1,
                            'tel': tel1,
                          });

                          Navigator.of(context).pop();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Endereço Alterado')),
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
}
