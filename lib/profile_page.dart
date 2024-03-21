import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
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
          'Profile',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: 'DMSans',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
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
                        'assets/images/foto_profil.png',
                        height: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Asep Mazda',
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
                            '+62 812 1070 4479',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'DMSans',
                                ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize
                              .min, // Important for keeping size to a minimum
                          children: [
                            Text(
                              'Detail',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 16,
                                    fontFamily: 'DMSans',
                                    color: Colors.blue,
                                  ),
                            ),
                            const SizedBox(width: 5),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: Colors.blue,
                            ),
                          ],
                        ),
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
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 20,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Akun Bank Penerima',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.settings,
                      size: 20,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Pengaturan',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.question_mark_rounded,
                      size: 20,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Pusat Bantuan',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.attach_money_rounded,
                      size: 20,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Pendanaan',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.info_outline_rounded,
                      size: 20,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Tentang Kami',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                'Keluar',
                style: TextStyle(fontSize: 16, fontFamily: 'DMSans'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
