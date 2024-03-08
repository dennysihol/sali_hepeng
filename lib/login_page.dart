import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sali_hepeng/masuk_page.dart';
import 'package:sali_hepeng/perjanjian_page.dart';
import 'package:sali_hepeng/theme/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _phoneNumberController = TextEditingController();
  bool _isButtonDisabled = true;

  @override
  void initState() {
    super.initState();
    _phoneNumberController.addListener(_checkPhoneNumber);
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

  void _checkPhoneNumber() {
    setState(() {
      _isButtonDisabled = _phoneNumberController.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Daftar / Masuk"),
        centerTitle: true,
        titleTextStyle: myTheme.appBarTheme.titleTextStyle,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Silahkan Masuk / Daftar Dengan Nomor Handphone',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: IntlPhoneField(
                controller: _phoneNumberController,
                initialCountryCode: 'ID',
                decoration: const InputDecoration(
                  labelText: 'Masukkan No. HP',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  counterText: '',
                  counterStyle: TextStyle(fontSize: 0),
                ),
                languageCode: "id",
                onChanged: (phone) {
                  String text = _phoneNumberController.text;
                  print(text);
                },
                onCountryChanged: (country) {
                  // print('Country changed to: ' + country.name);
                },
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Butuh Bantuan?',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: const Color.fromARGB(255, 124, 123, 123),
                      ),
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
              onPressed: _isButtonDisabled
                  ? null
                  : () {
                      print(_phoneNumberController);
                      if (_phoneNumberController.text == '81210704479') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Perjanjian()),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginAccountPage()),
                        );
                      }
                    },
              child: const Text(
                'Selanjutnya',
                style: TextStyle(fontSize: 16, fontFamily: 'DMSans'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
