import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class Vender2 extends StatefulWidget {
  const Vender2({super.key});

  @override
  State<Vender2> createState() => _Vender2State();
}

enum Actions { delete }

class _Vender2State extends State<Vender2> {
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
            "Alcance seus objetivos\n         comerciais",
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
                child: Image.asset('assets/images/venda3.png'),
                alignment: Alignment.center,
                height: altura * 0.2,
                width: comprimento * 0.35,
                margin: EdgeInsets.only(
                    left: comprimento * 0.07, top: altura * 0.05),
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: comprimento * 0.35,
                margin: EdgeInsets.only(
                    left: comprimento * 0.06, top: altura * 0.25),
                child: Text(
                  "Seja descoberto",
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 100,
                width: comprimento * 0.35,
                margin: EdgeInsets.only(
                    left: comprimento * 0.07, top: altura * 0.28),
                child: Text(
                  "A publicidade faz com\n    que sua marca e \nprodutos ganham mais \n         visibilidade.",
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
                ),
              ),
              Container(
                child: Image.asset('assets/images/venda2.png'),
                alignment: Alignment.center,
                height: altura * 0.2,
                width: comprimento * 0.35,
                margin: EdgeInsets.only(
                    left: comprimento * 0.58, top: altura * 0.05),
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: comprimento * 0.4,
                margin: EdgeInsets.only(
                    left: comprimento * 0.545, top: altura * 0.25),
                child: Text(
                  "Aumente as vendas",
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 100,
                width: comprimento * 0.35,
                margin: EdgeInsets.only(
                    left: comprimento * 0.58, top: altura * 0.28),
                child: Text(
                  "Muitos compradores chegam à EletroHome\n    determinados a \n         comprar.",
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
                ),
              ),
              Container(
                child: Image.asset('assets/images/venda1.png'),
                alignment: Alignment.center,
                height: altura * 0.2,
                width: comprimento * 0.35,
                margin: EdgeInsets.only(
                    left: comprimento * 0.325, top: altura * 0.43),
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: comprimento * 0.4,
                margin: EdgeInsets.only(
                    left: comprimento * 0.3, top: altura * 0.62),
                child: Text(
                  "Controle os Custos",
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 100,
                width: comprimento * 0.35,
                margin: EdgeInsets.only(
                    left: comprimento * 0.325, top: altura * 0.645),
                child: Text(
                  "Pague apenas peloas \n   cliques que seus \n  anúncios recebem.",
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
                      Navigator.of(context).pushNamed(AppRoutes.VENDER3);
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
