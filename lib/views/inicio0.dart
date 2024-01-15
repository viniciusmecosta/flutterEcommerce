import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class Inicio0 extends StatefulWidget {
  const Inicio0({super.key});

  @override
  State<Inicio0> createState() => _Inicio0State();
}

class _Inicio0State extends State<Inicio0> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: AppBar(
        title: null,

        titleTextStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          color: Colors.black,
        ), //TextStyle,
        //<Widget>[]
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.LOGIN);
            },
            child: Text("Pular",
                style: TextStyle(
                  fontSize: 12,
                  color: const Color.fromARGB(255, 33, 14, 14),
                  fontWeight: FontWeight.w400,
                )),
          ),
        ],
        leading: Text(
          "\n   1/3",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
            color: Colors.black,
          ), //TextStyle,,
        ),
      ),
      //IconButton
      body: Stack(children: <Widget>[
        Container(
          child: Image.asset('assets/images/inicio1.png'),
          margin: EdgeInsets.only(top: altura * 0.05, left: comprimento * 0.1),
          //color: Colors.amber,
          alignment: Alignment.centerLeft,
          width: comprimento * 0.8,
          height: altura * 0.5,
        ),
        Container(
          margin: EdgeInsets.only(top: altura * 0.61, left: comprimento * 0.15),
          //color: Colors.amber,
          alignment: Alignment.topCenter,
          width: comprimento * 0.7,
          height: altura * 0.10,
          child: Text(
            "Escolha o Produto",
            style: TextStyle(
              fontSize: 23.09,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: altura * 0.70, left: comprimento * 0.1),
          //color: Colors.blue,

          width: comprimento * 0.8,
          height: altura * 0.15,
          child: Text(
              textAlign: TextAlign.center,
              "Nosso produtos são disponibilizados para envio imediato, sejam eles adquiridos em grande quantidade ou na unidade. Garantimos qualidade e garantia de até 3 anos em todos os itens da nossa loja!",
              style: TextStyle(
                color: Color(0xff5b5858),
                fontSize: 13.47,
              )),
        ),
        Container(
            margin:
                EdgeInsets.only(top: altura * 0.87, left: comprimento * 0.2),
            height: altura * 0.09,
            width: comprimento * 0.6,
            child: ElevatedButton(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFF67952)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFF67952)),
                    borderRadius: BorderRadius.circular(25.0),
                  ))),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.INICIO1);
              },
              child: Text("Continuar",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  )),
            )),
      ]),
    );
  }
}
