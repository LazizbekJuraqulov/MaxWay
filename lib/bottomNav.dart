import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:partfoliya_1/korzinka.dart/login.dart';
import 'package:partfoliya_1/korzinka.dart/login_1.dart';
import 'package:partfoliya_1/personpage.dart/person.dart';

import 'homepage/homepage.dart';
import 'korzinka.dart/korzinka.dart';

class BottomNav extends StatefulWidget {
   BottomNav({Key? key}) : super(key: key);
  static bool? nom=false;
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  late int activBar;
  late List pages;
  @override
  void initState() {
     activBar = 0;
     pages = [
      HomePage(),
      BottomNav.nom! ? KozinkaPage():LoginPage(),
      BottomNav.nom! ? PersonPage():LoginPage(),
    
      
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: pages[activBar],
    bottomNavigationBar: BottomNavigationBar(
        currentIndex: activBar,
        onTap: ((value) {
          activBar = value;
          
          setState(() {});
        }),
        selectedItemColor: Color.fromARGB(255, 88, 21, 100),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: "Главная"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded), label: "Мои заказы"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Личное"),
        ]),
   ); 
   
  }
}