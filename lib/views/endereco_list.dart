import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eletrohome/models/endereco.dart';
import 'package:flutter/material.dart';
import 'package:eletrohome/routes/app_routes.dart';

class Endereco_List extends StatefulWidget {
  const Endereco_List({super.key});

  @override
  State<Endereco_List> createState() => _Endereco_ListState();
}

class _Endereco_ListState extends State<Endereco_List> {
  final CollectionReference _ends =
      FirebaseFirestore.instance.collection('enderecos');
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        title: Text("Endereços"),
        titleTextStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ), //TextStyle,
        actions: const <Widget>[], //<Widget>[]
        backgroundColor: Colors.white54,
        elevation: 200.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          tooltip: 'Voltar',
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ), //IconButton
      ),
      body: StreamBuilder(
        stream: _ends.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasError) {
            return Text('Erro ${streamSnapshot.error}');
          } else if (streamSnapshot.hasData) {
            // ignore: unused_local_variable
            final end = streamSnapshot.data!;
            return ListView.builder(
                itemCount: streamSnapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[index];
                  return Container(
                    width: comprimento,
                    height: altura / 4,
                    margin: EdgeInsets.only(top: altura * 0.025),
                    child: LayoutBuilder(builder: (_, constraints) {
                      return Stack(
                        children: <Widget>[
                          Center(
                            child: Container(
                              height: altura / 4,
                              width: comprimento * 0.94,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(18),
                                ),
                                border: Border.all(color: Color(0xFFF67952)),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: altura * 0.015, left: comprimento * 0.07),
                            width: comprimento * 0.89,
                            height: altura * 0.050,
                            child: Text('${documentSnapshot['nome_end']}',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: altura * 0.07, left: comprimento * 0.07),
                            width: comprimento * 0.89,
                            height: altura * 0.10,
                            child: Text(
                                '${documentSnapshot['rua']}, ${documentSnapshot['num_end']}, ${documentSnapshot['compl']} - ${documentSnapshot['bairro']}, ${documentSnapshot['cep']} / ${documentSnapshot['cidade']}-${documentSnapshot['estado']}  \n${documentSnapshot['tel']}',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                )),
                          ),
                          Container(
                              width: comprimento * 0.18,
                              height: altura * 0.065,
                              margin: EdgeInsets.only(
                                  top: altura * 0.17, left: comprimento * 0.07),
                              child: TextButton(
                                child: Text("Editar",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color(0xFFFFFFFF)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color(0xFFF67952)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ))),
                                onPressed: () {
                                  final a = new Endereco(
                                      id_end: documentSnapshot['id_end'],
                                      nome_end: documentSnapshot['nome_end'],
                                      rua: documentSnapshot['rua'],
                                      num_end: documentSnapshot['num_end'],
                                      bairro: documentSnapshot['bairro'],
                                      compl: documentSnapshot['compl'],
                                      cidade: documentSnapshot['cidade'],
                                      estado: documentSnapshot['estado'],
                                      tel: documentSnapshot['tel'],
                                      cep: documentSnapshot['cep']);
                                  Navigator.of(context).pushNamed(
                                    AppRoutes.ENDERECO_EDIT,
                                    arguments: a,
                                  );
                                },
                              )),
                          Container(
                            width: comprimento * 0.092,
                            height: altura * 0.05,
                            margin: EdgeInsets.only(
                                top: altura * 0.175, left: comprimento * 0.26),
                            child: IconButton(
                              icon: Icon(Icons.delete_outline),
                              iconSize: 29,
                              onPressed: () {
                                String a =
                                    (documentSnapshot['id_end']).toString();
                                Navigator.of(context).pushNamed(
                                  AppRoutes.CONFIRM_DELETE,
                                  arguments: a,
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    }),
                  );
                });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.ENDERECO_FORM);
        },
        backgroundColor: Color(0xFFF67952),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
