import 'package:flutter/material.dart';
import 'package:sali_hepeng/theme/theme.dart';

class FormProfile extends StatefulWidget{
  const FormProfile({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FormProfileState();
  }
}

class _FormProfileState extends State<FormProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("Informasi Pribadi"),
          centerTitle: true,
          titleTextStyle: myTheme.appBarTheme.titleTextStyle,),
          body: Text('ini nanti tampilan form untuk isi data pribadi')
    );
  }
}