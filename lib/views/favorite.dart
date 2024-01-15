import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

enum Actions { delete }

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(
          title: Text("Favoritos"),
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
                  Icons.favorite,
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
                  Icons.favorite,
                  size: 18,
                  color: Colors.red,
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.12, top: altura * 0.26),
                child: Text(
                  "Notebook compac i3",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.175, top: altura * 0.285),
                child: Text(
                  "R\$ 3568,90",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.66, top: altura * 0.26),
                child: Text(
                  "Fone jbl",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                width: comprimento * 0.39,
                height: altura * 0.2,
                margin: EdgeInsets.only(
                    left: comprimento * 0.66, top: altura * 0.285),
                child: Text(
                  "R\$ 220,90",
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
                  Icons.favorite,
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
                  Icons.favorite,
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
                    left: comprimento * 0.175, top: altura * 0.583),
                child: Text(
                  "R\$ 6568,90",
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
                    left: comprimento * 0.64, top: altura * 0.583),
                child: Text(
                  "R\$ 4220,90",
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
                  Icons.favorite,
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
                  Icons.favorite,
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
                    left: comprimento * 0.175, top: altura * 0.869),
                child: Text(
                  "R\$ 3568,90",
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
                    left: comprimento * 0.66, top: altura * 0.869),
                child: Text(
                  "R\$ 220,90",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ));
  }
}
