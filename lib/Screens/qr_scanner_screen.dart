import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:screens/Screens/qr_result_screen.dart';

class QRScannerScreen extends StatefulWidget {
  @override
  _QRScannerScreenState createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {
  final MobileScannerController _controller = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 80),

          // QR Scanner Container
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Container(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // LankaQR Banner
              Positioned.fill(
                child: Image.asset(
            'assets/images/index.png',
            fit: BoxFit.cover,
                ),
              ),

              // QR Scanner Area
              Positioned(
                top: 150,
                child: Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: MobileScanner(
                controller: _controller,
                onDetect: (capture) {
                  final List<Barcode> barcodes = capture.barcodes;
                  for (final barcode in barcodes) {
              final String? code = barcode.rawValue;
              if (code != null) {
                _controller.stop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QRResultScreen(),
                  ),
                );
              }
                  }
                },
              ),
            ),
                ),
              ),

              // Flash Button
              Positioned(
                bottom: 20,
                child: GestureDetector(
            onTap: () => _controller.toggleTorch(),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/flash.png',
                  height: 20,
                  width: 20,
                ),
              ),
            ),
                ),
              ),
            ],
          ),
              ),
            ),
          ),

          const SizedBox(height: 20),
          const Text("Place above square directly on the QR code"),
          const SizedBox(height: 20),
          const Text(
            "You will be redirected to the result screen\n automatically",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),

          // Navigate to QRResultScreen Button
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
          builder: (context) => QRResultScreen(),
              ),
            ),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: const TextStyle(fontSize: 14),
              shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
              ),
              shadowColor: Colors.grey.withOpacity(0.5),
              elevation: 5,
            ),
            child: const Text("Go to Result Screen"),
          ),
        ],
      ),
    );
  }
}