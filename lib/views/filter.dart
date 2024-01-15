import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

enum Actions { delete }

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(
          title: Text("Filtros"),
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
                    top: altura * 0.01, left: comprimento * 0.8),
                //color: Colors.amber,
                alignment: Alignment.topLeft,
                width: comprimento * 0.2,
                height: altura * 0.1,
                child: TextButton(
                  onPressed: () {
                    null;
                  },
                  child: Text("Limpar",
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 33, 14, 14),
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.062, left: comprimento * 0.04),
                //color: Colors.amber,
                alignment: Alignment.topLeft,
                width: comprimento * 0.4,
                height: altura * 0.1,

                child: Text("Categoria",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: const Color.fromARGB(255, 33, 14, 14),
                      fontWeight: FontWeight.w500,
                    )),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: altura * 0.14, left: comprimento * 0.05),
                  height: altura * 0.065,
                  width: comprimento * 0.29,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFF67952)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFF67952)),
                          borderRadius: BorderRadius.circular(4),
                        ))),
                    onPressed: () {
                      null;
                    },
                    child: Text("Recentes",
                        style: TextStyle(
                          fontSize: 12.72,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )),
                  )),
              Container(
                  margin: EdgeInsets.only(
                      top: altura * 0.14, left: comprimento * 0.35),
                  height: altura * 0.065,
                  width: comprimento * 0.29,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 255, 255)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ))),
                    onPressed: () {
                      null;
                    },
                    child: Text("Top Tranding",
                        style: TextStyle(
                          fontSize: 12.72,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        )),
                  )),
              Container(
                  margin: EdgeInsets.only(
                      top: altura * 0.14, left: comprimento * 0.65),
                  height: altura * 0.065,
                  width: comprimento * 0.29,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 255, 255)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ))),
                    onPressed: () {
                      null;
                    },
                    child: Text("Top Tranding",
                        style: TextStyle(
                          fontSize: 12.72,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        )),
                  )),
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.32, left: comprimento * 0.04),
                //color: Colors.amber,
                alignment: Alignment.topLeft,
                width: comprimento * 0.4,
                height: altura * 0.1,

                child: Text("Preço",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: const Color.fromARGB(255, 33, 14, 14),
                      fontWeight: FontWeight.w500,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.309, left: comprimento * 0.7),
                //color: Colors.amber,
                alignment: Alignment.topLeft,
                width: comprimento * 0.3,
                height: altura * 0.1,
                child: TextButton(
                  onPressed: () {
                    null;
                  },
                  child: Text("R\$50 - R\$200",
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 33, 14, 14),
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 3,
                color: const Color.fromRGBO(158, 158, 158, 0.5),
                width: comprimento * 0.9,
                margin: EdgeInsets.only(
                    left: comprimento * 0.05, top: altura * 0.5),
              ),
              Container(
                alignment: Alignment.center,
                height: 3,
                color: Colors.deepOrangeAccent,
                width: comprimento * 0.5,
                margin:
                    EdgeInsets.only(left: comprimento * 0.2, top: altura * 0.5),
              ),
              Container(
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
                  color: Colors.deepOrangeAccent,
                ),
                alignment: Alignment.center,
                height: 3,
                width: comprimento * 0.5,
                margin:
                    EdgeInsets.only(left: comprimento * 0.2, top: altura * 0.5),
              ),
              Container(
                height: 28,
                width: comprimento * 0.070,
                margin: EdgeInsets.only(
                    left: comprimento * 0.178, top: altura * 0.482),
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 7.0,
                        offset: Offset(0.1, 0.3))
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.deepOrangeAccent,
                ),
              ),
              Container(
                height: 28,
                width: comprimento * 0.070,
                margin: EdgeInsets.only(
                    left: comprimento * 0.7, top: altura * 0.482),
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 7.0,
                        offset: Offset(0.1, 0.3))
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.deepOrangeAccent,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: altura * 0.42, left: comprimento * 0.14),
                  height: altura * 0.045,
                  width: comprimento * 0.16,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 255, 255)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ))),
                    onPressed: () {
                      null;
                    },
                    child: Text("R\$50",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        )),
                  )),
              Container(
                  margin: EdgeInsets.only(
                      top: altura * 0.42, left: comprimento * 0.66),
                  height: altura * 0.045,
                  width: comprimento * 0.16,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 255, 255)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ))),
                    onPressed: () {
                      null;
                    },
                    child: Text("R\$200",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        )),
                  )),
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.59, left: comprimento * 0.04),
                //color: Colors.amber,
                alignment: Alignment.topLeft,
                width: comprimento * 0.4,
                height: altura * 0.1,

                child: Text("Preço",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: const Color.fromARGB(255, 33, 14, 14),
                      fontWeight: FontWeight.w500,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: altura * 0.57, left: comprimento * 0.7),
                //color: Colors.amber,
                alignment: Alignment.topLeft,
                width: comprimento * 0.3,
                height: altura * 0.1,
                child: TextButton(
                  onPressed: () {
                    null;
                  },
                  child: Text("R\$10 - R\$40",
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 33, 14, 14),
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 3,
                color: const Color.fromRGBO(158, 158, 158, 0.5),
                width: comprimento * 0.9,
                margin: EdgeInsets.only(
                    left: comprimento * 0.05, top: altura * 0.76),
              ),
              Container(
                alignment: Alignment.center,
                height: 3,
                color: Colors.deepOrangeAccent,
                width: comprimento * 0.5,
                margin: EdgeInsets.only(
                    left: comprimento * 0.2, top: altura * 0.76),
              ),
              Container(
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
                  color: Colors.deepOrangeAccent,
                ),
                alignment: Alignment.center,
                height: 3,
                width: comprimento * 0.5,
                margin: EdgeInsets.only(
                    left: comprimento * 0.2, top: altura * 0.76),
              ),
              Container(
                height: 28,
                width: comprimento * 0.070,
                margin: EdgeInsets.only(
                    left: comprimento * 0.178, top: altura * 0.743),
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 7.0,
                        offset: Offset(0.1, 0.3))
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.deepOrangeAccent,
                ),
              ),
              Container(
                height: 28,
                width: comprimento * 0.070,
                margin: EdgeInsets.only(
                    left: comprimento * 0.7, top: altura * 0.743),
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 7.0,
                        offset: Offset(0.1, 0.3))
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.deepOrangeAccent,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: altura * 0.694, left: comprimento * 0.14),
                  height: altura * 0.045,
                  width: comprimento * 0.16,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 255, 255)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ))),
                    onPressed: () {
                      null;
                    },
                    child: Text("R\$10",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        )),
                  )),
              Container(
                  margin: EdgeInsets.only(
                      top: altura * 0.694, left: comprimento * 0.66),
                  height: altura * 0.045,
                  width: comprimento * 0.16,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 255, 255)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ))),
                    onPressed: () {
                      null;
                    },
                    child: Text("R\$40",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        )),
                  )),
              Container(
                  margin: EdgeInsets.only(
                      top: altura * 0.87, left: comprimento * 0.2),
                  height: altura * 0.09,
                  width: comprimento * 0.6,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFF67952)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFF67952)),
                          borderRadius: BorderRadius.circular(25.0),
                        ))),
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.HOME);
                    },
                    child: Text("Aplicar Filtro",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )),
                  )),
            ],
          ),
        ));
  }
}
