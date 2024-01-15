import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:eletrohome/models/cart.dart';
import 'package:flutter_credit_card_brazilian/credit_card_form.dart';
import 'package:flutter_credit_card_brazilian/credit_card_model.dart';
import 'package:flutter_credit_card_brazilian/credit_card_widget.dart';

class CreditCardPage extends StatefulWidget {
  const CreditCardPage({Key? key}) : super(key: key);

  @override
  _CreditCardPageState createState() => _CreditCardPageState();
}

class _CreditCardPageState extends State<CreditCardPage> {
  final cpf = TextEditingController();
  String cardNum = '';
  String validate = '';
  String cardNome = '';
  String cvv = '';
  bool isCvvFocused = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        actions: <Widget>[
          //IconButton
        ], //IconButton
        title: Text("Cadastro de Cartão"),
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
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNum,
              expiryDate: validate,
              cardHolderName: cardNome,
              cvvCode: cvv,
              showBackView: isCvvFocused,
              obscureCardNumber: false,
              obscureCardCvv: false,
              cardBgColor: Colors.purple,
              animationDuration: Duration(milliseconds: 1000),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  CreditCardForm(
                    cardNumber: cardNome,
                    expiryDate: validate,
                    cardHolderName: cardNome,
                    cvvCode: cvv,
                    themeColor: Colors.black,
                    textColor: Colors.black,
                    onCreditCardModelChange: onCreditCardModelChange,
                    formKey: formKey,
                    cardNumberDecoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Número do cartão',
                        hintText: 'xxxx xxxx xxxx xxxx'),
                    expiryDateDecoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Validade',
                        hintText: 'xx/xx'),
                    cvvCodeDecoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'CVV',
                        hintText: 'xxx'),
                    cardHolderDecoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Titular do Cartão',
                    ),
                  ),
                  Container(
                    height: altura * 0.092,
                    margin: EdgeInsets.only(
                      left: 0.024 * altura,
                      right: 0.024 * altura,
                      top: altura * 0.025,
                    ),
                    child: TextFormField(
                      style: TextStyle(fontFamily: 'a'),
                      controller: cpf,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'CPF do titular',
                          hintText: 'xxx.xxx.xxx-xx'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: altura * 0.025,
                    ),
                    height: altura * 0.09,
                    width: 0.9 * comprimento,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          primary: Colors.purple),
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        child: Text(
                          'Cadastrar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            package: 'flutter_credit_card',
                          ),
                        ),
                      ),
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          final cartao = Cart(
                            num_card: cardNum,
                            validate: validate,
                            cvv: cvv,
                            nome_card: cardNome,
                            cpf: cpf.text,
                          );
                          await createCard(cartao);
                          Navigator.of(context).pop();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Cartão Cadastrado')),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Cartão Nao Cadastrado')));
                        }
                      },
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNum = creditCardModel.cardNumber;
      validate = creditCardModel.expiryDate;
      cardNome = creditCardModel.cardHolderName;
      cvv = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}

Future createCard(Cart cartao) async {
  final docEnd = FirebaseFirestore.instance.collection('card').doc();
  cartao.id_card = docEnd.id;

  final json = cartao.toJson();

  await docEnd.set(json);
}
