import 'package:flutter/material.dart';

class Suporte extends StatefulWidget {
  const Suporte({super.key});

  @override
  State<Suporte> createState() => _SuporteState();
}

enum Actions { delete }

class _SuporteState extends State<Suporte> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(
          title: Text("Suporte"),
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
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  //border: Border.all(color: Color(0xFFF67952)),
                  color: Color.fromRGBO(209, 209, 209, 0.5),
                ),
                child: Icon(
                  Icons.description_rounded,
                  size: 50,
                ),
                width: comprimento * 0.25,
                height: comprimento * 0.25,
                margin: EdgeInsets.only(
                    left: comprimento * 0.15, top: altura * 0.05),
                //color: Color(0xFFD1d1d1),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  //border: Border.all(color: Color(0xFFF67952)),
                  color: Color.fromRGBO(209, 209, 209, 0.5),
                ),
                child: Icon(
                  Icons.local_shipping_sharp,
                  size: 50,
                ),
                width: comprimento * 0.25,
                height: comprimento * 0.25,
                margin: EdgeInsets.only(
                    left: comprimento * 0.60, top: altura * 0.05),
                //color: Color(0xFFD1d1d1),
              ),
              Container(
                  width: comprimento * 0.3,
                  height: comprimento * 0.25,
                  margin: EdgeInsets.only(
                      left: comprimento * 0.15, top: altura * 0.2),
                  child: Text(
                    "Problemas com\n      o pedido",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  )),
              Container(
                  width: comprimento * 0.3,
                  height: comprimento * 0.25,
                  margin: EdgeInsets.only(
                      left: comprimento * 0.659, top: altura * 0.2),
                  child: Text(
                    "Entrega",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  )),
              ////2222
              ///222
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  //border: Border.all(color: Color(0xFFF67952)),
                  color: Color.fromRGBO(209, 209, 209, 0.5),
                ),
                child: Icon(
                  Icons.production_quantity_limits,
                  size: 50,
                ),
                width: comprimento * 0.25,
                height: comprimento * 0.25,
                margin: EdgeInsets.only(
                    left: comprimento * 0.15, top: altura * 0.325),
                //color: Color(0xFFD1d1d1),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  //border: Border.all(color: Color(0xFFF67952)),
                  color: Color.fromRGBO(209, 209, 209, 0.5),
                ),
                child: Icon(
                  Icons.credit_card,
                  size: 50,
                ),
                width: comprimento * 0.25,
                height: comprimento * 0.25,
                margin: EdgeInsets.only(
                    left: comprimento * 0.60, top: altura * 0.325),
                //color: Color(0xFFD1d1d1),
              ),
              Container(
                  width: comprimento * 0.3,
                  height: comprimento * 0.25,
                  margin: EdgeInsets.only(
                      left: comprimento * 0.17, top: altura * 0.48),
                  child: Text(
                    "Devolução ou\n    reembolso",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  )),
              Container(
                  width: comprimento * 0.3,
                  height: comprimento * 0.25,
                  margin: EdgeInsets.only(
                      left: comprimento * 0.623, top: altura * 0.48),
                  child: Text(
                    "Pagamentos e \n   promoções",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  )),

              ///3/
              ///3333
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  //border: Border.all(color: Color(0xFFF67952)),
                  color: Color.fromRGBO(209, 209, 209, 0.5),
                ),
                child: Icon(
                  Icons.inventory,
                  size: 50,
                ),
                width: comprimento * 0.25,
                height: comprimento * 0.25,
                margin: EdgeInsets.only(
                    left: comprimento * 0.15, top: altura * 0.5925),
                //color: Color(0xFFD1d1d1),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  //border: Border.all(color: Color(0xFFF67952)),
                  color: Color.fromRGBO(209, 209, 209, 0.5),
                ),
                child: Icon(
                  Icons.enhanced_encryption,
                  size: 50,
                ),
                width: comprimento * 0.25,
                height: comprimento * 0.25,
                margin: EdgeInsets.only(
                    left: comprimento * 0.60, top: altura * 0.5925),
                //color: Color(0xFFD1d1d1),
              ),
              Container(
                  width: comprimento * 0.4,
                  height: comprimento * 0.25,
                  margin: EdgeInsets.only(
                      left: comprimento * 0.13, top: altura * 0.74),
                  child: Text(
                    "Produtos e estoque",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  )),
              Container(
                  width: comprimento * 0.3,
                  height: comprimento * 0.25,
                  margin: EdgeInsets.only(
                      left: comprimento * 0.623, top: altura * 0.74),
                  child: Text(
                    "Segurança e privacidade",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  )),
              Container(
                  alignment: Alignment.center,
                  width: comprimento * 0.7,
                  height: comprimento * 0.1,
                  margin: EdgeInsets.only(
                      left: comprimento * 0.15, top: altura * 0.85),
                  child: Text(
                    "Não consegue encontrar o que \n                   procura?",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  alignment: Alignment.center,
                  width: comprimento * 0.35,
                  height: altura * 0.05,
                  margin: EdgeInsets.only(
                      left: comprimento * 0.325, top: altura * 0.92),
                  child: Text(
                    "Serviço ao cliente",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal),
                  )),
            ],
          ),
        ));
  }
}
