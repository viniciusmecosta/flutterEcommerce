import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class Edit_Senha extends StatefulWidget {
  const Edit_Senha({super.key});

  @override
  State<Edit_Senha> createState() => _Edit_SenhaState();
}

class _Edit_SenhaState extends State<Edit_Senha> {
  @override
  Widget build(BuildContext context) {
    try {
      /// final Endereco end =
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
          child: Image.asset('assets/imgs/icone.png'),
          margin:
              EdgeInsets.only(top: altura * 0.10, left: comprimento * 0.400),
          height: comprimento * 0.2,
          width: comprimento * 0.2,
          decoration: BoxDecoration(),
        ),
        Container(
          // color: Colors.cyan,
          margin: EdgeInsets.only(top: altura * 0.27, left: comprimento * 0.1),
          height: altura * 0.06,
          width: comprimento * 0.8,
          alignment: Alignment.center,
          child: Text("Alteração de Senha",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
              )),
        ),
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
          margin:
              EdgeInsets.only(top: altura * 0.40, left: comprimento * 0.0725),

          ///color: Colors.blueGrey,
          height: altura * 0.085,
          width: comprimento * 0.85,
        ),
        Container(
          child: Icon(
            Icons.lock,
            color: Color(0xfff67952),
            size: altura * 0.04,
          ),
          margin:
              EdgeInsets.only(top: altura * 0.405, left: comprimento * 0.09),

          ///color: Color.fromARGB(255, 202, 224, 235),
          height: altura * 0.075,
          width: comprimento * 0.13,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0x19f67952),
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          margin: EdgeInsets.only(top: altura * 0.40, left: comprimento * 0.23),

          ///color: Color.fromARGB(255, 202, 224, 235),
          height: altura * 0.085,
          width: comprimento * 0.690,
          child: TextFormField(
            obscureText: true,
            autofocus: false,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Nova senha',
            ),
          ),
        ),
        // SENHA
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
          margin:
              EdgeInsets.only(top: altura * 0.505, left: comprimento * 0.0725),

          ///color: Colors.blueGrey,
          height: altura * 0.085,
          width: comprimento * 0.85,
        ),
        Container(
          child: Icon(
            Icons.lock,
            color: Color(0xfff67952),
            size: altura * 0.04,
          ),
          margin:
              EdgeInsets.only(top: altura * 0.509, left: comprimento * 0.09),

          ///color: Color.fromARGB(255, 202, 224, 235),
          height: altura * 0.075,
          width: comprimento * 0.13,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0x19f67952),
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          margin:
              EdgeInsets.only(top: altura * 0.503, left: comprimento * 0.23),

          ///color: Color.fromARGB(255, 202, 224, 235),
          height: altura * 0.085,
          width: comprimento * 0.690,
          child: TextFormField(
            obscureText: true,
            autofocus: false,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Confirme a senha',
            ),
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
                Navigator.of(context).pushNamed(AppRoutes.LOGIN);
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
