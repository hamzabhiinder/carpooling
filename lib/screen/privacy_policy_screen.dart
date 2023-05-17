import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy Screen'),
        centerTitle: true, // Center the title
        backgroundColor: Color(0xFF800000),
      ),
      body: Center(
        child: Text('Privacy Policy Screen'),
      ),
    );
  }
}
