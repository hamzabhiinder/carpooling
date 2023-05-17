import 'package:flutter/material.dart';
import 'available_rides_screen.dart';

class RideDetailScreen extends StatelessWidget {
  final AvailableRideData ride;

  RideDetailScreen({required this.ride});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ride Details'),
        centerTitle: true, // Center the title
        backgroundColor: Color(0xFF800000),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(ride.profileImageUrl),
              radius: 60,
            ),
            SizedBox(height: 16),
            Text(
              ride.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.directions_car),
                SizedBox(width: 8),
                Text(
                  'Car: ${ride.carName}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.car_rental),
                SizedBox(width: 8),
                Text(
                  'Model: ${ride.carModel}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.confirmation_number),
                SizedBox(width: 8),
                Text(
                  'Registration No: ${ride.carRegistrationNumber}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.color_lens), // Added car color icon
                SizedBox(width: 8),
                Text(
                  'Color: ${ride.carColor}', // Display car color
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 8),
                Text(
                  '${ride.routeDeparture} to ',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '${ride.routeArrival}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.date_range),
                SizedBox(width: 8),
                Text(
                  'Date: ${ride.pickupDate}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.access_time),
                SizedBox(width: 8),
                Text(
                  'Time: ${ride.pickupTime}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.event_seat),
                SizedBox(width: 8),
                Text(
                  'Seats: ${ride.availableSeats}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.integration_instructions),
                SizedBox(width: 8),
                Text(
                  'Preferences: ${ride.preferences}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.star),
                SizedBox(width: 8),
                Text(
                  'Rating: ${ride.rating}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
