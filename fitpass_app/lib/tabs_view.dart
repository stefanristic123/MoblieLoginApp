import 'package:fitpass_app/facilities_view.dart';
import 'package:fitpass_app/home_view.dart';
import 'package:fitpass_app/profile_view.dart';
import 'package:fitpass_app/scanner_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'top_view.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    FacilitiesView(),
    ScannerView(),
    ProfileView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Title")),
      extendBodyBehindAppBar: false,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF262234),
        selectedItemColor: Color(0xFFe4441d), 
        unselectedItemColor: Color(0xFFc0bfca), 
        selectedIconTheme: IconThemeData(color: Color(0xFFe4441d)),
        unselectedIconTheme: IconThemeData(color: Color(0xFFc0bfca)),
        selectedLabelStyle: TextStyle(fontSize: 12.0, fontFamily: 'Lexend', fontWeight: FontWeight.w400), 
        unselectedLabelStyle: TextStyle(fontSize: 12.0, fontFamily: 'Lexend',  fontWeight: FontWeight.w400),       
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.place_outlined,
            ),
            label: 'Facilities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Check In',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped, 
      ),
       body: Stack(
        children: [
          Container(
            color: Color(0xFF1d1b29), 
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: [
              TopView(),
              Expanded(
                child: _widgetOptions.elementAt(_selectedIndex),
              ),
            ],
          ),
        ],
       )  
    );
  }
}

