
import 'package:assignment3/calls.dart';
import 'package:assignment3/communities.dart';
import 'package:assignment3/homepage.dart';
import 'package:assignment3/status.dart';
import 'package:flutter/material.dart';


class BottomNavigationpage extends StatefulWidget {
  @override
  State<BottomNavigationpage> createState() => _BottomNavigationpageState();
}

class _BottomNavigationpageState extends State<BottomNavigationpage> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    HomePage(),
    Status(),
    Communities(),
    Calls(),
    
  ];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(Icons.update), label: "updates"),
            BottomNavigationBarItem(icon: Icon(Icons.group_add_rounded), label: "communities"),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: "calls"),
          ],
        ));
  }
}
