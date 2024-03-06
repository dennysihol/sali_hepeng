import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sali_hepeng/password_page.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sali_hepeng/theme/theme.dart';
import 'package:sali_hepeng/verifikasi_page.dart';

/// This is the basic usage of Pinput
/// For more examples check out the demo directory
class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  void goToPasswordPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PasswordSetupPage()),
    );
  }

  void _showSweetAlert(BuildContext context) {
    Alert(
      context: context,
      type: AlertType.success,
      title: "Success",
      desc: "Kode Verifikasi Berhasil Dimasukan",
      buttons: [],
    ).show();

    // Auto-close after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context, rootNavigator: true).pop(); // Close the dialog
    });
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(93, 93, 93, 1);
    const fillColor = Color.fromRGBO(0, 0, 0, 0);
    const borderColor = Color.fromRGBO(133, 125, 125, 1);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: borderColor),
      ),
    );

    /// Optionally you can use form to validate the Pinput
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Daftar"),
        centerTitle: true,
        titleTextStyle: myTheme.appBarTheme.titleTextStyle,
      ),
      body: FractionallySizedBox(
        widthFactor: 1,
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Verifikasi Kode OTP',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Kode Verifikasi WhatsApp telah di kirim ke',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '+62 812 **** **79',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Directionality(
                  // Specify direction if desired
                  textDirection: TextDirection.ltr,
                  child: Pinput(
                    length: 6,
                    controller: pinController,
                    focusNode: focusNode,
                    androidSmsAutofillMethod:
                        AndroidSmsAutofillMethod.smsUserConsentApi,
                    listenForMultipleSmsOnAndroid: true,
                    defaultPinTheme: defaultPinTheme,
                    separatorBuilder: (index) => const SizedBox(width: 9),
                    validator: (value) {
                      return value == '222222' ? null : 'Pin is incorrect';
                    },
                    // onClipboardFound: (value) {
                    //   debugPrint('onClipboardFound: $value');
                    //   pinController.setText(value);
                    // },
                    hapticFeedbackType: HapticFeedbackType.lightImpact,
                    onCompleted: (pin) {
                      if (pin == '222222') {
                        _showSweetAlert(context);
                        goToPasswordPage();
                      } else {
                        pinController.clear();
                        focusNode.requestFocus();
                      }
                    },
                    onChanged: (value) {
                      // debugPrint('onChanged: $value');
                    },
                    cursor: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 9),
                          width: 22,
                          height: 1,
                          color: focusedBorderColor,
                        ),
                      ],
                    ),
                    focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: focusedBorderColor),
                      ),
                    ),
                    submittedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        color: fillColor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: focusedBorderColor),
                      ),
                    ),
                    errorPinTheme: defaultPinTheme.copyBorderWith(
                      border: Border.all(color: Colors.redAccent),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Tidak menerima kode OTP?',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 14),
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {
                    //     focusNode.unfocus();
                    //     formKey.currentState!.validate();
                    //   },
                    //   child: const Text(
                    //     'Validate',
                    //     style: TextStyle(color: Colors.black),
                    //   ),
                    // ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerifikasiPage()),
                        );
                      },
                      child: Text(
                        'Kirim ulang kode OTP',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Kode OTP akan dikirimkan kembali secara otomatis\n'
                        'jika waktu berakhir 01:59',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 14),
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {
                    //     focusNode.unfocus();
                    //     formKey.currentState!.validate();
                    //   },
                    //   child: const Text(
                    //     'Validate',
                    //     style: TextStyle(color: Colors.black),
                    //   ),
                    // ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
