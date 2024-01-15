import 'package:eletrohome/screens/home/home_screen.dart';
import 'package:eletrohome/views/favorite.dart';
import 'package:eletrohome/views/perfil.dart';
import 'package:eletrohome/views/promo.dart';
import 'package:flutter/material.dart';

import 'carrinho.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  late PageController pc;
  setcurrentIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pc = PageController(initialPage: currentIndex);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        children: [HomeScreen(), Carrinho(), Favorite(), Promo(), Perfil()],
        onPageChanged: setcurrentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.grey,
        elevation: 4,
        iconSize: 27,
        selectedFontSize: 0.5,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedFontSize: 0.5,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          pc.animateToPage(index,
              duration: Duration(milliseconds: 400), curve: Curves.ease);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.percent,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
