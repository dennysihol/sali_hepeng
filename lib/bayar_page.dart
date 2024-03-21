import 'package:flutter/material.dart';

class BayarPage extends StatefulWidget {
  const BayarPage({super.key});

  @override
  State<BayarPage> createState() => BayarPageState();
}

class BayarPageState extends State<BayarPage> {
  final List<String> imageList = [
    'assets/images/ads/ads_1.png',
    'assets/images/ads/ads_2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 249, 249),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Bayar',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: 'DMSans',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/icon/ic_list.png',
                          height: 40,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Daftar Pinjaman',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                            ),
                            Text(
                              'Pilih pinjaman yang akan kamu bayar',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/icon/ic_simulasi.png',
                          height: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pinjaman 1',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'DMSans'),
                            ),
                            Text(
                              'Jatuh Tempo',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontFamily: 'DMSans'),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(color: Colors.white),
                        ),
                        Text(
                          '1 Februari 2024',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontFamily: 'DMSans'),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nominal Pinjaman',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                            Text(
                              'Rp. 1.000.000',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cicilan yang harus dibayar',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                            Text(
                              'Rp. 500.000',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jumlah cicilan',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                            Text(
                              '1/4',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        height: 1,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bayar Sekarang',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 16,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Expanded(
                              child: Container(color: Colors.white),
                            ),
                            const Icon(Icons.arrow_forward_ios, size: 18),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/icon/ic_simulasi.png',
                          height: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pinjaman 2',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'DMSans'),
                            ),
                            Text(
                              'Jatuh Tempo',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontFamily: 'DMSans'),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(color: Colors.white),
                        ),
                        Text(
                          '1 Maret 2024',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontFamily: 'DMSans'),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nominal Pinjaman',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                            Text(
                              'Rp. 1.000.000',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cicilan yang harus dibayar',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                            Text(
                              'Rp. 500.000',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jumlah cicilan',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                            Text(
                              '1/4',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        height: 1,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bayar Sekarang',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 16,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Expanded(
                              child: Container(color: Colors.white),
                            ),
                            const Icon(Icons.arrow_forward_ios, size: 18),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/icon/ic_simulasi.png',
                          height: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pinjaman 3',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'DMSans'),
                            ),
                            Text(
                              'Jatuh Tempo',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontFamily: 'DMSans'),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(color: Colors.white),
                        ),
                        Text(
                          '20 Maret 2024',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontFamily: 'DMSans'),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nominal Pinjaman',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                            Text(
                              'Rp. 1.000.000',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cicilan yang harus dibayar',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                            Text(
                              'Rp. 500.000',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jumlah cicilan',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                            Text(
                              '1/4',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        height: 1,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bayar Sekarang',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 16,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Expanded(
                              child: Container(color: Colors.white),
                            ),
                            const Icon(Icons.arrow_forward_ios, size: 18),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
