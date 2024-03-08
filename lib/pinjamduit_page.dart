import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sali_hepeng/syarat_page.dart';

class PinjamDuitHomePage extends StatefulWidget {
  const PinjamDuitHomePage({super.key});

  @override
  State<PinjamDuitHomePage> createState() => PinjamDuitHomePageState();
}

class PinjamDuitHomePageState extends State<PinjamDuitHomePage> {
  int _currentIndex = 0;
  final bool _hasNotifications = false;

  final List<String> imageList = [
    'assets/images/ads/ads_1.png',
    'assets/images/ads/ads_2.png',
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
      appBar: AppBar(
        title: Image.asset(
          'assets/images/pd_logo.png',
          fit: BoxFit.cover,
        ),
        backgroundColor: const Color.fromARGB(255, 230, 243, 255),
        automaticallyImplyLeading: false,
        actions: [
          Stack(
            // Use a Stack for badge positioning
            children: [
              IconButton(
                icon: const Icon(
                    Icons.notifications_outlined), // Notification icon
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
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    constraints: const BoxConstraints(
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
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(200, 176, 218, 255),
                        ),
                        child: const Icon(
                          Icons.account_balance_wallet_rounded,
                          color: Color.fromARGB(255, 0, 96, 181),
                          size: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Total limit pinjaman',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'DMSans',
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
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(200, 0, 96, 181),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Row(
                          children: [
                            Baseline(
                              baseline: 5,
                              baselineType: TextBaseline.ideographic,
                              child: Text(
                                'Rp ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'DMSans',
                                    ),
                              ),
                            ),
                            Baseline(
                              baseline: 20,
                              baselineType: TextBaseline.alphabetic,
                              child: Text(
                                '600.000',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            )
                          ],
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
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(200, 176, 218, 255),
                        ),
                        child: const Icon(
                          Icons.account_balance_wallet_rounded,
                          color: Color.fromARGB(255, 0, 96, 181),
                          size: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sisa limit pinjaman',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'DMSans',
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
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Baseline(
                              baseline: 5,
                              baselineType: TextBaseline.ideographic,
                              child: Text(
                                'Rp ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'DMSans',
                                    ),
                              ),
                            ),
                            Baseline(
                              baseline: 20,
                              baselineType: TextBaseline.alphabetic,
                              child: Text(
                                '600.000',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'DMSans',
                                    ),
                              ),
                            )
                          ],
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
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(200, 176, 218, 255),
                        ),
                        child: const Icon(
                          Icons.percent,
                          color: Color.fromARGB(255, 0, 96, 181),
                          size: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Voucher',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'DMSans',
                            ),
                      ),
                      Expanded(
                        child: Text(
                          '2',
                          textAlign: TextAlign.end,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'DMSans',
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
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(30),
                      child: Image.asset(
                        'assets/images/icon/red_info.png',
                        scale: 0.8,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lengkapi Akun!',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Segera lengkapi akunmu agar dapat melakukan pinjaman!',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontSize: 14, fontFamily: 'DMSans'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(
                  color: Color.fromARGB(255, 230, 243, 255),
                  height: 1,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Syarat()),
                            );
                          },
                          child: Text(
                            'Lengkapi Sekarang',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Syarat()),
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 300,
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Penawaran terbatas untuk kamu !',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DMSans'),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  flex: 0,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 150,
                      autoPlay: true,
                      viewportFraction: 1,
                      autoPlayInterval: const Duration(seconds: 5),
                    ),
                    items: imageList.map((imageAsset) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            imageAsset,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: Image.asset('assets/images/ojk.png'),
                )
              ],
            ),
          ), // Other elements of your Column, if needed
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
