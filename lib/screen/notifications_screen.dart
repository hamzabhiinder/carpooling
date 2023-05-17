import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        centerTitle: true, // Center the title
        backgroundColor: Color(0xFF800000),
      ),
      body: Center(
        child: Text('Notification Screen'),
      ),
    );
  }
}
