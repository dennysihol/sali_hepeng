import 'package:flutter/material.dart';

class PinjamDuitHomePage extends StatefulWidget {
  @override
  _PinjamDuitHomePageState createState() => _PinjamDuitHomePageState();
}

class _PinjamDuitHomePageState extends State<PinjamDuitHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    // Replace with your screens/pages
    Center(child: Text('Home')),
    Center(child: Text('Bayar')),
    Center(child: Text('PinjamDuit')),
    Center(child: Text('Riwayat')),
    Center(child: Text('Profil')),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PinjamDuit'),
        backgroundColor: Color.fromARGB(255, 176, 218, 255),
        automaticallyImplyLeading: false, // This line removes the back button
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Fixed for 5 items
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/ic_bayar.png'), // Replace with your bayar icon image path
            ),
            label: 'Bayar',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/ic_pinjamduit.png'), // Replace with your pinjamduit icon image path
            ),
            label: 'PinjamDuit',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/ic_riwayat.png'), // Replace with your riwayat icon image path
            ),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/ic_profile.png'), // Replace with your profile icon image path
            ),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
