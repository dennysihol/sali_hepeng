import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sali_hepeng/otp_page.dart';
import 'package:sali_hepeng/theme/theme.dart';

class VerifikasiPage extends StatelessWidget {
  const VerifikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Daftar"),
        centerTitle: true,
        titleTextStyle: myTheme.appBarTheme.titleTextStyle,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Image.asset('assets/images/verifikasi.png'),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Pilih Metode Verifikasi',
                textAlign: TextAlign.start,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Silahkan pilih metode verifikasi yang '
              'akan dikirimkan melalui nomor',
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.start,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '+62 812 **** **79',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton.icon(
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtpPage()),
                );
              },
              icon: const Icon(Icons.sms_outlined),
              label: const Text(
                'Via SMS',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtpPage()),
                );
              },
              icon: const FaIcon(FontAwesomeIcons.whatsapp),
              label: const Text(
                'Via Whatsapp',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
