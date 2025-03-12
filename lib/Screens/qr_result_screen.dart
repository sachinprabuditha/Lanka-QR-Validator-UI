import 'package:flutter/material.dart';
import 'package:screens/Screens/qr_final.dart';


class QRResultScreen extends StatelessWidget {
  const QRResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _buildHeader(),
          const SizedBox(height: 20),
         Expanded(
            child: _buildValidationList(),
      ),
          _buildBottomNavigation(context),
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
  
  Widget _buildValidationList() {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: [
        _buildValidationItem(
          tag: 'Tag',
          id: '58 - Country\nCode',
          value: 'Value',
          v_id: 'LK',
          length: 2,
          status: true,
        ),
        _buildValidationItem(
          tag: 'Tag',
          id: '59 - Merchant\nName',
          value: 'Value',
          v_id: 'KING WAY',
          length: 8,
          status: true,
        ),
        _buildValidationItem(
          tag: 'Tag',
          id: '60 - Merchant\nCity',
          value: 'Value',
          v_id: 'KADUWELA',
          length: 8,
          status: true,
        ),
        _buildValidationItem(
          tag: 'Tag',
          id: 'I61 - Postal\nCode',
          value: 'Value',
          v_id: '',
          length: 2,
          status: false,
          errorMessage: 'Missing',
        ),
        _buildValidationItem(
          tag: 'Tag',
          id: '62 Sub Tag 5\nReference',
          value: 'Value',
          v_id: 'SmartPay',
          length: 2,
          status: true,
        ),
      ],
    );
  }

  Widget _buildValidationItem({
    required String tag,
    required String id,
    required String value,
    required bool status,
    required int length,
    // ignore: non_constant_identifier_names
    required String v_id,
    String? errorMessage,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                tag,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),
              Text(
                id,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          SizedBox(width:25),
          Row(
            children: [
              Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: status ? Colors.green[100] : Colors.red[100],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      status ? 'VALID' : 'INVALID',
                      style: TextStyle(
                        color: status ? Colors.green[800] : Colors.red[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
              
            ],
          ),
          SizedBox(width:25),
          Column(
            children: [
              Text(
                value,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 13,
                ),
              ),
              Text(
                v_id,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 13,
                ),
              ),
            ],
          ),
          
         /* if (errorMessage != null)
            Text(
              errorMessage,
              style: TextStyle(
                color: Colors.red[700],
                fontSize: 12,
                fontStyle: FontStyle.italic,
              ),
            ),*/
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
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QRFinalScreen()),
              );
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