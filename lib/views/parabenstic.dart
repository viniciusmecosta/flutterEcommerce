import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class ParabensTic extends StatefulWidget {
  const ParabensTic({super.key});

  @override
  State<ParabensTic> createState() => _ParabensTicState();
}

class _ParabensTicState extends State<ParabensTic> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(

        //AppBar
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(150),
              ),
              color: Colors.deepOrangeAccent,
            ),
            margin:
                EdgeInsets.only(top: altura * 0.15, left: comprimento * 0.15),
            height: comprimento * 0.7,
            width: comprimento * 0.7,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(120),
              ),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            margin:
                EdgeInsets.only(top: altura * 0.1755, left: comprimento * 0.2),
            height: comprimento * 0.6,
            width: comprimento * 0.6,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(60),
              ),
              color: Color.fromRGBO(246, 121, 82, 0.2),
            ),
            margin:
                EdgeInsets.only(top: altura * 0.25, left: comprimento * 0.35),
            height: comprimento * 0.3,
            width: comprimento * 0.3,
          ),
          Container(
            child: Icon(Icons.check, color: Colors.deepOrangeAccent, size: 50),
            margin:
                EdgeInsets.only(top: altura * 0.25, left: comprimento * 0.35),
            height: comprimento * 0.3,
            width: comprimento * 0.3,
          ),
          Container(
            margin:
                EdgeInsets.only(top: altura * 0.5, left: comprimento * 0.25),
            height: comprimento * 0.5,
            width: comprimento * 0.5,
            child: Center(
              child: Text("Parabéns!!!",
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: altura * 0.49, left: comprimento * 0.15),
            height: comprimento * 0.7,
            width: comprimento * 0.7,
            child: Center(
              child: Text("Ticket enviado com sucesso!!",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ),
          Container(
              margin:
                  EdgeInsets.only(top: altura * 0.75, left: comprimento * 0.15),
              height: altura * 0.09,
              width: comprimento * 0.7,
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
                  Navigator.of(context).pushNamed(AppRoutes.PEDIDOS);
                },
                child: Text("Meus Pedidos",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    )),
              )),
          Container(
              margin: EdgeInsets.only(
                  top: altura * 0.855, left: comprimento * 0.15),
              height: altura * 0.09,
              width: comprimento * 0.7,
              child: ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xffFFE9E2)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ))),
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.HOME);
                },
                child: Text("Home",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.w400,
                    )),
              )),
        ],
      ),
    ));
  }
}
