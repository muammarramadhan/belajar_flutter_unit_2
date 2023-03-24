// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:belajar_flutter_unit_2/Page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int activeIndex = 0;

  List<Widget> pages = [
    Homepage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   elevation: 0,
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: activeIndex,
      //   onTap: (int index) {
      //     setState(() {
      //     activeIndex = index;
      //     });
      //   },
      //   selectedItemColor: Colors.amber,
      //   unselectedItemColor: Colors.grey,
      //   showUnselectedLabels: true,
      //   items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "rumah"),
      //   BottomNavigationBarItem(icon: Icon(Icons.abc), label: "rumah"),
      //   BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "rumah"),
      //   BottomNavigationBarItem(icon: Icon(Icons.accessibility), label: "rumah"),
      // ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeIndex,
        onTap: (int index) {
          setState(() {
            activeIndex = index;
          });
        },
        selectedLabelStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: "PSR"),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle:
            GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Discover'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.tv_outlined), label: 'TV News'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ],
      ),
    );
  }
}
