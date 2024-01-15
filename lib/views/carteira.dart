import 'package:eletrohome/widgets/listCreditCard.dart';
import 'package:eletrohome/widgets/listItemCard.dart';
import "package:flutter/material.dart";

import '../routes/app_routes.dart';

class Carteira extends StatefulWidget {
  Carteira({Key? key}) : super(key: key);

  @override
  CarteiraState createState() => CarteiraState();
}

class CarteiraState extends State<Carteira> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add_card_rounded,
              color: Colors.black,
            ),
            tooltip: 'Add cartao',
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.CREDIT);
            },
          ), //IconButton
        ], //IconButton
        title: Text("Carteira"),
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
      body: Container(
        color: Colors.white70,
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            ListCreditCard(),
            ListItemCard(),
          ],
        ),
      ),
    );
  }
}
