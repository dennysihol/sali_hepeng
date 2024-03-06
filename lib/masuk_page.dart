import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sali_hepeng/pinjamduit_page.dart';

class LoginAccountPage extends StatefulWidget {
  @override
  _LoginAccountPageState createState() => _LoginAccountPageState();
}

class _LoginAccountPageState extends State<LoginAccountPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();

  String _password = "";
  // String _confirmPassword = "";
  var _isObscured;
  bool _isButtonDisabled = true;

  void initState() {
    super.initState();
    _isObscured = true;
    _passwordController.addListener(_checkPassword);
  }

  void _checkPassword() {
    setState(() {
      _isButtonDisabled = _passwordController.text.isEmpty;
    });
  }

  void _showSweetAlert(BuildContext context) {
    Alert(
      context: context,
      type: AlertType.success,
      title: "Success",
      desc: "Kata sandi berhasil dibuat",
      buttons: [],
    ).show();

    // Auto-close after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
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
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Masukkan Kata Sandi',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                obscureText: _isObscured, // Hide the password characters
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    padding: const EdgeInsetsDirectional.only(end: 12.0),
                    icon: _isObscured
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
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
                    return 'Masukkan Kata Sandi';
                  }
                  return null;
                },
                onSaved: (val) {
                  _password = val!;
                  print(_password);
                },
              ),
              const SizedBox(height: 20.0),
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
                        _showSweetAlert(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PinjamDuitHomePage()),
                        );
                      },
                child: const Text(
                  'Masuk',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
