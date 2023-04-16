import 'package:flamestask/View/browse_page.dart';
import 'package:flamestask/View/calender_page.dart';
import 'package:flamestask/View/chats_page.dart';
import 'package:flamestask/View/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentindex = 0;

  final screens = [
    HomePage(),
    BrowsePage(),
    CalenderPage(),
    ChatsPage()
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 30,
        unselectedItemColor:HexColor("#505050"),
        selectedItemColor: HexColor("#FF5F8F"),
        onTap: (index) =>setState(() => currentindex = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Iconsax.home,size: 35),label : ""),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.global_search,size: 35),label : ""),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.calendar_edit,size: 35),label : ""),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.messages_3,size: 35),label : ""),
        ],
      ),
    );
  }
}


