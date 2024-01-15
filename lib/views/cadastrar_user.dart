import 'package:flutter/material.dart';
import 'package:eletrohome/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_validator/email_validator.dart';

class Cadastrar_User extends StatefulWidget {
  const Cadastrar_User({super.key});

  @override
  State<Cadastrar_User> createState() => _Cadastrar_UserState();
}

class _Cadastrar_UserState extends State<Cadastrar_User> {
  final _form = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _senha = TextEditingController();
  final TextEditingController _nome = TextEditingController();
  final TextEditingController _confirm = TextEditingController();
  bool? check1 = false;

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
          decoration: BoxDecoration(),
        ),
        Container(
          // color: Colors.cyan,
          margin: EdgeInsets.only(top: altura * 0.25, left: comprimento * 0.35),
          height: altura * 0.06,
          width: comprimento * 0.3,
          alignment: Alignment.center,
          child: Text("Sign Up",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              )),
        ),

        //campos
        Form(
          key: _form,
          child: Stack(children: <Widget>[
            //nome
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
                  top: altura * 0.35, left: comprimento * 0.0725),

              ///color: Colors.blueGrey,
              height: altura * 0.085,
              width: comprimento * 0.85,
            ),
            Container(
              child: Icon(
                Icons.person_2_rounded,
                color: Color(0xfff67952),
                size: altura * 0.04,
              ),
              margin: EdgeInsets.only(
                  top: altura * 0.355, left: comprimento * 0.09),

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
                  EdgeInsets.only(top: altura * 0.35, left: comprimento * 0.23),

              ///color: Color.fromARGB(255, 202, 224, 235),
              height: altura * 0.085,
              width: comprimento * 0.690,
              child: TextFormField(
                controller: _nome,
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                //validator: null,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Nome',
                ),
              ),
            ),
            //fim do nome

            //email
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
                  top: altura * 0.45, left: comprimento * 0.0725),

              ///color: Colors.blueGrey,
              height: altura * 0.085,
              width: comprimento * 0.85,
            ),
            Container(
              child: Icon(
                Icons.email_rounded,
                color: Color(0xfff67952),
                size: altura * 0.04,
              ),
              margin: EdgeInsets.only(
                  top: altura * 0.455, left: comprimento * 0.09),

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
                  EdgeInsets.only(top: altura * 0.45, left: comprimento * 0.23),
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
            //fim do email

            // SENHA

            // CONFIRMAR SENHA
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
                  top: altura * 0.55, left: comprimento * 0.0725),

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
                  top: altura * 0.555, left: comprimento * 0.09),

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
                  EdgeInsets.only(top: altura * 0.55, left: comprimento * 0.23),

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
                  top: altura * 0.65, left: comprimento * 0.0725),

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
                  top: altura * 0.655, left: comprimento * 0.09),

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
                  EdgeInsets.only(top: altura * 0.65, left: comprimento * 0.23),

              ///color: Color.fromARGB(255, 202, 224, 235),
              height: altura * 0.085,
              width: comprimento * 0.690,
              child: TextFormField(
                obscureText: true,
                controller: _confirm,
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
                  hintText: 'Confirme a senha',
                ),
              ),
            ),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(top: altura * 0.73, left: comprimento * 0.04),
          child: CheckboxListTile(
            //checkbox positioned at left
            value: check1,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (bool? value) {
              setState(() {
                check1 = value;
              });
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(top: altura * 0.764, left: comprimento * 0.18),
          child: Text(
            "Eu aceito os Termos & Condições",
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

        //botao sign up
        Container(
            margin:
                EdgeInsets.only(top: altura * 0.82, left: comprimento * 0.2),
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
              onPressed: () async {
                if (_form.currentState!.validate()) {
                  await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _email.text, password: _senha.text)
                      .then((value) {
                    Navigator.of(context).pushNamed(AppRoutes.LOGIN);
                  }).onError((error, stackTrace) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('ERRO AO CADASTRAR')),
                    );
                  });
                  await ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Conta cadastrada')));
                }
              },
              child: Text("Sign Up",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  )),
            )),
        //// Barrinha OU
        Container(
          margin: EdgeInsets.only(top: altura * 0.98, left: comprimento * 0.25),
          height: altura * 0.001,
          width: comprimento * 0.2,
          color: Colors.black,
        ),
        Container(
          margin:
              EdgeInsets.only(top: altura * 0.973, left: comprimento * 0.48),
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
          margin: EdgeInsets.only(top: altura * 0.98, left: comprimento * 0.55),
          height: altura * 0.001,
          width: comprimento * 0.2,
          color: Colors.black,
        ),
        Container(
            margin:
                EdgeInsets.only(top: altura * 1.04, left: comprimento * 0.4),
            height: altura * 0.05,
            alignment: Alignment.center,
            width: comprimento * 0.2,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.LOGIN);
              },
              child: Text("Login",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  )),
            )),
      ]),
    ));
  }
}
