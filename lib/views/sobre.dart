import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  const Sobre({super.key});

  @override
  State<Sobre> createState() => _SobreState();
}

enum Actions { delete }

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    var size = MediaQuery.of(context).size;
    var comprimento = size.width;
    var altura = (size.height - appbar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(
          title: Text("Sobre"),
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
                child: Image.asset('assets/imgs/icone.png'),
                margin: EdgeInsets.only(
                    top: altura * 0.02, left: comprimento * 0.400),
                height: comprimento * 0.2,
                width: comprimento * 0.2,
                decoration: BoxDecoration(

                    ///color: Colors.amber,
                    //shape: BoxShape.rectangle,
                    ),
              ),
              Container(
                width: comprimento * 0.96,
                margin: EdgeInsets.only(
                    left: comprimento * 0.02, top: altura * 0.15),
                child: Text(
                    "Bem-vindo à Eletrohome! \nSomos uma empresa de comércio eletrônico especializada em eletrônicos de alta qualidade e tecnologia. Nossa missão é fornecer aos nossos clientes uma ampla gama de produtos eletrônicos de última geração, garantindo uma experiência de compra confiável e conveniente.\nNa Eletrohome, acreditamos que a tecnologia tem o poder de transformar vidas. Estamos comprometidos em oferecer produtos inovadores que aprimoram seu estilo de vida, trazendo entretenimento, comunicação e praticidade para o seu dia a dia.\nNosso catálogo abrangente apresenta uma variedade de produtos eletrônicos, desde smartphones e tablets até dispositivos inteligentes para casa, áudio e vídeo, acessórios e muito mais. Trabalhamos em estreita colaboração com marcas reconhecidas globalmente para garantir que você tenha acesso às últimas tendências e lançamentos do mercado.\nAlém disso, nos esforçamos para oferecer um excelente atendimento ao cliente. Nossa equipe de profissionais altamente qualificados está pronta para ajudá-lo em todas as etapas, desde esclarecer dúvidas sobre produtos até fornecer assistência pós-venda confiável.\nAcreditamos que a satisfação do cliente é a base do nosso sucesso. Por isso, trabalhamos incessantemente para garantir que cada compra seja uma experiência agradável e satisfatória. Valorizamos a confiança depositada em nós por nossos clientes e nos esforçamos para superar suas expectativas.\nObrigado por escolher a Eletrohome como seu destino para eletrônicos. Estamos entusiasmados em fazer parte da sua jornada tecnológica. Explore nosso catálogo, faça suas compras com confiança e desfrute de uma experiência excepcional de compra de eletrônicos.\nEquipe Eletrohome",
                    style: TextStyle(fontSize: 14, fontFamily: "Poppins")),
              )
            ],
          ),
        ));
  }
}
