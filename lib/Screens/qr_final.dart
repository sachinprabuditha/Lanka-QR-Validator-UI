import 'package:flutter/material.dart';


class QRFinalScreen extends StatelessWidget {
  const QRFinalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _buildHeader(),
          const SizedBox(height: 20),
         Expanded(
            child: _buildBodyDetails(),
      ),
          _buildBottomNavigation(),
          _buildBottomText(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: const Color(0xFF1A1D56),
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
      child: Column(
        children: [
          Image.asset(
            'assets/images/3d1660a8ac9fe24b83bd4dfcb51dc9ae.png',
            height: 200,
          ),
          const Text(
            'QR Code Validator',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBodyDetails() {
    return Container(
      child: Column(
        children: [
          const Text('Scan Result',style: TextStyle(color: Colors.black, fontSize: 20),
                ),
          const SizedBox(height: 20),
          Image.asset(
                      'assets/images/29-cross-outline.png',
                      width: 100,
                      height: 100,
                    ),
          const SizedBox(height: 20),
          const Text('Validation Failed',style: TextStyle(color: const Color(0xFFD84200), fontSize: 20),
                ),
          const SizedBox(height: 20),
          const Text('No Data Found.',style: TextStyle(color: Colors.black, fontSize: 14),
                ),
        ],
      ),
    );

  }

  Widget _buildBottomNavigation() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(width: 20),
            GestureDetector(
                    onTap: () {
                      // QR code functionality
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
                            'Back to Scanner',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          const SizedBox(height: 30),
          Column(
            children: [
              Icon(Icons.home, size: 34, color: Colors.grey[700]),
              const SizedBox(height: 30),
            ],
          ),
        ],
      ),
    );
  }
  
  Widget _buildBottomText() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Text(
        'This application is developed by DirectPay for developers and merchants. Version 1.0.8',
        style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
        textAlign: TextAlign.center,
      ),
    );
  }
}