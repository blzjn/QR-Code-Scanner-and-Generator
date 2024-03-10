import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:qrcode_scanner_generator/generate_qr_code.dart';
import 'package:qrcode_scanner_generator/scan_qr_code.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner and Generator'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ScanQRCode()));
                  });
                },
                child: Text('Scan QR Code')),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => GenerateQRCode()));
                  });
                },
                child: Text('Generate QR Code'))
          ],
        ),
      ),
    );
  }
}
