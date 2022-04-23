import 'package:flutter/material.dart';
import 'package:tugas3/Tab/home.dart';
import 'package:tugas3/Tab/product.dart';
import 'package:tugas3/Tab/transaction.dart';

class ScreenNav extends StatefulWidget {
  @override
  _ScreenNavState createState() => _ScreenNavState();
}

class _ScreenNavState extends State<ScreenNav> {
  int _currentIndex = 0;

  late final tabs = [
    const Home(),
    const Product(),
    const Transaction(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.drag_indicator_outlined),
            label: "Product",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.compare_arrows_rounded),
            label: "Trasactions",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
