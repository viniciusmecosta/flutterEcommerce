import 'package:flutter/material.dart';
import 'package:eletrohome/routes/app_routes.dart';

class Verify_Num extends StatefulWidget {
  const Verify_Num({super.key});

  @override
  State<Verify_Num> createState() => _Verify_NumState();
}

class _Verify_NumState extends State<Verify_Num> {
  @override
  Widget build(BuildContext context) {
    try {
      ///  final Endereco end =
      ///   ModalRoute.of(context)?.settings.arguments as Endereco;
    } catch (e) {
      print(e);
    }
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          child: Image.asset('assets/imgs/code.png'),
          margin: EdgeInsets.only(top: altura * 0.1, left: comprimento * 0.1),
          //color: Colors.amber,
          alignment: Alignment.centerLeft,
          width: comprimento * 0.8,
          height: altura * 0.5,
        ),
        Container(
          margin: EdgeInsets.only(top: altura * 0.63, left: comprimento * 0.1),
          //color: Colors.amber,
          alignment: Alignment.bottomCenter,
          width: comprimento * 0.8,
          height: altura * 0.06,
          child: Text(
            "Verificação de OTP",
            style: TextStyle(
              fontSize: 17.32,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: altura * 0.71, left: comprimento * 0.1),
          //color: Colors.blue,
          width: comprimento * 0.8,
          height: altura * 0.05,
          child: Text("Digite o código enviado para +55(85)993233323",
              style: TextStyle(
                color: Color(0xff5b5858),
                fontSize: 13.47,
              )),
        ),
        /*
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
            color: Colors.white,
          ),
          margin: EdgeInsets.only(top: altura * 0.81, left: comprimento * 0.14),

          ///color: Colors.blueGrey,
          height: altura * 0.085,
          width: comprimento * 0.15,
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          margin: EdgeInsets.only(top: altura * 0.81, left: comprimento * 0.16),
          //color: Color.fromARGB(255, 202, 224, 235),
          height: altura * 0.085,
          width: comprimento * 0.15,
          child: TextFormField(
            autofocus: false,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '',
            ),
          ),
        ),
        */
        ///num 1
        Container(
          margin: EdgeInsets.only(top: altura * 0.78, left: comprimento * 0.15),
          width: comprimento * 0.14,
          height: comprimento * 0.14,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
            color: Colors.white,
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(92, 255, 255, 255)),
          margin: EdgeInsets.only(top: altura * 0.78, left: comprimento * 0.21),
          //color: Color.fromARGB(255, 202, 224, 235),
          width: comprimento * 0.13,
          height: comprimento * 0.14,
          child: TextFormField(
            autofocus: false,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '',
            ),
          ),
        ),

        /// number 2
        Container(
          margin: EdgeInsets.only(top: altura * 0.78, left: comprimento * 0.34),
          width: comprimento * 0.14,
          height: comprimento * 0.14,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
            color: Colors.white,
          ),
        ),

        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(92, 255, 255, 255)),
          margin: EdgeInsets.only(top: altura * 0.78, left: comprimento * 0.40),
          //color: Color.fromARGB(255, 202, 224, 235),
          width: comprimento * 0.13,
          height: comprimento * 0.14,
          child: TextFormField(
            autofocus: false,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '',
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: altura * 0.78, left: comprimento * 0.53),
          width: comprimento * 0.14,
          height: comprimento * 0.14,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
            color: Colors.white,
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(92, 255, 255, 255)),
          margin: EdgeInsets.only(top: altura * 0.78, left: comprimento * 0.59),
          //color: Color.fromARGB(255, 202, 224, 235),
          width: comprimento * 0.13,
          height: comprimento * 0.14,
          child: TextFormField(
            autofocus: false,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '',
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: altura * 0.78, left: comprimento * 0.72),
          width: comprimento * 0.14,
          height: comprimento * 0.14,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
            color: Colors.white,
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(92, 255, 255, 255)),
          margin: EdgeInsets.only(top: altura * 0.78, left: comprimento * 0.78),
          //color: Color.fromARGB(255, 202, 224, 235),
          width: comprimento * 0.13,
          height: comprimento * 0.14,
          child: TextFormField(
            autofocus: false,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '',
            ),
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: altura * 0.89, left: comprimento * 0.1),
          //color: Colors.blue,
          width: comprimento * 0.8,
          height: altura * 0.05,
          child: Text("05:00",
              style: TextStyle(
                color: Color(0xff5b5858),
                fontSize: 13.47,
              )),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(top: altura * 0.93, left: comprimento * 0.1),
          //color: Colors.amber,
          width: comprimento * 0.5,
          height: altura * 0.05,
          child: Text("Não recebeu o código?",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 13.47,
              )),
        ),
        Container(
          //color: Colors.blue,
          margin:
              EdgeInsets.only(top: altura * 0.93, left: comprimento * 0.585),
          width: comprimento * 0.3,
          height: altura * 0.05,
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {},
            child: Text("Reenviar",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                )),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: altura * 1, left: comprimento * 0.2),
            height: altura * 0.09,
            width: comprimento * 0.6,
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
                Navigator.of(context).pushNamed(AppRoutes.EDIT_SENHA);
              },
              child: Text("Confirmar",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  )),
            )),
      ]),
    );
  }
}
