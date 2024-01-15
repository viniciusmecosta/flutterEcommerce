import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class Vender3 extends StatefulWidget {
  const Vender3({super.key});

  @override
  State<Vender3> createState() => _Vender3State();
}

enum Actions { delete }

class _Vender3State extends State<Vender3> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(
          actions: [
            Image.asset(
              'assets/imgs/icone.png',
              width: 40,
            ),
          ],
          title: null,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Colors.black,
          ), //TextStyle,
          //<Widget>[]
          backgroundColor: Colors.white,
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
                child: Text(
                  "Venda",
                  style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontFamily: 'Poppins',
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.topCenter,
                height: altura * 0.4,
                width: comprimento * 0.8,
                margin: EdgeInsets.only(left: comprimento * 0.10),
              ),
              Container(
                child: Text(
                  "na",
                  style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontFamily: 'Poppins',
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.topCenter,
                height: altura * 0.4,
                width: comprimento * 0.8,
                margin: EdgeInsets.only(
                    top: altura * 0.07, left: comprimento * 0.10),
              ),
              Container(
                child: Text(
                  "EletroHome",
                  style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontFamily: 'Poppins',
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.topCenter,
                height: altura * 0.4,
                width: comprimento * 0.8,
                margin: EdgeInsets.only(
                    top: altura * 0.14, left: comprimento * 0.10),
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: comprimento * 0.5,
                margin: EdgeInsets.only(
                    left: comprimento * 0.001, top: altura * 0.30),
                child: Text(
                  "+1.9M",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 100,
                width: comprimento * 0.35,
                margin: EdgeInsets.only(
                    left: comprimento * 0.07, top: altura * 0.35),
                child: Text(
                  "A publicidade faz com\n    que sua marca e \nprodutos ganham mais \n         visibilidade.",
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: comprimento * 0.5,
                margin: EdgeInsets.only(
                    left: comprimento * 0.545, top: altura * 0.30),
                child: Text(
                  "+300M",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 100,
                width: comprimento * 0.35,
                margin: EdgeInsets.only(
                    left: comprimento * 0.58, top: altura * 0.35),
                child: Text(
                  "Clientes compram na \n        EletroHome \n      mundialmente",
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: comprimento * 0.4,
                margin: EdgeInsets.only(
                    left: comprimento * 0.3, top: altura * 0.55),
                child: Text(
                  "70%",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 100,
                width: comprimento * 0.4,
                margin: EdgeInsets.only(
                    left: comprimento * 0.3, top: altura * 0.61),
                child: Text(
                  "Dos vendedores parceiros da EletroHome fazem a primeira venda em menos \n           de 60 dias",
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: altura * 0.85, left: comprimento * 0.05),
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
                      Navigator.of(context).pushNamed(AppRoutes.HOME);
                    },
                    child: Text("Home",
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
