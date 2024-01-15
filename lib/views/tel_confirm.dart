import 'package:flutter/material.dart';
import 'package:eletrohome/routes/app_routes.dart';

class Tel_Confirm extends StatefulWidget {
  const Tel_Confirm({super.key});

  @override
  State<Tel_Confirm> createState() => _Tel_ConfirmState();
}

class _Tel_ConfirmState extends State<Tel_Confirm> {
  @override
  Widget build(BuildContext context) {
    try {
      /// final Endereco end =
      /// ModalRoute.of(context)?.settings.arguments as Endereco;
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
          child: Image.asset('assets/imgs/num.png'),
          margin: EdgeInsets.only(top: altura * 0.1, left: comprimento * 0.1),
          //color: Colors.amber,
          alignment: Alignment.centerLeft,
          width: comprimento * 0.8,
          height: altura * 0.5,
        ),
        Container(
          margin: EdgeInsets.only(top: altura * 0.61, left: comprimento * 0.1),
          //color: Colors.amber,
          alignment: Alignment.centerLeft,
          width: comprimento * 0.4,
          height: altura * 0.10,
          child: Text(
            "Esqueceu \na Senha?",
            style: TextStyle(
              fontSize: 23.09,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: altura * 0.715, left: comprimento * 0.1),
          //color: Colors.blue,
          width: comprimento * 0.8,
          height: altura * 0.15,
          child: Text(
              "Não se preocupe! Acontece. \nDigite o número cadastrado para enviarmos o código de recuperação.",
              style: TextStyle(
                color: Color(0xff5b5858),
                fontSize: 13.47,
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
          margin: EdgeInsets.only(top: altura * 0.81, left: comprimento * 0.1),

          ///color: Colors.blueGrey,
          height: altura * 0.085,
          width: comprimento * 0.80,
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          margin: EdgeInsets.only(top: altura * 0.81, left: comprimento * 0.12),

          ///color: Color.fromARGB(255, 202, 224, 235),
          height: altura * 0.085,
          width: comprimento * 0.8,
          child: TextFormField(
            autofocus: false,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Digite o número de telefone',
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
                Navigator.of(context).pushNamed(AppRoutes.VERIFY_NUM);
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
