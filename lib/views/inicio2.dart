import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class Inicio2 extends StatefulWidget {
  const Inicio2({super.key});

  @override
  State<Inicio2> createState() => _Inicio2State();
}

class _Inicio2State extends State<Inicio2> {
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

        leading: Text(
          "\n   3/3",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
            color: Colors.black,
          ), //TextStyle,,
        ),
      ),
      body: Stack(children: <Widget>[
        Container(
          child: Image.asset('assets/images/inicio3.png'),
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
            "Aguarde seu pedido",
            style: TextStyle(
              fontSize: 23.09,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: altura * 0.7, left: comprimento * 0.1),
          //color: Colors.blue,
          width: comprimento * 0.8,
          height: altura * 0.15,
          child: Text(
              textAlign: TextAlign.center,
              "Caro cliente, após o deferimento do seu pedido, a transação é concluida e você está apto a receber sua encomenda, com todo o nosso padraão de qualidade. Parabéns!",
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
                Navigator.of(context).pushNamed(AppRoutes.LOGIN);
              },
              child: Text("Confirmar",
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
