import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

enum Actions { delete }

class _CheckoutState extends State<Checkout> {
  bool? check1 = false;
  bool? check2 = false;
  bool? check3 = false;
  bool? check4 = false;
  bool? check5 = false;
  bool? check6 = false;
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
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
              margin: EdgeInsets.only(
                  top: altura * 0.035, left: comprimento * 0.045),
              child: Text(
                "Informações de envio",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                color: Color.fromRGBO(246, 121, 82, 0.15),
                borderRadius: BorderRadius.circular(5),
              ),
              margin:
                  EdgeInsets.only(top: altura * 0.03, left: comprimento * 0.85),
              //color: Colors.blue,
              width: comprimento * 0.08,
              height: comprimento * 0.08,
            ),
            Container(
              margin: EdgeInsets.only(
                  top: altura * 0.019, left: comprimento * 0.81),
              child: TextButton(
                child: Text(
                  "+",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.ENDERECO_LIST);
                },
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(left: comprimento * 0.03, top: altura * 0.08),
              height: altura * 0.1,
              width: comprimento * 0.94,
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
                  left: comprimento * 0.24, top: altura * 0.087),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text(
                'Casa',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              //color: Colors.black,
              margin: EdgeInsets.only(
                  left: comprimento * 0.24, top: altura * 0.125),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text(
                '(85) 992278823 \nFortaleza-CE',
                style: TextStyle(
                    color: const Color.fromARGB(255, 122, 121, 121),
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                //color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(30),
              ),
              margin:
                  EdgeInsets.only(top: altura * 0.1, left: comprimento * 0.078),
              width: comprimento * 0.105,
              height: comprimento * 0.105,
            ),
            Container(
              margin: EdgeInsets.only(
                  top: altura * 0.091, left: comprimento * 0.19),
              child: Transform.scale(
                scale: 1.5,
                child: CheckboxListTile(
                  //checkbox positioned at left
                  value: check2,

                  activeColor: Colors.deepOrangeAccent,
                  splashRadius: 20,
                  shape: CircleBorder(),

                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check2 = value;
                      if (check1 = true) {
                        check1 = false;
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(left: comprimento * 0.03, top: altura * 0.19),
              height: altura * 0.1,
              width: comprimento * 0.94,
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
              margin:
                  EdgeInsets.only(left: comprimento * 0.24, top: altura * 0.20),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text(
                'Trabalho',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              //color: Colors.black,
              margin: EdgeInsets.only(
                  left: comprimento * 0.24, top: altura * 0.235),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text(
                '(85) 992278823 \nFortaleza-CE',
                style: TextStyle(
                    color: const Color.fromARGB(255, 122, 121, 121),
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                //color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.only(
                  top: altura * 0.21, left: comprimento * 0.078),
              width: comprimento * 0.105,
              height: comprimento * 0.105,
            ),
            Container(
              margin:
                  EdgeInsets.only(top: altura * 0.20, left: comprimento * 0.19),
              child: Transform.scale(
                scale: 1.5,
                child: CheckboxListTile(
                  //checkbox positioned at left
                  value: check1,

                  activeColor: Colors.deepOrangeAccent,
                  splashRadius: 20,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check1 = value;
                      if (check2 = true) {
                        check2 = false;
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: altura * 0.32, left: comprimento * 0.045),
              child: Text(
                "Informações de compra",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(left: comprimento * 0.03, top: altura * 0.37),
              height: altura * 0.14,
              width: comprimento * 0.94,
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
              margin:
                  EdgeInsets.only(left: comprimento * 0.06, top: altura * 0.4),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text(
                'Entrega :\n \nSubtotal :',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              //color: Colors.black,
              margin:
                  EdgeInsets.only(left: comprimento * 0.7, top: altura * 0.4),
              height: altura * 0.1,
              width: comprimento * 0.3,
              child: Text(
                'R\$ 200,00 \n\nR\$ 5890,00',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: comprimento * 0.03, top: altura * 0.518),
              height: altura * 0.08,
              width: comprimento * 0.94,
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
                  left: comprimento * 0.06, top: altura * 0.543),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text(
                'Total :',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              //color: Colors.black,
              margin:
                  EdgeInsets.only(left: comprimento * 0.7, top: altura * 0.543),
              height: altura * 0.1,
              width: comprimento * 0.3,
              child: Text(
                'R\$ 6090,00',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: altura * 0.63, left: comprimento * 0.045),
              child: Text(
                "Métodos de pagamento",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(left: comprimento * 0.05, top: altura * 0.70),
              height: altura * 0.1,
              width: comprimento * 0.2025,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.0,
                      offset: Offset(0.1, 0.3))
                ],
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/applepay.png',
              ),
              margin: EdgeInsets.only(
                  left: comprimento * 0.0655, top: altura * 0.723),
              height: altura * 0.055,
              width: comprimento * 0.17,
            ),
            Container(
              margin: EdgeInsets.only(
                  left: comprimento * 0.2825, top: altura * 0.70),
              height: altura * 0.1,
              width: comprimento * 0.2025,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.0,
                      offset: Offset(0.1, 0.3))
                ],
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/visa.png',
                fit: BoxFit.contain,
              ),
              margin: EdgeInsets.only(
                  left: comprimento * 0.297, top: altura * 0.72),
              height: altura * 0.055,
              width: comprimento * 0.17,
            ),
            Container(
              margin: EdgeInsets.only(
                  left: comprimento * 0.515, top: altura * 0.70),
              height: altura * 0.1,
              width: comprimento * 0.2025,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.0,
                      offset: Offset(0.1, 0.3))
                ],
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Container(
              child: Image.asset('assets/images/master.png'),
              margin:
                  EdgeInsets.only(left: comprimento * 0.53, top: altura * 0.72),
              height: altura * 0.055,
              width: comprimento * 0.17,
            ),
            Container(
              child: Image.asset(
                'assets/images/paypal.png',
                fit: BoxFit.scaleDown,
              ),
              margin: EdgeInsets.only(
                  left: comprimento * 0.7475, top: altura * 0.70),
              height: altura * 0.1,
              width: comprimento * 0.2025,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.0,
                      offset: Offset(0.1, 0.3))
                ],
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: altura * 0.68, left: comprimento * 0.12),
              child: Transform.scale(
                scale: 1.0,
                child: CheckboxListTile(
                  //checkbox positioned at left
                  value: check3,

                  activeColor: Colors.deepOrangeAccent,
                  splashRadius: 20,
                  shape: CircleBorder(),

                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check3 = value;
                      check4 = false;
                      check5 = false;
                      check6 = false;
                    });
                  },
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: altura * 0.68, left: comprimento * 0.35),
              child: Transform.scale(
                scale: 1.0,
                child: CheckboxListTile(
                  //checkbox positioned at left
                  value: check4,

                  activeColor: Colors.deepOrangeAccent,
                  splashRadius: 20,
                  shape: CircleBorder(),

                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check4 = value;
                      check3 = false;
                      check5 = false;
                      check6 = false;
                    });
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: altura * 0.68, left: comprimento * 0.585),
              child: Transform.scale(
                scale: 1.0,
                child: CheckboxListTile(
                  //checkbox positioned at left
                  value: check5,

                  activeColor: Colors.deepOrangeAccent,
                  splashRadius: 20,
                  shape: CircleBorder(),

                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check5 = value;
                      check4 = false;
                      check3 = false;
                      check6 = false;
                    });
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: altura * 0.68, left: comprimento * 0.814),
              child: Transform.scale(
                scale: 1.0,
                child: CheckboxListTile(
                  //checkbox positioned at left
                  value: check6,

                  activeColor: Colors.deepOrangeAccent,
                  splashRadius: 20,
                  shape: CircleBorder(),

                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check6 = value;
                      check4 = false;
                      check5 = false;
                      check3 = false;
                    });
                  },
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    top: altura * 0.87, left: comprimento * 0.1),
                height: altura * 0.09,
                width: comprimento * 0.8,
                child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFFF67952)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFF67952)),
                        borderRadius: BorderRadius.circular(25.0),
                      ))),
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.PARABENSCP);
                  },
                  child: Text("Pagar",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
