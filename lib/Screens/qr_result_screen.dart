import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class QRResultScreen extends StatefulWidget {
  const QRResultScreen({Key? key}) : super(key: key);

  @override
  _QRResultScreenState createState() => _QRResultScreenState();
}

class _QRResultScreenState extends State<QRResultScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://zerostyle.lk/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _buildHeader(),
          const SizedBox(height: 20),
          Expanded(child: _buildWebView()),
          _buildBottomNavigation(context),
          _buildBottomText(),
        ],
      ),
    );
  }

  Widget _buildWebView() {
    return WebViewWidget(controller: _controller);
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

  Widget _buildBottomNavigation(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Icon(Icons.home, size: 34, color: Colors.grey[700]),
              const SizedBox(height: 4),
            ],
          ),
          const SizedBox(width: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey.shade300),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            ),
            child: const Row(
              children: [
                SizedBox(width: 8),
                Text(
                  'Back to Scanner',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
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
