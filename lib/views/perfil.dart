import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

enum Actions { delete }

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(
          title: Text("Perfil"),
          centerTitle: true,

          titleTextStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Colors.black,
          ), //TextStyle,
          //<Widget>[]
          backgroundColor: Colors.white,
          elevation: 3.0,
          leading: null,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.VENDER1);
              },
              child: Text("Vender",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ],
          //IconButton
        ),

        //AppBar
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                height: altura * 0.18,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topCenter,
                    colors: [
                      const Color.fromRGBO(255, 110, 64, 0.07),
                      const Color.fromRGBO(255, 110, 64, 0.07),
                      const Color.fromRGBO(255, 110, 64, 0.07),
                    ],
                  ),
                ),
              ),
              Container(
                height: altura * 0.2,
                width: 0.4 * comprimento,
                margin: EdgeInsets.only(
                    left: comprimento * 0.3, top: 0.075 * altura),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://uploads.metropoles.com/wp-content/uploads/2023/07/17124030/F1K-cdbXwAgovdo-1.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: altura * 0.3),
                alignment: Alignment.topCenter,
                child: Text("Maria Costa",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.only(top: altura * 0.345),
                alignment: Alignment.topCenter,
                child: Text("maria@gmail.com",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal)),
              ),
              Container(
                decoration: new BoxDecoration(
                  color: const Color.fromRGBO(158, 158, 158, 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 0.275 * comprimento,
                height: 0.35 * comprimento,
                margin: EdgeInsets.only(
                    top: altura * 0.4, left: comprimento * 0.075),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.shopping_cart_sharp),
                  color: Color.fromARGB(255, 233, 72, 23),
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.PEDIDOS);
                  },
                ),
                decoration: new BoxDecoration(
                  color: const Color.fromRGBO(255, 110, 64, 0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 0.1 * comprimento,
                height: 0.1 * comprimento,
                margin: EdgeInsets.only(
                    top: altura * 0.42, left: comprimento * 0.1625),
              ),
              Container(
                width: 0.2 * comprimento,
                height: 0.2 * comprimento,
                margin: EdgeInsets.only(
                    top: altura * 0.5, left: comprimento * 0.145),
                child: Text(
                  "Compras",
                  style:
                      TextStyle(color: const Color.fromARGB(255, 81, 80, 80)),
                ),
              ),
              Container(
                width: 0.2 * comprimento,
                height: 0.2 * comprimento,
                margin: EdgeInsets.only(
                    top: altura * 0.54, left: comprimento * 0.18),
                child: Text(
                  "+30",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 81, 80, 80),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: new BoxDecoration(
                  color: const Color.fromRGBO(158, 158, 158, 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 0.275 * comprimento,
                height: 0.35 * comprimento,
                margin: EdgeInsets.only(
                    top: altura * 0.4, left: comprimento * 0.3625),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.my_library_books),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.CUPONS);
                  },
                ),
                decoration: new BoxDecoration(
                  color: const Color.fromRGBO(33, 150, 243, 0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 0.1 * comprimento,
                height: 0.1 * comprimento,
                margin: EdgeInsets.only(
                    top: altura * 0.42, left: comprimento * 0.44),
              ),
              Container(
                width: 0.2 * comprimento,
                height: 0.2 * comprimento,
                margin: EdgeInsets.only(
                    top: altura * 0.5, left: comprimento * 0.44),
                child: Text(
                  "Cupons",
                  style:
                      TextStyle(color: const Color.fromARGB(255, 81, 80, 80)),
                ),
              ),
              Container(
                width: 0.2 * comprimento,
                height: 0.2 * comprimento,
                margin: EdgeInsets.only(
                    top: altura * 0.54, left: comprimento * 0.46),
                child: Text(
                  " +3",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 81, 80, 80),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: new BoxDecoration(
                  color: const Color.fromRGBO(158, 158, 158, 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 0.275 * comprimento,
                height: 0.35 * comprimento,
                margin: EdgeInsets.only(
                    top: altura * 0.4, left: comprimento * 0.65),
              ),
              Container(
                child: Icon(
                  Icons.star,
                  color: Colors.orangeAccent,
                ),
                decoration: new BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 0, 0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 0.1 * comprimento,
                height: 0.1 * comprimento,
                margin: EdgeInsets.only(
                    top: altura * 0.42, left: comprimento * 0.73),
              ),
              Container(
                width: 0.2 * comprimento,
                height: 0.2 * comprimento,
                margin: EdgeInsets.only(
                    top: altura * 0.5, left: comprimento * 0.722),
                child: Text(
                  "Reviews",
                  style:
                      TextStyle(color: const Color.fromARGB(255, 81, 80, 80)),
                ),
              ),
              Container(
                width: 0.2 * comprimento,
                height: 0.2 * comprimento,
                margin: EdgeInsets.only(
                    top: altura * 0.54, left: comprimento * 0.753),
                child: Text(
                  "200",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 81, 80, 80),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.6, left: comprimento * 0.045),
                child: Text(
                  "Informações Pessoais",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: comprimento * 0.05, top: altura * 0.64),
                height: altura * 0.265,
                width: comprimento * 0.9,
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                        offset: Offset(0.1, 0.3))
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(3),
                  ),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Container(
                //color: Colors.black,
                margin: EdgeInsets.only(
                    left: comprimento * 0.06, top: altura * 0.65),
                height: altura * 0.1,
                width: comprimento * 0.9,
                child: Text(
                  'Nome: ',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                      fontSize: 13.5,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                //color: Colors.black,
                margin: EdgeInsets.only(
                    left: comprimento * 0.06, top: altura * 0.70),
                height: altura * 0.1,
                width: comprimento * 0.9,
                child: Text(
                  'Email: ',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                      fontSize: 13.5,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                //color: Colors.black,
                margin: EdgeInsets.only(
                    left: comprimento * 0.06, top: altura * 0.75),
                height: altura * 0.1,
                width: comprimento * 0.9,
                child: Text(
                  'Cidade: ',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                      fontSize: 13.5,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                //color: Colors.black,
                margin: EdgeInsets.only(
                    left: comprimento * 0.06, top: altura * 0.80),
                height: altura * 0.1,
                width: comprimento * 0.9,
                child: Text(
                  'CEP: ',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                      fontSize: 13.5,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                //color: Colors.black,
                margin: EdgeInsets.only(
                    left: comprimento * 0.06, top: altura * 0.85),
                height: altura * 0.1,
                width: comprimento * 0.9,
                child: Text(
                  'Tel: ',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                      fontSize: 13.5,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                //color: Colors.black,
                margin: EdgeInsets.only(
                    left: comprimento * 0.6, top: altura * 0.65),
                height: altura * 0.1,
                width: comprimento * 0.9,
                child: Text(
                  'Maria Costa',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: 13.5,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                //color: Colors.black,
                margin: EdgeInsets.only(
                    left: comprimento * 0.6, top: altura * 0.70),
                height: altura * 0.1,
                width: comprimento * 0.9,
                child: Text(
                  'maria@gmail.com ',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: 13.5,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                //color: Colors.black,
                margin: EdgeInsets.only(
                    left: comprimento * 0.6, top: altura * 0.75),
                height: altura * 0.1,
                width: comprimento * 0.9,
                child: Text(
                  'Fortaleza-CE',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: 13.5,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                //color: Colors.black,
                margin: EdgeInsets.only(
                    left: comprimento * 0.6, top: altura * 0.80),
                height: altura * 0.1,
                width: comprimento * 0.9,
                child: Text(
                  '62327-330',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: 13.5,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                //color: Colors.black,
                margin: EdgeInsets.only(
                    left: comprimento * 0.6, top: altura * 0.85),
                height: altura * 0.1,
                width: comprimento * 0.9,
                child: Text(
                  '(85) 99323 2387',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: 13.5,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ));
  }
}
