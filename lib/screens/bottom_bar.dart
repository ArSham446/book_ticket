import 'package:book_ticket/screens/SearchScreen/search_screen.dart';
import 'package:book_ticket/screens/all_flights_screen.dart/all_flights.dart';
import 'package:book_ticket/screens/home_screen/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedindex = 0;
  final List<Widget> _widgetoptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const AllFlights(),
    const Text('data'),
  ];
  void onItomTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: _widgetoptions[_selectedindex]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedindex,
          onTap: onItomTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526480),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_search_regular,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_ticket_regular,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: 'Tickets',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_person_regular,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: 'Profile',
            ),
          ],
        ));
  }
}
