import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Configs extends StatefulWidget {
  const Configs({super.key});

  @override
  State<Configs> createState() => _ConfigsState();
}

bool _switchValue = true;

enum Actions { delete }

class _ConfigsState extends State<Configs> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(
          title: Text("Configurações"),
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
                margin: EdgeInsets.only(
                    top: altura * 0.08, left: comprimento * 0.08),
                child: Icon(Icons.person_outline,
                    color: Colors.deepOrangeAccent, size: 30),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 110, 64, 0.1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                width: altura * 0.05,
                height: altura * 0.05,
                margin: EdgeInsets.only(
                    top: altura * 0.0765, left: comprimento * 0.075),
              ),
              Container(
                width: altura * 0.2,
                height: altura * 0.05,
                margin: EdgeInsets.only(
                    top: altura * 0.09, left: comprimento * 0.25),
                child: Text(
                  "Conta",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.073, left: comprimento * 0.85),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_outlined, size: 25),
                  color: Colors.grey,
                ),
              ),
              ////2
              ///2
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.185, left: comprimento * 0.089),
                child: Icon(Icons.email_outlined,
                    color: Colors.deepOrangeAccent, size: 25),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 110, 64, 0.1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                width: altura * 0.05,
                height: altura * 0.05,
                margin: EdgeInsets.only(
                    top: altura * 0.177, left: comprimento * 0.075),
              ),
              Container(
                width: altura * 0.2,
                height: altura * 0.05,
                margin: EdgeInsets.only(
                    top: altura * 0.19, left: comprimento * 0.25),
                child: Text(
                  "Email Suporte",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.17, left: comprimento * 0.85),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_outlined, size: 25),
                  color: Colors.grey,
                ),
              ),

              ///3333/
              ///33
              ///
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.28, left: comprimento * 0.08),
                child: Icon(Icons.question_mark_outlined,
                    color: Colors.deepOrangeAccent, size: 30),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 110, 64, 0.1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                width: altura * 0.05,
                height: altura * 0.05,
                margin: EdgeInsets.only(
                    top: altura * 0.2765, left: comprimento * 0.075),
              ),
              Container(
                width: altura * 0.2,
                height: altura * 0.05,
                margin: EdgeInsets.only(
                    top: altura * 0.29, left: comprimento * 0.25),
                child: Text(
                  "Dúvidas frequentes",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.2683, left: comprimento * 0.85),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_outlined, size: 25),
                  color: Colors.grey,
                ),
              ),
              ////4444
              ///444
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.3900, left: comprimento * 0.08),
                child: Icon(Icons.https_outlined,
                    color: Colors.deepOrangeAccent, size: 30),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 110, 64, 0.1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                width: altura * 0.05,
                height: altura * 0.05,
                margin: EdgeInsets.only(
                    top: altura * 0.3860, left: comprimento * 0.075),
              ),
              Container(
                width: altura * 0.2,
                height: altura * 0.05,
                margin: EdgeInsets.only(
                    top: altura * 0.398, left: comprimento * 0.25),
                child: Text(
                  "Segurança",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.375, left: comprimento * 0.85),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_outlined, size: 25),
                  color: Colors.grey,
                ),
              ),

              ///555
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.50300, left: comprimento * 0.08),
                child: Icon(Icons.notifications_outlined,
                    color: Colors.deepOrangeAccent, size: 30),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 110, 64, 0.1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                width: altura * 0.05,
                height: altura * 0.05,
                margin: EdgeInsets.only(
                    top: altura * 0.50, left: comprimento * 0.075),
              ),
              Container(
                width: altura * 0.2,
                height: altura * 0.05,
                margin: EdgeInsets.only(
                    top: altura * 0.510, left: comprimento * 0.25),
                child: Text(
                  "Notificações",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.50, left: comprimento * 0.8),
                child: CupertinoSwitch(
                  activeColor: Colors.deepOrangeAccent,
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
