import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eletrohome/constants.dart';

import '../../routes/app_routes.dart';
import 'components/categories.dart';
import 'components/new_arrival_products.dart';
import 'components/popular_products.dart';
import 'components/search_form.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        }),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 2,
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(width: defaultPadding / 2),
            Text(
              "22/06 Fortaleza",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.NOTIFY);
            },
          ),
        ],
      ),
      drawer: Theme(
        key: null,
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                accountEmail: Text(
                  "maria@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                accountName: Text(
                  "Maria Costa",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://uploads.metropoles.com/wp-content/uploads/2023/07/17124030/F1K-cdbXwAgovdo-1.jpg'),
                  radius: 1,
                ),
              ),
              ListTile(
                leading:
                    Icon(Icons.shopping_basket, color: Colors.deepOrangeAccent),
                title: Text("Meus pedidos"),
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.PEDIDOS);
                  //Navegar para outra página
                },
              ),
              ListTile(
                leading:
                    Icon(Icons.credit_card, color: Colors.deepOrangeAccent),
                title: Text("Carteira"),
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.CARTEIRA);
                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: Icon(Icons.description_rounded,
                    color: Colors.deepOrangeAccent),
                title: Text("Sobre"),
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.SOBRE);
                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: Icon(Icons.support_agent_rounded,
                    color: Colors.deepOrangeAccent),
                title: Text("Suporte"),
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.SUPORTE);
                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.deepOrangeAccent),
                title: Text("Configurações"),
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.CONFIGS);
                  //Navegar para outra página
                },
              ),
              ListTile(
                leading:
                    Icon(Icons.logout_rounded, color: Colors.deepOrangeAccent),
                title: Text("Log out"),
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.LOGIN);
                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: null,
                title: Text(""),
                onTap: () {},
              ),
              ListTile(
                leading: null,
                title: Text(""),
                onTap: () {},
              ),
              ListTile(
                leading: null,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/imgs/icone.png',
                      width: 90,
                    )
                  ],
                ),
                onTap: () {
                  //Navegar para outra página
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explorar",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            const NewArrivalProducts(),
            const PopularProducts(),
          ],
        ),
      ),
    );
  }
}
