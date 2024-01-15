import 'package:flutter/material.dart';
import '../screens/home/components/search_form.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

enum Actions { delete }

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        title: Text("Notificações"),
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
              margin: EdgeInsets.only(top: 5),
              child: SearchForm(),
            ),
            Container(
              margin:
                  EdgeInsets.only(left: comprimento * 0.03, top: altura * 0.12),
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
                  left: comprimento * 0.03, top: altura * 0.145),
              height: altura * 0.07,
              width: comprimento * 0.25,
              child: Image.asset('assets/imgs/icone.png'),
            ),
            Container(
              //color: Colors.black,
              margin: EdgeInsets.only(
                  left: comprimento * 0.24, top: altura * 0.138),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text(
                  'Até 78% de desconto para você na semana do consumidor\n\n 3 dias atrás'),
            ),
            //2222
            Container(
              margin:
                  EdgeInsets.only(left: comprimento * 0.03, top: altura * 0.27),
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
                  left: comprimento * 0.03, top: altura * 0.295),
              height: altura * 0.07,
              width: comprimento * 0.25,
              child: Image.asset('assets/imgs/icone.png'),
            ),
            Container(
              //color: Colors.black,
              margin:
                  EdgeInsets.only(left: comprimento * 0.24, top: altura * 0.29),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text(
                  'Aproveite o dia do consumidor Frete Gratis para o Ceará\n\n 8 dias atrás'),
            ),

            ///3333
            Container(
              margin: EdgeInsets.only(
                  left: comprimento * 0.03, top: altura * 0.422),
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
                  EdgeInsets.only(left: comprimento * 0.03, top: altura * 0.45),
              height: altura * 0.07,
              width: comprimento * 0.25,
              child: Image.asset('assets/imgs/icone.png'),
            ),
            Container(
              //color: Colors.black,
              margin: EdgeInsets.only(
                  left: comprimento * 0.24, top: altura * 0.445),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text(
                  'Até 25% off em computadores e em informática\n\n 12 dias atrás'),
            ),

            ///4444
            Container(
              margin: EdgeInsets.only(
                  left: comprimento * 0.03, top: altura * 0.573),
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
                  EdgeInsets.only(left: comprimento * 0.03, top: altura * 0.6),
              height: altura * 0.07,
              width: comprimento * 0.25,
              child: Image.asset('assets/imgs/icone.png'),
            ),
            Container(
              //color: Colors.black,
              margin: EdgeInsets.only(
                  left: comprimento * 0.24, top: altura * 0.595),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text(
                  'Ainda da tempo de economizar até 60% off em fones de ouvido\n\n 15 dias atrás'),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: comprimento * 0.03, top: altura * 0.725),
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
                  left: comprimento * 0.03, top: altura * 0.750),
              height: altura * 0.07,
              width: comprimento * 0.25,
              child: Image.asset('assets/imgs/icone.png'),
            ),
            Container(
              //color: Colors.black,
              margin: EdgeInsets.only(
                  left: comprimento * 0.24, top: altura * 0.748),
              height: altura * 0.1,
              width: comprimento * 0.7,
              child: Text(
                  'Aproveite o dia do consumidor Frete Gratis para o Ceará\n\n 20 dias atrás'),
            ),
          ],
        ),
      ),
    );
  }
}
