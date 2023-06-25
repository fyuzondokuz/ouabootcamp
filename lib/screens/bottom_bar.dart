import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:uygulama/screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;
  static final List<Widget>_widgetOptions =<Widget> [
    HomeScreen(),
    const Text("Arama"),
    const Text("Alışveriş"),
    const Text("Takvim"),
    const Text("Profil"),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items: const[
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_book_formula_information_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_book_formula_information_filled),
            label: "Bilgi"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_map_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_map_filled),
            label: "Harita"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_calendar_month_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_calendar_month_filled),
            label: "Takvim"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: "Profil"),
        ],
      ),
    );
  }
}