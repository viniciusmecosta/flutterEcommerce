import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class Vender1 extends StatefulWidget {
  const Vender1({super.key});

  @override
  State<Vender1> createState() => _Vender1State();
}

enum Actions { delete }

class _Vender1State extends State<Vender1> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Antes de começar",
            style: TextStyle(
                fontSize: 18,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
          ),
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
                alignment: Alignment.center,
                height: altura * 0.2,
                color: const Color.fromRGBO(158, 158, 158, 0.07),
                width: comprimento * 0.9,
                margin: EdgeInsets.only(
                    left: comprimento * 0.05, top: altura * 0.1),
                child: Text(
                  "      Planeje uma \nestratégia de vendas",
                  style: TextStyle(fontSize: 18, fontFamily: "Poppins"),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 1,
                color: Colors.black,
                width: comprimento * 0.9,
                margin: EdgeInsets.only(
                    left: comprimento * 0.05, top: altura * 0.3),
              ),
              Container(
                alignment: Alignment.center,
                height: altura * 0.2,
                color: const Color.fromRGBO(158, 158, 158, 0.07),
                width: comprimento * 0.9,
                margin: EdgeInsets.only(
                    left: comprimento * 0.05, top: altura * 0.30),
                child: Text(
                  "Rede de prestadores\n       de serviço",
                  style: TextStyle(fontSize: 18, fontFamily: "Poppins"),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 1,
                color: Colors.black,
                width: comprimento * 0.9,
                margin: EdgeInsets.only(
                    left: comprimento * 0.05, top: altura * 0.5),
              ),
              Container(
                alignment: Alignment.center,
                height: altura * 0.2,
                color: const Color.fromRGBO(158, 158, 158, 0.07),
                width: comprimento * 0.9,
                margin: EdgeInsets.only(
                    left: comprimento * 0.05, top: altura * 0.5),
                child: Text(
                  "Registre-se e crie uma\n     conta como vendedor",
                  style: TextStyle(fontSize: 18, fontFamily: "Poppins"),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 1,
                color: Colors.black,
                width: comprimento * 0.9,
                margin: EdgeInsets.only(
                    left: comprimento * 0.05, top: altura * 0.7),
              ),
              Container(
                alignment: Alignment.topLeft,
                height: altura * 0.1,
                width: comprimento * 0.9,
                margin: EdgeInsets.only(
                    left: comprimento * 0.05, top: altura * 0.75),
                child: Text(
                  "Em caso de duvida clique",
                  style: TextStyle(
                      fontSize: 14, fontFamily: "Poppins", color: Colors.grey),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                height: altura * 0.1,
                width: comprimento * 0.9,
                margin: EdgeInsets.only(
                    left: comprimento * 0.46, top: altura * 0.75),
                child: Text(
                  "aqui",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Poppins",
                      color: Colors.deepOrangeAccent),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: altura * 0.8, left: comprimento * 0.05),
                  height: altura * 0.09,
                  width: comprimento * 0.9,
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
                          borderRadius: BorderRadius.circular(17),
                        ))),
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.VENDER2);
                    },
                    child: Text("Continuar",
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
