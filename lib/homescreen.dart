import 'package:flutter/material.dart';
import 'package:meri_didi_app/screens/homecontent.dart';
import 'package:meri_didi_app/screens/profile_page.dart';
import 'package:meri_didi_app/theme.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = [
    Homecontent(),
    Homecontent(),
    Homecontent(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          currentIndex: _selectedIndex,
          selectedItemColor: lightYellowColor,
          unselectedItemColor: Colors.grey[400],
          selectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, size: 30),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book, size: 30),
              label: "Booking",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, size: 30),
              label: "Attendance",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
