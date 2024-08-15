import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todoworld/Utilities/calendertile.dart';
import 'package:todoworld/pages/calenderpage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pages = PageController();
  int _selectedIndex = 0;
  void ontap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pages.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pages,
        children: const [
          Placeholder(),
          Placeholder(),
          CalendarPage(),
          Placeholder()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: ontap,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.amber,
          backgroundColor: Colors.black,
          selectedIconTheme: IconThemeData(
            size: 50,
          ),
          selectedLabelStyle: TextStyle(fontSize: 0.1),
          unselectedLabelStyle: TextStyle(fontSize: 0.1),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_off_rounded), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_rounded), label: 'Calender'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded),
              label: 'profile',
            ),
          ]),
    );
  }
}
