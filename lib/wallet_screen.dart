import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
        centerTitle: true, // Center the title
        backgroundColor: Color(0xFF800000),
      ),
      body: Center(
        child: Text('Wallet Screen'),
      ),
    );
  }
}
