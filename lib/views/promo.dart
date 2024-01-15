import 'package:flutter/material.dart';

class Promo extends StatefulWidget {
  const Promo({super.key});

  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(
          title: Text("Promoções"),
          centerTitle: true,

          titleTextStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Colors.black,
          ), //TextStyle,
          //<Widget>[]
          backgroundColor: Colors.white,
          elevation: 3.0,
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
                child: Image.asset('assets/images/product_0.png',
                    fit: BoxFit.scaleDown),
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.08, top: altura * 0.05),
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
                child: Image.asset('assets/images/product_1.png',
                    fit: BoxFit.scaleDown),
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.53, top: altura * 0.05),
              ),
              Container(
                width: altura * 0.038,
                height: altura * 0.038,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  //border: Border.all(color: Color(0xFFF67952)),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(
                    top: 0.065 * altura, left: comprimento * 0.835),
                child: Icon(
                  Icons.percent_sharp,
                  size: 18,
                  color: Colors.red,
                ),
              ),
              Container(
                width: altura * 0.038,
                height: altura * 0.038,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  //border: Border.all(color: Color(0xFFF67952)),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(
                    top: 0.065 * altura, left: comprimento * 0.38),
                child: Icon(
                  Icons.percent_sharp,
                  size: 18,
                  color: Colors.red,
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.12, top: altura * 0.255),
                child: Text(
                  "Notebook compac i3",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.165, top: altura * 0.285),
                child: Text(
                  "de R\$ 3568,90",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.165, top: altura * 0.305),
                child: Text(
                  "por R\$ 3068,90 !",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.66, top: altura * 0.255),
                child: Text(
                  "Fone jbl",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.62, top: altura * 0.285),
                child: Text(
                  "de R\$ 220,90",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.62, top: altura * 0.305),
                child: Text(
                  "por R\$ 200,90 !",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ),
              /////
              ///2222
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  //border: Border.all(color: Color(0xFFF67952)),
                  color: Color.fromRGBO(209, 209, 209, 0.5),
                ),
                child: Image.asset('assets/images/product_3.png',
                    fit: BoxFit.scaleDown),
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.08, top: altura * 0.35),
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
                child: Image.asset('assets/images/product_2.jpg',
                    fit: BoxFit.scaleDown),
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.53, top: altura * 0.35),
              ),
              Container(
                width: altura * 0.038,
                height: altura * 0.038,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  //border: Border.all(color: Color(0xFFF67952)),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(
                    top: 0.365 * altura, left: comprimento * 0.835),
                child: Icon(
                  Icons.percent,
                  size: 18,
                  color: Colors.red,
                ),
              ),
              Container(
                width: altura * 0.038,
                height: altura * 0.038,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  //border: Border.all(color: Color(0xFFF67952)),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(
                    top: 0.365 * altura, left: comprimento * 0.38),
                child: Icon(
                  Icons.percent,
                  size: 18,
                  color: Colors.red,
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.13, top: altura * 0.555),
                child: Text(
                  "Iphone 13 Branco",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.165, top: altura * 0.583),
                child: Text(
                  "de R\$ 6568,90",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.165, top: altura * 0.605),
                child: Text(
                  "por R\$ 6168,90 !",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.62, top: altura * 0.555),
                child: Text(
                  "TV LED 4K TCL",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.62, top: altura * 0.583),
                child: Text(
                  "de R\$ 4220,90",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.62, top: altura * 0.605),
                child: Text(
                  "por R\$ 4020,90 !",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ),
              /////3
              ///3
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  //border: Border.all(color: Color(0xFFF67952)),
                  color: Color.fromRGBO(209, 209, 209, 0.5),
                ),
                child: Image.asset('assets/images/product_0.png',
                    fit: BoxFit.scaleDown),
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.08, top: altura * 0.64),
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
                child: Image.asset('assets/images/product_1.png',
                    fit: BoxFit.scaleDown),
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.53, top: altura * 0.64),
              ),
              Container(
                width: altura * 0.038,
                height: altura * 0.038,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  //border: Border.all(color: Color(0xFFF67952)),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(
                    top: 0.65 * altura, left: comprimento * 0.835),
                child: Icon(
                  Icons.percent,
                  size: 18,
                  color: Colors.red,
                ),
              ),
              Container(
                width: altura * 0.038,
                height: altura * 0.038,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  //border: Border.all(color: Color(0xFFF67952)),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(
                    top: 0.65 * altura, left: comprimento * 0.38),
                child: Icon(
                  Icons.percent,
                  size: 18,
                  color: Colors.red,
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.12, top: altura * 0.843),
                child: Text(
                  "Notebook compac i3",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.165, top: altura * 0.869),
                child: Text(
                  "de R\$ 3568,90",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.165, top: altura * 0.893),
                child: Text(
                  "por R\$ 3518,90",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.66, top: altura * 0.843),
                child: Text(
                  "Fone jbl",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.62, top: altura * 0.869),
                child: Text(
                  "de R\$ 220,90",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.62, top: altura * 0.893),
                child: Text(
                  "por R\$ 200,90",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ));
  }
}
