import 'package:flutter/material.dart';
import 'package:screens/Screens/qr_result_screen.dart';

class QRScannerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
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
              Positioned.fill(
                child: Image.asset(
            'assets/images/index.png',
            fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 150,
                child: Image.asset(
            'assets/images/pngimg.com - qr_code_PNG33.png',
            height: 250,
            width: 250,
                ),
              ),
              Positioned(
                bottom: 20,
                child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QRResultScreen(),
                ),
              );
            },
            child: GestureDetector(
              onTap: () {
                  // Handle scan QR code click
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QRResultScreen()),
              );
              },
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
              )
                ),
                )
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
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black, backgroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: TextStyle(fontSize: 14),
              shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
              ),
              shadowColor: Colors.grey.withOpacity(0.5),
              elevation: 5,
            ),
            child: const Text("Back to Dashboard"),
          ),
        ],
        
     ),
);
  }
  }