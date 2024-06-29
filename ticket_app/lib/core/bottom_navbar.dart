import "package:fluentui_icons/fluentui_icons.dart";
import "package:flutter/material.dart";

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final appScreens = const [
    Text('Home'),
    Text('Sreach'),
    Text('Tickets'),
    Text('Profile')
  ];

  int _selectedIndex = 0;

  void _onIndexTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My tickets'),
        centerTitle: true,
      ),
      body: Center(child: appScreens[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xff526400),
        showSelectedLabels: false,
        onTap: _onIndexTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: 'Tickets'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
              activeIcon:
                  Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
              label: 'Profile'),
        ],
      ),
    );
  }
}
