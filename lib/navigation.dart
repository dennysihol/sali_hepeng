
import 'package:flutter/material.dart';
import 'package:sali_hepeng/pinjamduit_page.dart';
import 'package:sali_hepeng/bayar_page.dart';
import 'package:sali_hepeng/profile_page.dart';
import 'package:sali_hepeng/riwayat_page.dart';
import 'package:sali_hepeng/submit_pinjaman.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => NavigationPageState();
}

class NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;
  final bool _hasNotifications = false;

  final index = [
    const PinjamDuitHomePage(),
    const BayarPage(),
    const SubmitPinjaman(),
    const RiwayatPage(),
    const ProfilePage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 243, 255),
      body: index[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 95,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Fixed for 5 items
          backgroundColor: Colors.white,
          selectedItemColor: const Color.fromARGB(255, 21, 113, 194),
          unselectedItemColor: const Color.fromARGB(255, 138, 200, 255),
          currentIndex: _currentIndex,
          unselectedLabelStyle: const TextStyle(fontFamily: 'DMSans'),
          onTap: onTabTapped,
          items: [
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                    'assets/images/icon/ic_home.png'), // Replace with your pinjamduit icon image path
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                    'assets/images/icon/ic_bayar.png'), // Replace with your bayar icon image path
              ),
              label: 'Bayar',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/icon/ic_pd.png'),
              label: 'PinjamDuit',
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                    'assets/images/icon/ic_riwayat.png'), // Replace with your riwayat icon image path
              ),
              label: 'Riwayat',
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                    'assets/images/icon/ic_profil.png'), // Replace with your profile icon image path
              ),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
