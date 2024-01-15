import 'package:eletrohome/routes/app_routes.dart';
import 'package:eletrohome/views/cadastrar_user.dart';
import 'package:eletrohome/views/carrinho.dart';
import 'package:eletrohome/views/carteira.dart';
import 'package:eletrohome/views/checkout.dart';
import 'package:eletrohome/views/credit_page.dart';
import 'package:eletrohome/views/cupons.dart';
import 'package:eletrohome/views/delete_confirm.dart';
import 'package:eletrohome/views/edit_senha.dart';
import 'package:eletrohome/views/endereco_edit.dart';
import 'package:eletrohome/views/endereco_form.dart';
import 'package:eletrohome/views/endereco_list.dart';
import 'package:eletrohome/views/filter.dart';
import 'package:eletrohome/views/home.dart';
import 'package:eletrohome/views/inicio0.dart';
import 'package:eletrohome/views/inicio1.dart';
import 'package:eletrohome/views/inicio2.dart';
import 'package:eletrohome/views/notify.dart';
import 'package:eletrohome/views/parabenscp.dart';
import 'package:eletrohome/views/parabenstic.dart';
import 'package:eletrohome/views/pedidos.dart';
import 'package:eletrohome/views/configs.dart';
import 'package:eletrohome/views/perfil.dart';
import 'package:eletrohome/views/sobre.dart';
import 'package:eletrohome/views/suporte.dart';
import 'package:eletrohome/views/ticket.dart';
import 'package:eletrohome/views/vender1.dart';
import 'package:eletrohome/views/vender2.dart';
import 'package:eletrohome/views/vender3.dart';
import 'package:eletrohome/views/verify_num.dart';
import 'package:flutter/material.dart';
import 'views/login_page.dart';
import 'package:eletrohome/views/tel_confirm.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'EletroHome',
        theme: ThemeData(
          fontFamily: 'Poppins',
          primarySwatch: Colors.blue,
        ),
        routes: {
          AppRoutes.LOGIN: (_) => Login_Page(),
          AppRoutes.TEL_CONFIRM: (_) => Tel_Confirm(),
          AppRoutes.VERIFY_NUM: (_) => Verify_Num(),
          AppRoutes.EDIT_SENHA: (_) => Edit_Senha(),
          AppRoutes.HOME: (_) => Home(),
          AppRoutes.CADASTRAR: (_) => Cadastrar_User(),
          AppRoutes.CARRINHO: (_) => Carrinho(),
          AppRoutes.NOTIFY: (_) => Notify(),
          AppRoutes.FILTER: (_) => Filter(),
          AppRoutes.CHECKOUT: (_) => Checkout(),
          AppRoutes.PARABENSCP: (_) => ParabensCp(),
          AppRoutes.PEDIDOS: (_) => Pedidos(),
          AppRoutes.SOBRE: (_) => Sobre(),
          AppRoutes.SUPORTE: (_) => Suporte(),
          AppRoutes.CONFIGS: (_) => Configs(),
          AppRoutes.PERFIL: (_) => Perfil(),
          AppRoutes.CUPONS: (_) => Cupons(),
          AppRoutes.TICKET: (_) => Ticket(),
          AppRoutes.PARABENSTIC: (_) => ParabensTic(),
          AppRoutes.VENDER1: (_) => Vender1(),
          AppRoutes.VENDER2: (_) => Vender2(),
          AppRoutes.VENDER3: (_) => Vender3(),
          AppRoutes.CREDIT: (_) => CreditCardPage(),
          AppRoutes.CARTEIRA: (_) => Carteira(),
          AppRoutes.ENDERECO_FORM: (_) => EnderecoForm(),
          AppRoutes.ENDERECO_EDIT: (_) => EnderecoFormEdit(),
          AppRoutes.ENDERECO_LIST: (_) => Endereco_List(),
          AppRoutes.CONFIRM_DELETE: (_) => Delete_confirm(),
          AppRoutes.INICIO0: (_) => Inicio0(),
          AppRoutes.INICIO1: (_) => Inicio1(),
          AppRoutes.INICIO2: (_) => Inicio2(),
        });
  }
}
