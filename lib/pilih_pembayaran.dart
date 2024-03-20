import 'package:flutter/material.dart';
// import 'package:money_formatter/money_formatter.dart';
// import 'package:sali_hepeng/pin_page.dart';
// import 'package:sali_hepeng/theme/theme.dart';

class PilihPembayaran extends StatefulWidget {
  const PilihPembayaran({super.key});

  @override
  State<PilihPembayaran> createState() => PilihPembayaranState();
}

class PilihPembayaranState extends State<PilihPembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 249, 249, 249),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'PinjamDuit',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontFamily: 'DMSans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
          ),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(255, 255, 255, 255),
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
                        Image.asset('assets/images/icon/ic_simulasi.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Simulasi Pinjaman',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'DMSans'),
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
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nominal pinjaman',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                            Text(
                              'Rp. 800.000',
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
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tenor',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                            Text(
                              '90 Hari',
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
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bunga Harian',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                            Text(
                              'Rp. 400.000',
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
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          height: 1,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Pembayaran',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                  ),
                            ),
                            Text(
                              'Rp. 1.200.000',
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
                      ],
                    ),
                  )
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
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tujuan Pinjaman',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontFamily: 'DMSans',
                          ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(color: Colors.blue)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize
                            .min, // Important for keeping size to a minimum
                        children: [
                          Text(
                            'Pilih',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 16,
                                  fontFamily: 'DMSans',
                                ),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.arrow_forward_ios, size: 18),
                        ],
                      ),
                    ),
                  ],
                ),
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
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rekening Bank',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontFamily: 'DMSans',
                          ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(color: Colors.blue)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize
                            .min, // Important for keeping size to a minimum
                        children: [
                          Text(
                            'Bank BCA',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 16,
                                  fontFamily: 'DMSans',
                                ),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.arrow_forward_ios, size: 18),
                        ],
                      ),
                    ),
                  ],
                ),
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
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rincian Pembayaran',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontFamily: 'DMSans',
                          ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(color: Colors.blue)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize
                            .min, // Important for keeping size to a minimum
                        children: [
                          Text(
                            'Lihat',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 16,
                                  fontFamily: 'DMSans',
                                ),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.arrow_forward_ios, size: 18),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 0, 135, 255),
                    disabledBackgroundColor:
                        const Color.fromARGB(255, 230, 243, 255),
                    disabledForegroundColor:
                        const Color.fromARGB(255, 176, 218, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: const Size(double.infinity, 60)),
                onPressed: null,
                child: const Text(
                  'Pinjam Sekarang',
                  style: TextStyle(fontSize: 16, fontFamily: 'DMSans'),
                ),
              ),
            ),
          ],
        ));
  }
}
