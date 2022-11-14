import 'package:flutter/material.dart';
import 'package:practice1_fluuter/pages/account_screen.dart';
import 'package:practice1_fluuter/pages/cart_screen.dart';
import 'package:practice1_fluuter/pages/favorite_screen.dart';

import 'home_screen.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedIndex = 0;


  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const CartScreen(),
    const FavoriteScreen(),
    const AccountScreen()
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: ""
          ),
        ],
      ),
    );
  }


}
