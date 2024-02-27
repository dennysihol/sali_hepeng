import 'package:flutter/material.dart';

class PasswordSetupPage extends StatefulWidget {
  @override
  _PasswordSetupPageState createState() => _PasswordSetupPageState();
}

class _PasswordSetupPageState extends State<PasswordSetupPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();

  String _password = "";
  String _confirmPassword = "";
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Daftar"),
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
                'Buat Kata Sandi',
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
                    return 'Please enter a password';
                  }
                  return null;
                },
                onSaved: (val) {
                  _password = val!;
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                controller: _passwordController,
                obscureText: true, // Hide the password characters
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
                  labelText: 'Ketik ulang kata sandi',
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please re-enter password';
                  } else if (value != _password) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
                onSaved: (val) {
                  _confirmPassword = val!;
                  print(_confirmPassword);
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
                    },
                child: const Text(
                  'Selanjutnya',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Ketentuan Buat Kata Sandi',
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 10.0),
              const Text(
                '- Panjangnya minimal 12 karakter',
                style: TextStyle(fontSize: 12.0),
              ),
              const Text(
                '- Menggunakan huruf besar dan kecil angka dan simbol khusus',
                style: TextStyle(fontSize: 12.0),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
