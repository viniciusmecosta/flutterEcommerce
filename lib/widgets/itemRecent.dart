// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import 'package:intl/intl.dart';

class ItemRecent extends StatelessWidget {
  double valor = 1;
  String nome = "";
  String date = "";
  String img;

  ItemRecent({
    Key? key,
    required this.valor,
    required this.nome,
    required this.date,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Padding(
      padding: EdgeInsets.only(top: 8, left: 16, right: 16),
      child: Container(
        height: altura * 0.125,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.14),
              spreadRadius: 15,
              blurRadius: 9,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: comprimento * 0.15,
                    child: Image.network(
                      '${img.toString()}',
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        nome,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        date,
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(children: [
                Text(
                  " R\$ ${(new NumberFormat("#,##0.00", "en_US")).format(valor)}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.redAccent),
                ),
                SizedBox(width: 8)
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
