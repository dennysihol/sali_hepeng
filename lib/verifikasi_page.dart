import 'package:flutter/material.dart';

class VerifikasiPage extends StatelessWidget {
  const VerifikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Daftar"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              child: Image.asset('assets/images/verifikasi.png'),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Pilih Metode Verifikasi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
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
                  minimumSize: const Size(380, 60)),
              onPressed: () {},
              child: const Text(
                'Via SMS',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
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
                  minimumSize: const Size(380, 60)),
              onPressed: () {},
              child: const Text(
                'Via WhatsApp',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
