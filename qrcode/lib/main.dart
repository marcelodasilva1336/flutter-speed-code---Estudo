import 'package:flutter/material.dart';
import 'package:qrcode/qrcode_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qr Code',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QrCodePage(),
    );
  }
}
