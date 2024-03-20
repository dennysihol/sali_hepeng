import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sali_hepeng/pilih_pembayaran.dart';

/// This is the basic usage of Pinput
/// For more examples check out the demo directory
class PinEntryScreen extends StatefulWidget {
  const PinEntryScreen({super.key});

  @override
  State<PinEntryScreen> createState() => _PinEntryScreenState();
}

class _PinEntryScreenState extends State<PinEntryScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  void goToPembayaranPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PilihPembayaran()),
    );
  }

  void _showSweetAlert(BuildContext context) {
    Alert(
      context: context,
      type: AlertType.success,
      title: "",
      desc: "Permintaan Sedang diproses",
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
    const borderColor = Color.fromRGBO(133, 125, 125, 1);

    final defaultPinTheme = PinTheme(
      width: 30,
      height: 30,
      textStyle: const TextStyle(
        fontSize: 15,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: borderColor),
      ),
    );

    /// Optionally you can use form to validate the Pinput
    return Scaffold(
      body: FractionallySizedBox(
        widthFactor: 1,
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Masukkan PIN',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Directionality(
                  // Specify direction if desired
                  textDirection: TextDirection.ltr,
                  child: Pinput(
                    obscureText: true,
                    length: 6,
                    controller: pinController,
                    focusNode: focusNode,
                    androidSmsAutofillMethod:
                        AndroidSmsAutofillMethod.smsUserConsentApi,
                    listenForMultipleSmsOnAndroid: true,
                    defaultPinTheme: defaultPinTheme,
                    separatorBuilder: (index) => const SizedBox(width: 9),
                    validator: (value) {
                      return value == '000000' ? null : 'Pin is incorrect';
                    },
                    // onClipboardFound: (value) {
                    //   debugPrint('onClipboardFound: $value');
                    //   pinController.setText(value);
                    // },
                    hapticFeedbackType: HapticFeedbackType.lightImpact,
                    onCompleted: (pin) {
                      if (pin == '000000') {
                        _showSweetAlert(context);
                        goToPembayaranPage();
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
                    // focusedPinTheme: defaultPinTheme.copyWith(
                    //   decoration: defaultPinTheme.decoration!.copyWith(
                    //     borderRadius: BorderRadius.circular(8),
                    //     border: Border.all(color: focusedBorderColor),
                    //   ),
                    // ),
                    submittedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        color: Color.fromARGB(255, 56, 55, 55),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: focusedBorderColor,
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignInside),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
