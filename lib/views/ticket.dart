import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class Ticket extends StatefulWidget {
  const Ticket({super.key});

  @override
  State<Ticket> createState() => _TicketState();
}

final nome = TextEditingController();
final descricaos = TextEditingController();
final motivo = '';

enum Actions { delete }

class _TicketState extends State<Ticket> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(
          title: Text("Problemas com o pedido"),
          centerTitle: true,

          titleTextStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Colors.black,
          ), //TextStyle,
          //<Widget>[]
          backgroundColor: Colors.white,
          elevation: 3.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            tooltip: 'Voltar',
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          //IconButton
        ),

        //AppBar
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: comprimento * 0.96,
                margin: EdgeInsets.only(
                    left: comprimento * 0.07, top: altura * 0.07),
                child: Text("Número do pedido:",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.1, left: comprimento * 0.05),
                width: comprimento * 0.9,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1, color: Color(0xFFF67952)),
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
              ),
              Container(
                width: comprimento * 0.96,
                margin: EdgeInsets.only(
                    left: comprimento * 0.07, top: altura * 0.22),
                child: Text("Título do Problema:",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.25, left: comprimento * 0.05),
                width: comprimento * 0.9,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1, color: Color(0xFFF67952)),
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
              ),
              Container(
                width: comprimento * 0.96,
                margin: EdgeInsets.only(
                    left: comprimento * 0.07, top: altura * 0.37),
                child: Text("Descrição do Problema:",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.4, left: comprimento * 0.05),
                width: comprimento * 0.9,
                child: TextFormField(
                  maxLines: 10,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1, color: Color(0xFFF67952)),
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: altura * 0.8, left: comprimento * 0.1),
                  height: altura * 0.09,
                  width: comprimento * 0.8,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFF67952)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFF67952)),
                          borderRadius: BorderRadius.circular(25.0),
                        ))),
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.PARABENSTIC);
                    },
                    child: Text("Enviar",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )),
                  )),
            ],
          ),
        ));
  }
}
