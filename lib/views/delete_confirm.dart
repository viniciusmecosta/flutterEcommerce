import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Delete_confirm extends StatefulWidget {
  const Delete_confirm({super.key});

  @override
  State<Delete_confirm> createState() => _Delete_confirmState();
}

class _Delete_confirmState extends State<Delete_confirm> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    String a = ModalRoute.of(context)?.settings.arguments as String;
    final docEnd =
        FirebaseFirestore.instance.collection('enderecos').doc('${a}');
    return Scaffold(
      body: Container(
        child: LayoutBuilder(builder: (_, constraints) {
          return Stack(
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: altura * 0.5,
                  ),
                  height: altura * 0.28,
                  width: comprimento * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.warning, size: 120, color: Colors.red),
                    ],
                  ),
                ),
              ),
              Container(
                height: altura * 0.065,
                width: comprimento * 0.9,
                margin: EdgeInsets.only(
                    top: altura * 0.473,
                    left: comprimento * 0.05,
                    right: comprimento * 0.05),
                alignment: Alignment.center,
                child: Text('Confirmação',
                    style:
                        TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
              ),
              Container(
                height: altura * 0.05,
                width: comprimento * 0.9,
                margin: EdgeInsets.only(
                    top: altura * 0.539,
                    left: comprimento * 0.05,
                    right: comprimento * 0.05),
                alignment: Alignment.topCenter,
                child: Text('Tem certeza que deseja deletar esse endereço?',
                    style: TextStyle(
                      fontSize: 14,
                    )),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: altura * 0.615,
                      left: comprimento * 0.10,
                      right: comprimento * 0.1),
                  height: altura * 0.11,
                  width: comprimento * 0.80,
                  child: ElevatedButton(
                    onPressed: () async {
                      Navigator.of(context).pop();
                      await docEnd.delete();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Endereço Deletado')),
                      );
                    },
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFF67952)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFF67952)),
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    child: const Text(
                      'Deletar',
                      style: TextStyle(fontSize: 18),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(
                      top: altura * 0.75,
                      left: comprimento * 0.1,
                      right: comprimento * 0.1),
                  height: altura * 0.11,
                  width: comprimento * 0.80,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 255, 255)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFF67952)),
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    child: const Text(
                      'Cancelar',
                      style: TextStyle(fontSize: 18),
                    ),
                  )),
            ],
          );
        }),
      ),
    );
  }
}
