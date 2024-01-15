import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class Carrinho extends StatefulWidget {
  const Carrinho({super.key});

  @override
  State<Carrinho> createState() => _CarrinhoState();
}

enum Actions { delete }

int cont = 1;
int cont0 = 1;
int cont1 = 1;

class _CarrinhoState extends State<Carrinho> {
  void _incrementCounter() {
    cont++;
    setState(() {});
  }

  void _decrementCounter() {
    if (cont > 0) {
      cont--;
      setState(() {});
    }
  }

  void _incrementCounter0() {
    cont0++;
    setState(() {});
  }

  void _decrementCounter0(int x) {
    if (cont0 > 0) {
      cont0--;
      setState(() {});
    }
  }

  void _incrementCounter1() {
    cont1++;
    setState(() {});
  }

  void _decrementCounter1() {
    if (cont1 > 0) {
      cont1--;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrinho"),
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
                              'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c03115689.png'),
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
                          top: altura * 0.050, left: comprimento * 0.33),
                      width: comprimento * 0.45,
                      height: altura * 0.04,
                      child: Text('Intel core I3 4GB RAM SSD 128GB ',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey)),
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
                      width: comprimento * 0.205,
                      height: altura * 0.041,
                      decoration: new BoxDecoration(
                        color: Color.fromRGBO(246, 121, 82, 0.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.only(
                          top: altura * 0.043, left: comprimento * 0.75),
                    ),
                    Container(
                      width: comprimento * 0.06,
                      height: altura * 0.030,
                      decoration: new BoxDecoration(
                        color: Color.fromRGBO(246, 121, 82, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      margin: EdgeInsets.only(
                          top: altura * 0.049, left: comprimento * 0.759),
                    ),
                    Container(
                      width: comprimento * 0.075,
                      height: altura * 0.039,
                      decoration: new BoxDecoration(
                        color: Color.fromRGBO(246, 121, 82, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      margin: EdgeInsets.only(
                          top: altura * 0.044, left: comprimento * 0.879),
                    ),
                    Container(
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        margin: EdgeInsets.only(
                            top: altura * 0.049, left: comprimento * 0.758),
                        width: comprimento * 0.05,
                        height: altura * 0.03,
                        alignment: Alignment.center,
                        child: IconButton(
                          padding: EdgeInsets.all(1),
                          iconSize: altura * 0.028,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            print(cont);
                            _decrementCounter();
                          },
                        )),
                    Container(
                      margin: EdgeInsets.only(
                          top: altura * 0.044, left: comprimento * 0.827),
                      width: comprimento * 0.05,
                      height: altura * 0.04,
                      alignment: Alignment.center,
                      child: Text('${cont}',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            top: altura * 0.049, left: comprimento * 0.888),
                        width: comprimento * 0.05,
                        height: altura * 0.03,
                        child: IconButton(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          padding: EdgeInsets.all(0),
                          iconSize: altura * 0.028,
                          icon: Icon(Icons.add),
                          onPressed: () {
                            _incrementCounter();
                            print(cont);
                          },
                        )),
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
                          onPressed: () {},
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
                          top: altura * 0.050, left: comprimento * 0.33),
                      width: comprimento * 0.45,
                      height: altura * 0.04,
                      child: Text('Bluetooth Dolby atmos 5.1',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey)),
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
                      width: comprimento * 0.205,
                      height: altura * 0.041,
                      decoration: new BoxDecoration(
                        color: Color.fromRGBO(246, 121, 82, 0.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.only(
                          top: altura * 0.043, left: comprimento * 0.75),
                    ),
                    Container(
                      width: comprimento * 0.06,
                      height: altura * 0.030,
                      decoration: new BoxDecoration(
                        color: Color.fromRGBO(246, 121, 82, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      margin: EdgeInsets.only(
                          top: altura * 0.049, left: comprimento * 0.759),
                    ),
                    Container(
                      width: comprimento * 0.075,
                      height: altura * 0.039,
                      decoration: new BoxDecoration(
                        color: Color.fromRGBO(246, 121, 82, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      margin: EdgeInsets.only(
                          top: altura * 0.044, left: comprimento * 0.879),
                    ),
                    Container(
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        margin: EdgeInsets.only(
                            top: altura * 0.049, left: comprimento * 0.758),
                        width: comprimento * 0.05,
                        height: altura * 0.03,
                        alignment: Alignment.center,
                        child: IconButton(
                          padding: EdgeInsets.all(1),
                          iconSize: altura * 0.028,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            print(cont0);
                            _decrementCounter0(cont0);
                          },
                        )),
                    Container(
                      margin: EdgeInsets.only(
                          top: altura * 0.044, left: comprimento * 0.827),
                      width: comprimento * 0.05,
                      height: altura * 0.04,
                      alignment: Alignment.center,
                      child: Text('${cont0}',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            top: altura * 0.049, left: comprimento * 0.888),
                        width: comprimento * 0.05,
                        height: altura * 0.03,
                        child: IconButton(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          padding: EdgeInsets.all(0),
                          iconSize: altura * 0.028,
                          icon: Icon(Icons.add),
                          onPressed: () {
                            _incrementCounter0();
                          },
                        )),
                  ],
                ),
              ],
            );
          }),
        ),
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
                          top: altura * 0.050, left: comprimento * 0.33),
                      width: comprimento * 0.45,
                      height: altura * 0.04,
                      child: Text('55” Android Tv',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey)),
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
                      width: comprimento * 0.205,
                      height: altura * 0.041,
                      decoration: new BoxDecoration(
                        color: Color.fromRGBO(246, 121, 82, 0.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.only(
                          top: altura * 0.043, left: comprimento * 0.75),
                    ),
                    Container(
                      width: comprimento * 0.06,
                      height: altura * 0.030,
                      decoration: new BoxDecoration(
                        color: Color.fromRGBO(246, 121, 82, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      margin: EdgeInsets.only(
                          top: altura * 0.049, left: comprimento * 0.759),
                    ),
                    Container(
                      width: comprimento * 0.075,
                      height: altura * 0.039,
                      decoration: new BoxDecoration(
                        color: Color.fromRGBO(246, 121, 82, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      margin: EdgeInsets.only(
                          top: altura * 0.044, left: comprimento * 0.879),
                    ),
                    Container(
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        margin: EdgeInsets.only(
                            top: altura * 0.049, left: comprimento * 0.758),
                        width: comprimento * 0.05,
                        height: altura * 0.03,
                        alignment: Alignment.center,
                        child: IconButton(
                          padding: EdgeInsets.all(1),
                          iconSize: altura * 0.028,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            print(cont1);
                            _decrementCounter1();
                          },
                        )),
                    Container(
                      margin: EdgeInsets.only(
                          top: altura * 0.044, left: comprimento * 0.827),
                      width: comprimento * 0.05,
                      height: altura * 0.04,
                      alignment: Alignment.center,
                      child: Text('${cont1}',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            top: altura * 0.049, left: comprimento * 0.888),
                        width: comprimento * 0.05,
                        height: altura * 0.03,
                        child: IconButton(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          padding: EdgeInsets.all(0),
                          iconSize: altura * 0.028,
                          icon: Icon(Icons.add),
                          onPressed: () {
                            _incrementCounter1();
                            print(cont1);
                          },
                        )),
                  ],
                ),
              ],
            );
          }),
        ),
        Container(
            margin:
                EdgeInsets.only(top: altura * 0.78, left: comprimento * 0.13),
            child: Column(children: [
              Container(
                width: comprimento * 0.7,
                height: altura * 0.1,
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(15)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xffF67952)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(29.0),
                        ))),
                    child: Text('Checkout',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.CHECKOUT);
                    }),
              ),
            ])),
      ]),
    );
  }

  void _onDismissed(int index, Actions action) {
    setState(() {});
  }
}
