import 'package:flutter/material.dart';

class Cupons extends StatefulWidget {
  const Cupons({super.key});

  @override
  State<Cupons> createState() => _CuponsState();
}

enum Actions { delete }

class _CuponsState extends State<Cupons> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupons"),
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
              margin:
                  EdgeInsets.only(left: comprimento * 0.03, top: altura * 0.02),
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
            Container(
              margin:
                  EdgeInsets.only(left: comprimento * 0.02, top: altura * 0.05),
              height: altura * 0.07,
              width: comprimento * 0.25,
              child: Image.asset('assets/images/15.png'),
            ),
            Container(
              //color: Colors.black,
              margin:
                  EdgeInsets.only(left: comprimento * 0.24, top: altura * 0.05),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text('15% OFF',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              //color: Colors.black,
              margin:
                  EdgeInsets.only(left: comprimento * 0.24, top: altura * 0.09),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text('A partir da primeira compra no app',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey)),
            ),
            //2222
            Container(
              margin:
                  EdgeInsets.only(left: comprimento * 0.03, top: altura * 0.17),
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
            Container(
              margin:
                  EdgeInsets.only(left: comprimento * 0.02, top: altura * 0.20),
              height: altura * 0.07,
              width: comprimento * 0.25,
              child: Image.asset('assets/images/50.png'),
            ),

            Container(
              //color: Colors.black,
              margin:
                  EdgeInsets.only(left: comprimento * 0.24, top: altura * 0.2),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text('50% OFF',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              //color: Colors.black,
              margin:
                  EdgeInsets.only(left: comprimento * 0.24, top: altura * 0.24),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text('A partir da terceira compra no app',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey)),
            ),

            ///3333
            Container(
              margin:
                  EdgeInsets.only(left: comprimento * 0.03, top: altura * 0.32),
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
            Container(
              margin: EdgeInsets.only(
                  left: comprimento * 0.03, top: altura * 0.353),
              height: altura * 0.07,
              width: comprimento * 0.25,
              child: Image.asset('assets/images/frete.png'),
            ),
            Container(
              //color: Colors.black,
              margin: EdgeInsets.only(
                  left: comprimento * 0.24, top: altura * 0.353),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text('FRETE GRATIS',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              //color: Colors.black,
              margin: EdgeInsets.only(
                  left: comprimento * 0.24, top: altura * 0.393),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text('Frete gratis em compras + R\$ 200',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}
