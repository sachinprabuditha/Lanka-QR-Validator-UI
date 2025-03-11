import 'package:flutter/material.dart';

class ValidatorScreen extends StatelessWidget {
  const ValidatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Using the stack
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/LankaQRValidator.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                decoration: const BoxDecoration(
                  color: Color(0xFF1A1D56),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/3d1660a8ac9fe24b83bd4dfcb51dc9ae.png',
                      width: 140,
                      height: 140,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'QR Code Validator',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Use this application to validate any LankaQR codes \n easily, fast, and accurately.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Power Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          padding: const EdgeInsets.all(12),
                          backgroundColor: Colors.white,
                          shadowColor: Colors.black26,
                          elevation: 5,
                        ),
                        onPressed: () {
                          // Handle power button click
                        },
                        child: Image.asset(
                          'assets/images/power-off.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ],
                  ),
                ),

              const SizedBox(height: 20),

              GestureDetector(
                onTap: () {
                  // Handle scan QR code click
                },
                child: Container(
                  width: 250,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade300),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/ab3411108a2ae083a3724fdd12cfd361.png',
                        width: 80,
                        height: 80,
                      ),
                      RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(text: 'SCAN ',
                  style: TextStyle(
                      color: Colors.black)),
              TextSpan(text: 'QR',
                  style: TextStyle(
                      color: Colors.red)),
                       TextSpan(text: ' CODE',
                  style: TextStyle(
                      color: Colors.black)),
            ],
          ),
        ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 10),
              const Text(
                'Scan QR Code from Gallery',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Once upload the QR to the App, you will be \n redirect to the result screen',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Handle QR code
                    },
                    child: Container(
                      width: 250,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade300),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: const Column(
                        children: [
                          SizedBox(height: 5),
                          Text(
                            'Choose QR Code',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 131, 131, 131),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 60,
                    height: 60,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey.shade300),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/upload.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Footer Note
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'This application is developed by DirectPay for developers and merchants. Version 1.0.8',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}