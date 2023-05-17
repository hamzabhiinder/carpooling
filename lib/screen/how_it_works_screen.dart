import 'package:flutter/material.dart';

class HowItsWorksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How Its Works'),
        centerTitle: true, // Center the title
        backgroundColor: Color(0xFF800000),
      ),
      body: Center(
        child: Text('How Its Works Screen'),
      ),
    );
  }
}
