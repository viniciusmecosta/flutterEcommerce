import 'package:eletrohome/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:eletrohome/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_validator/email_validator.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  final _form = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;

    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: <Widget>[
        Container(
          child: Image.asset('assets/imgs/icone.png'),
          margin:
              EdgeInsets.only(top: altura * 0.10, left: comprimento * 0.400),
          height: comprimento * 0.2,
          width: comprimento * 0.2,
          decoration: BoxDecoration(

              ///color: Colors.amber,
              //shape: BoxShape.rectangle,
              ),
        ),
        Container(
          // color: Colors.cyan,
          margin: EdgeInsets.only(top: altura * 0.25, left: comprimento * 0.35),
          height: altura * 0.06,
          width: comprimento * 0.3,
          alignment: Alignment.center,
          child: Text("Log in",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
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
        Form(
          key: _form,
          child: Stack(children: <Widget>[
            Container(
              child: Icon(
                Icons.email_rounded,
                color: Color(0xfff67952),
                size: altura * 0.04,
              ),
              margin: EdgeInsets.only(
                  top: altura * 0.405, left: comprimento * 0.09),

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
                  EdgeInsets.only(top: altura * 0.40, left: comprimento * 0.23),
              height: altura * 0.085,
              width: comprimento * 0.690,
              child: TextFormField(
                controller: _email,
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                // ignore: body_might_complete_normally_nullable
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Digite o email";
                  } else if (!EmailValidator.validate(value, true)) {
                    return "Digite um email válido";
                  }
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
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
              margin: EdgeInsets.only(
                  top: altura * 0.505, left: comprimento * 0.0725),

              ///color: Colors.blueGrey,
              height: altura * 0.085,
              width: comprimento * 0.85,
            ),
            Container(
              child: Icon(
                Icons.lock_rounded,
                color: Color(0xfff67952),
                size: altura * 0.04,
              ),
              margin: EdgeInsets.only(
                  top: altura * 0.509, left: comprimento * 0.09),

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
              margin: EdgeInsets.only(
                  top: altura * 0.503, left: comprimento * 0.23),

              ///color: Color.fromARGB(255, 202, 224, 235),
              height: altura * 0.085,
              width: comprimento * 0.690,
              child: TextFormField(
                obscureText: true,
                controller: _senha,
                autofocus: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'O campo não pode ficar vazio';
                  }
                  if (value.length < 8) {
                    return 'O campo rua deve ter pelo menos 8 caracteres';
                  } else
                    return null;
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Senha',
                ),
              ),
            ),
          ]),
        ),

        Container(
          margin:
              EdgeInsets.only(top: altura * 0.605, left: comprimento * 0.53),
          height: altura * 0.040,
          width: comprimento * 0.4,
          alignment: Alignment.topRight,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.TEL_CONFIRM);
            },
            child: Text("Esqueceu a senha?",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                )),
          ),
        ),
        Container(
            margin:
                EdgeInsets.only(top: altura * 0.69, left: comprimento * 0.2),
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
                if (_form.currentState!.validate()) {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _email.text, password: _senha.text)
                      .then((value) {
                    Navigator.of(context).pushNamed(AppRoutes.HOME);
                  }).onError((error, stackTrace) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Conta nao existente')),
                    );
                  });
                }
              },
              child: Text("Log in",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  )),
            )),

        //// Barrinha OU
        Container(
          margin: EdgeInsets.only(top: altura * 0.85, left: comprimento * 0.25),
          height: altura * 0.001,
          width: comprimento * 0.2,
          color: Colors.black,
        ),
        Container(
          margin:
              EdgeInsets.only(top: altura * 0.843, left: comprimento * 0.48),
          height: altura * 0.03,
          width: comprimento * 0.2,
          // color: Color.fromARGB(255, 243, 0, 0),
          child: Text("Ou",
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: altura * 0.85, left: comprimento * 0.55),
          height: altura * 0.001,
          width: comprimento * 0.2,
          color: Colors.black,
        ),

        ///Facebook
        Container(
          margin: EdgeInsets.only(top: altura * 0.88, left: comprimento * 0.25),
          height: altura * 0.12,
          width: comprimento * 0.2,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color(0x0c333333),
                blurRadius: 20,
                offset: Offset(5, 4),
              ),
            ],
          ),
          child: IconButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ))),
            icon: Icon(
              Icons.facebook,
              size: altura * 0.08,
              color: Colors.blue,
            ),
            onPressed: null,
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: altura * 0.88, left: comprimento * 0.55),
          height: altura * 0.12,
          width: comprimento * 0.2,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color(0x0c333333),
                blurRadius: 20,
                offset: Offset(5, 4),
              ),
            ],
          ),
          child: IconButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ))),
            icon: Icon(
              Icons.g_mobiledata,
              size: altura * 0.08,
              color: Colors.pinkAccent,
            ),
            onPressed: () async {
              await FirebaseServices().sigInWithGoogle();
              //Navigator.of(context).pushNamed(AppRoutes.HOME);
            },
          ),
        ),

        ///Fake
      ]),
    ));
  }
}
