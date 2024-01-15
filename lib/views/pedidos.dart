import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class Pedidos extends StatefulWidget {
  const Pedidos({super.key});

  @override
  State<Pedidos> createState() => _PedidosState();
}

int cont = 1;

class _PedidosState extends State<Pedidos> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        elevation: 3.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          tooltip: 'Voltar',
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Meus Pedidos"),
        centerTitle: true,

        titleTextStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          color: Colors.black,
        ), //TextStyle,
        //<Widget>[]
        backgroundColor: Colors.white,

        //IconButton
      ),

      //AppBar
      body: Stack(children: [
        Container(
          margin: EdgeInsets.only(top: altura * 0.02),
          width: comprimento,
          height: altura * 0.13,
          child: LayoutBuilder(builder: (_, constraints) {
            return Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    height: altura * 0.13,
                    width: comprimento * 0.94,
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 7.0,
                            offset: Offset(0.1, 0.3))
                      ],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(18),
                      ),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 227, 225, 225),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        margin: EdgeInsets.only(
                            top: altura * 0.01550, left: comprimento * 0.07),
                        width: comprimento * 0.22,
                        height: altura * 0.1,
                        child: IconButton(
                          icon: Image.network(
                              'https://www.compaq.com.br/arquivos/info-430-notebook2.png?v1'),
                          onPressed: () {},
                        )),
                    Container(
                      margin: EdgeInsets.only(
                          top: altura * 0.018, left: comprimento * 0.33),
                      width: comprimento * 0.45,
                      height: altura * 0.04,
                      child: Text('Notebook Compac',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: altura * 0.086, left: comprimento * 0.33),
                      width: comprimento * 0.3,
                      height: altura * 0.04,
                      child: Text('RS2360,90',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.only(
                          top: altura * 0.08, left: comprimento * 0.758),
                      width: comprimento * 0.2,
                      height: altura * 0.03,
                      alignment: Alignment.center,
                      child: Text(
                        "Hoje",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ],
            );
          }),
        ),
        Container(
          margin: EdgeInsets.only(top: altura * 0.165),
          width: comprimento,
          height: altura * 0.13,
          child: LayoutBuilder(builder: (_, constraints) {
            return Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    height: altura * 0.13,
                    width: comprimento * 0.94,
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 7.0,
                            offset: Offset(0.1, 0.3))
                      ],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(18),
                      ),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 227, 225, 225),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        margin: EdgeInsets.only(
                            top: altura * 0.01550, left: comprimento * 0.07),
                        width: comprimento * 0.22,
                        height: altura * 0.1,
                        child: IconButton(
                          icon: Image.network(
                              'https://scorpiontechshop.com.br/wp-content/uploads/2022/08/fone-jbl-png-2.png'),
                          onPressed: () {
                            Navigator.of(context).pushNamed(AppRoutes.TICKET);
                          },
                        )),
                    Container(
                      margin: EdgeInsets.only(
                          top: altura * 0.018, left: comprimento * 0.33),
                      width: comprimento * 0.45,
                      height: altura * 0.04,
                      child: Text('Fone Jbl',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: altura * 0.086, left: comprimento * 0.33),
                      width: comprimento * 0.3,
                      height: altura * 0.04,
                      child: Text('RS275,00',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.only(
                          top: altura * 0.08, left: comprimento * 0.758),
                      width: comprimento * 0.2,
                      height: altura * 0.03,
                      alignment: Alignment.center,
                      child: Text(
                        "22/05/2023",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        margin: EdgeInsets.only(
                            top: altura * 0.01, left: comprimento * 0.8),
                        width: comprimento * 0.2,
                        height: altura * 0.03,
                        alignment: Alignment.center,
                        child: IconButton(
                          icon: Icon(Icons.report),
                          onPressed: () {
                            Navigator.of(context).pushNamed(AppRoutes.TICKET);
                          },
                        )),
                  ],
                ),
              ],
            );
          }),
        ),
        Container(
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            margin:
                EdgeInsets.only(top: altura * 0.025, left: comprimento * 0.8),
            width: comprimento * 0.2,
            height: altura * 0.03,
            alignment: Alignment.center,
            child: IconButton(
              icon: Icon(Icons.report),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.TICKET);
              },
            )),
        Container(
          margin: EdgeInsets.only(top: altura * 0.308),
          width: comprimento,
          height: altura * 0.13,
          child: LayoutBuilder(builder: (_, constraints) {
            return Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    height: altura * 0.13,
                    width: comprimento * 0.94,
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 7.0,
                            offset: Offset(0.1, 0.3))
                      ],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(18),
                      ),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 227, 225, 225),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        margin: EdgeInsets.only(
                            top: altura * 0.01550, left: comprimento * 0.07),
                        width: comprimento * 0.22,
                        height: altura * 0.1,
                        child: IconButton(
                          icon: Image.network(
                              'https://novomundo.vteximg.com.br/arquivos/ids/12976853-500-500/smart-tv-led-32-aoc-usb-wi-fi-hdmi-32s519578g-tv-led-32-ssmart-tv-led-32-aoc-usb-wi-fi-hdmi-32s519578g-aoc-smart-hd-roku-tv-66700-0.jpg?v=637557475258330000'),
                          onPressed: () {},
                        )),
                    Container(
                      margin: EdgeInsets.only(
                          top: altura * 0.018, left: comprimento * 0.33),
                      width: comprimento * 0.45,
                      height: altura * 0.04,
                      child: Text('Smart Tv LED LG',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: altura * 0.086, left: comprimento * 0.33),
                      width: comprimento * 0.3,
                      height: altura * 0.04,
                      child: Text('RS5990,90',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.only(
                          top: altura * 0.08, left: comprimento * 0.758),
                      width: comprimento * 0.2,
                      height: altura * 0.03,
                      alignment: Alignment.center,
                      child: Text(
                        "20/05/2023",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        margin: EdgeInsets.only(
                            top: altura * 0.01, left: comprimento * 0.8),
                        width: comprimento * 0.2,
                        height: altura * 0.03,
                        alignment: Alignment.center,
                        child: IconButton(
                          icon: Icon(Icons.report),
                          onPressed: () {
                            Navigator.of(context).pushNamed(AppRoutes.TICKET);
                          },
                        )),
                  ],
                ),
              ],
            );
          }),
        ),
      ]),
    );
  }

  void _onDismissed(int index, Actions action) {
    setState(() {});
  }
}
