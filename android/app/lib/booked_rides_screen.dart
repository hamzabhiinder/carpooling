import 'package:flutter/material.dart';

class BookedRidesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booked Rides'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/offer_ride');
          },
          child: Text('Offer Ride'),
        ),
      ),
    );
  }
}
