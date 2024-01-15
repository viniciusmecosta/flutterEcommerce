import 'package:eletrohome/widgets/itemRecent.dart';
import "package:flutter/material.dart";

class ListItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, left: 24, right: 12, bottom: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Transações recentes",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        ItemRecent(
          valor: 3989.99,
          nome: "Notebook compac",
          date: "14 Maio 2023",
          img:
              'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c03115689.png',
        ),
        ItemRecent(
          valor: 299.99,
          nome: "Fone JBL",
          date: "12 Maio 2023",
          img:
              "https://scorpiontechshop.com.br/wp-content/uploads/2022/08/fone-jbl-png-2.png",
        ),
        ItemRecent(
          valor: 5999.99,
          nome: "Smart Tv LED LG",
          date: "10 Maio 2023",
          img:
              "https://novomundo.vteximg.com.br/arquivos/ids/12976853-500-500/smart-tv-led-32-aoc-usb-wi-fi-hdmi-32s519578g-tv-led-32-ssmart-tv-led-32-aoc-usb-wi-fi-hdmi-32s519578g-aoc-smart-hd-roku-tv-66700-0.jpg?v=637557475258330000",
        ),
      ],
    );
  }
}
