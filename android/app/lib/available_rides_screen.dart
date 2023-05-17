import 'package:flutter/material.dart';

class AvailableRidesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Rides'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/booked_rides');
          },
          child: Text('Booked Rides'),
        ),
      ),
    );
  }
}
