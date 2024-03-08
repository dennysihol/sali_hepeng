import 'package:flutter/material.dart';
import 'package:sali_hepeng/theme/theme.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sali_hepeng/pinjamduit_page.dart';

class LoginAccountPage extends StatefulWidget {
  const LoginAccountPage({super.key});

  @override
  State<LoginAccountPage> createState() => _LoginAccountPageState();
}

class _LoginAccountPageState extends State<LoginAccountPage> {
  final _textController = TextEditingController();
  bool _isButtonEnabled = false;
  var _isObscured;

  @override
  void initState() {
    super.initState();
    // Add a listener to update button state based on text changes
    _textController.addListener(_updateButtonState);
    _isObscured = true;
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed
    _textController.dispose();
    super.dispose();
  }

  void _updateButtonState() {
    setState(() {
      _isButtonEnabled = _textController.text.isNotEmpty;
    });
  }

  void _showSweetAlert(BuildContext context) {
    Alert(
      context: context,
      type: AlertType.success,
      title: "Success",
      desc: "Berhasil Login",
      buttons: [],
    ).show();

    // Auto-close after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context, rootNavigator: true).pop(); // Close the dialog
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Masuk"),
        centerTitle: true,
        titleTextStyle: myTheme.appBarTheme.titleTextStyle,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Masukkan Kata Sandi',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 20,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: _textController,
              obscureText: _isObscured, // Hide the password characters
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  padding: const EdgeInsetsDirectional.only(end: 12.0),
                  icon: _isObscured
                      ? const Icon(Icons.visibility_off_outlined)
                      : const Icon(Icons.visibility_outlined),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                ),
                labelText: 'Masukkan Kata Sandi',
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a password';
                }
                return null;
              },
            ),
            Container(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Lupa Password?',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: const Color.fromARGB(255, 124, 123, 123),
                      ),
                ),
              ),
            ),
            const SizedBox(height: 20),
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
              onPressed: _isButtonEnabled
                  ? () {
                       _showSweetAlert(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PinjamDuitHomePage()),
                        );
                    }
                  : null,
              child: const Text('Masuk', style: TextStyle(
                fontSize: 18,
                fontFamily: 'DMSans'
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
