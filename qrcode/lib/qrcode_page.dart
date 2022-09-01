import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class QrCodePage extends StatefulWidget {
  const QrCodePage({Key? key}) : super(key: key);

  @override
  State<QrCodePage> createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  String ticket = '';

  readQRCode() async {
    String code = await FlutterBarcodeScanner.scanBarcode(
      '#FFFFFF',
      'Cancelar',
      false,
      ScanMode.QR,
    );
    setState(() => ticket = code != '-1' ? code : 'Não validado');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (ticket != '')
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text(ticket),
              ),
            ElevatedButton.icon(
              onPressed: readQRCode,
              icon: const Icon(
                Icons.qr_code,
              ),
              label: const Text('Validar'),
            ),
          ],
        ),
      ),
    );
  }
}
