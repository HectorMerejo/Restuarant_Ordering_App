import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_ordering/home_page.dart';
import 'package:restaurant_ordering/menu_page.dart';
import 'package:restaurant_ordering/showdishinfo.dart';

void main() {
  runApp(MaterialApp(home: Hwk4_resturantApp()));
}

class Hwk4_resturantApp extends StatefulWidget {
  @override
  _Hwk4_resturantApp createState() => _Hwk4_resturantApp();
}

class _Hwk4_resturantApp extends State<Hwk4_resturantApp> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.grey,
            iconSize: 40,
            //selectedFontSize: ,
            //unselectedFontSize: ,
            //showSelectedLabels: false,
            //showUnselectedLabels: false,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.restaurant_menu),
                label: 'Menu',
              ),
            ]));
  }
}
