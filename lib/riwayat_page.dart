import 'package:flutter/material.dart';

class RiwayatPage extends StatefulWidget {
  const RiwayatPage({super.key});

  @override
  State<RiwayatPage> createState() => RiwayatPageState();
}

class RiwayatPageState extends State<RiwayatPage> {


  final List<String> imageList = [
    'assets/images/ads/ads_1.png',
    'assets/images/ads/ads_2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 243, 255),
      body: Column(
        children: [
          const Text('HALAMAN RIWAYAT'),
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
        ],
      ),
    );
  }
}
