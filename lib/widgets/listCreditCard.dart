import "package:cloud_firestore/cloud_firestore.dart";
import "package:flutter/material.dart";

class ListCreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CollectionReference _ends =
        FirebaseFirestore.instance.collection('card');
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2, left: 24, right: 24),
        ),
        Container(
          height: altura * 0.32,
          child: StreamBuilder(
            stream: _ends.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              if (streamSnapshot.hasError) {
                return Text('Erro ${streamSnapshot.error}');
              } else if (streamSnapshot.hasData) {
                return ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: streamSnapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      final DocumentSnapshot documentSnapshot =
                          streamSnapshot.data!.docs[index];
                      return Padding(
                        padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
                        child: Container(
                            height: altura * 0.33,
                            width: comprimento * 0.8,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.deepPurple,
                                  Colors.purple,
                                  Colors.purpleAccent,
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.7),
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  offset: Offset(1, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Stack(children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: comprimento * 0.045,
                                    top: altura * 0.035),
                                child: Text("NOME",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: comprimento * 0.05,
                                    top: altura * 0.055),
                                child: Text("${documentSnapshot['nome_card']}",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: comprimento * 0.05,
                                    top: altura * 0.125),
                                child: Text("${documentSnapshot['num_card']}",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: comprimento * 0.048,
                                    top: altura * 0.20),
                                child: Text("VAL",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: comprimento * 0.050,
                                    top: altura * 0.22),
                                child: Text("${documentSnapshot['validate']}",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: comprimento * 0.29,
                                    top: altura * 0.20),
                                child: Text("CVV",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: comprimento * 0.3,
                                    top: altura * 0.22),
                                child: Text("${documentSnapshot['cvv']}",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Container(
                                width: comprimento * 0.125,
                                margin: EdgeInsets.only(
                                    left: comprimento * 0.65,
                                    top: altura * 0.02),
                                child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Mastercard_2019_logo.svg/800px-Mastercard_2019_logo.svg.png',
                                ),
                              ),
                            ])),
                      );
                    });
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ],
    );
  }
}
