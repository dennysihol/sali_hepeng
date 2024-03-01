import 'package:flutter/material.dart';

class PinjamDuitHomePage extends StatefulWidget {
  PinjamDuitHomePage({super.key});

  @override
  _PinjamDuitHomePageState createState() => _PinjamDuitHomePageState();
}

class _PinjamDuitHomePageState extends State<PinjamDuitHomePage> {
  int _currentIndex = 0;
  final bool _hasNotifications = false;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 243, 255),
      appBar: AppBar(
        title: Image.asset(
          'assets/images/pd_logo.png',
          fit: BoxFit.cover,
        ),
        backgroundColor: Color.fromARGB(255, 230, 243, 255),
        automaticallyImplyLeading: false,
        actions: [
          Stack(
            // Use a Stack for badge positioning
            children: [
              IconButton(
                icon: Icon(Icons.notifications_outlined), // Notification icon
                onPressed: () {
                  // Handle navigating to notifications screen
                },
              ),
              if (_hasNotifications)
                Positioned(
                  // Notification badge
                  top: 8, // Adjust positioning as needed
                  right: 8,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 14,
                      minHeight: 14,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: const DecorationImage(
                image: AssetImage('assets/images/bg_card.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(200, 176, 218, 255),
                        ),
                        child: const Icon(
                          Icons.account_balance_wallet_rounded,
                          color: Color.fromARGB(255, 0, 96, 181),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Total Limit Pinjaman',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      // IconButton(
                      //   icon: const Icon(Icons.visibility_off),
                      //   color: Colors.white,
                      //   iconSize: 20,
                      //   onPressed: () {
                      //     // Handle what happens when the icon is tapped
                      //     print('Search icon tapped!');
                      //   },
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(200, 0, 96, 181),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: const Text(
                          'Rp. 1.000.000.000',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(200, 176, 218, 255),
                        ),
                        child: const Icon(
                          Icons.account_balance_wallet_rounded,
                          color: Color.fromARGB(255, 0, 96, 181),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Sisa Limit Pinjaman',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      // IconButton(
                      //   icon: const Icon(Icons.visibility_off),
                      //   color: Colors.white,
                      //   iconSize: 20,
                      //   onPressed: () {
                      //     // Handle what happens when the icon is tapped
                      //     print('Search icon tapped!');
                      //   },
                      // ),
                      const Expanded(
                        child: Text(
                          'Rp. 600.000',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(200, 176, 218, 255),
                        ),
                        child: const Icon(
                          Icons.percent,
                          color: Color.fromARGB(255, 0, 96, 181),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Voucher',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          '2',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 150,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
          ),
          const Spacer(),
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              color: Colors.white,
            ),
          ),

          // Other elements of your Column, if needed
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 95,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Fixed for 5 items
          backgroundColor: Colors.white,
          selectedItemColor: const Color.fromARGB(255, 21, 113, 194),
          unselectedItemColor: const Color.fromARGB(255, 138, 200, 255),
          currentIndex: _currentIndex,
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
