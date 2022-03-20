import 'package:aplicativouniversitario/screens/home.dart';
import 'package:aplicativouniversitario/screens/profile.dart';
import 'package:aplicativouniversitario/screens/prpe.dart';
import 'package:aplicativouniversitario/screens/schedules.dart';
import 'package:aplicativouniversitario/screens/university_restaurant.dart';
import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:flutter/material.dart';

class BottomNavegation extends StatefulWidget {
  const BottomNavegation({Key? key}) : super(key: key);

  @override
  State<BottomNavegation> createState() => _BottomNavegationState();
}

class _BottomNavegationState extends State<BottomNavegation> {
  int _selectedIndex = 0;
  // ignore: unused_field
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: black);
  // ignore: prefer_final_fields
  static List<Widget> _widgetOptions = <Widget>[
    const HomeScreem(),
    const Restaurant(),
    const Schedules(),
    const Prpe(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: background,
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'INÍCIO',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'RU',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range_rounded),
            label: 'HORÁRIO',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: 'PRPE',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_outlined),
            label: 'PERFIL',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: orange,
        unselectedItemColor: black,
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        onTap: _onItemTapped,
      ),
    );
  }
}
