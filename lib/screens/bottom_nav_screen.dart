import 'package:covid19/screens/home_screen.dart';
import 'package:covid19/screens/screen.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List _screen = [
    HomeScreen(),
    StatsScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index)=>setState(()=>_currentIndex=index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: .5,
        items: [
          Icons.home,Icons.insert_chart,Icons.event_note,Icons.info
          ].asMap().map((key, value) =>MapEntry(
          key,BottomNavigationBarItem(
        title: Text(""),
        icon: Container(
          padding: EdgeInsets.symmetric(
            vertical: 6,
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            color: _currentIndex == key
                ?Colors.blue[600]
                : Colors.transparent,
                borderRadius: BorderRadius.circular(20)
          ),
          child: Icon(value),
        )


        )))
        .values
        .toList()


      ),
      );

  }
}
