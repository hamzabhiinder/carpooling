import 'package:flutter/material.dart';
import 'ride_detail_screen.dart'; // Import the ride detail screen

class FemaleBookedRideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Female Booked Rides'),
        centerTitle: true, // Center the title
        backgroundColor: Color(0xFF800000),
      ),
      body: ListView.builder(
        itemCount: availableRides.length,
        itemBuilder: (context, index) {
          // Get available ride data for the current index
          final ride = availableRides[index];

          return Card(
            child: ListTile(
              // onTap: () {
              //   // Navigate to ride detail screen
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => RideDetailScreen(book: book),
              //     ),
              //   );
              // },
              leading: CircleAvatar(
                backgroundImage: NetworkImage(ride.profileImageUrl),
              ),
              title: Text(ride.name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.departure_board), // Icon for "Departure"
                      SizedBox(width: 4), // Add spacing
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ride.routeDeparture, style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('${ride.departureDate}, ${ride.departureTime}', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_pin), // Icon for "Arrival"
                      SizedBox(width: 4), // Add spacing
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ride.routeArrival, style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('${ride.arrivalDate}, ${ride.arrivalTime}', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Available Seats: ${availableRides[index].availableSeats}',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    width: 100, // Set the desired width of the ElevatedButton
                    height: 30, // Set the desired height of the ElevatedButton
                    child: ElevatedButton(
                      onPressed: () {
                        // Add logic for offering a ride here
                      },
                      child: Text(
                        'Cancel Ride',
                        style: TextStyle(fontSize: 10),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF800000),
                        minimumSize: Size(50, 30),
                        padding: EdgeInsets.symmetric(horizontal: 6),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// Example data for available rides
final List<AvailableRideData> availableRides = [
  AvailableRideData(
    profileImageUrl: 'https://example.com/profile1.jpg',
    name: 'Suhah Amir',
    routeDeparture: 'North Karachi', // Example departure
    departureDate: '24, Apr 23', // Example departure date
    departureTime: '10:23 AM', // Example departure time
    routeArrival: 'IoBM', // Example arrival
    arrivalDate: '24, Apr 23', // Example arrival date
    arrivalTime: '11:23 AM', // Example arrival time
    pickupDate: '2023-04-25', // Example pickup date
    pickupTime: '10:30 AM', // Example pickup time
    availableSeats: 3, // Example available seats
    rating: 4.5,
    carName: 'Corolla', // Example car name
    carModel: '2019', carRegistrationNumber: 'BBP-222', carColor: 'Black',
  ),
];

class AvailableRideData {
  final String profileImageUrl;
  final String name;
  final String routeDeparture;
  final String departureDate;
  final String departureTime;
  final String routeArrival;
  final String arrivalDate;
  final String arrivalTime;
  final String pickupDate;
  final String pickupTime;
  final int availableSeats;
  final double rating;
  final String carName;
  final String carModel;
  final String carRegistrationNumber;
  final String carColor;

  AvailableRideData({
    required this.profileImageUrl,
    required this.name,
    required this.routeDeparture,
    required this.departureDate,
    required this.departureTime,
    required this.routeArrival,
    required this.arrivalDate,
    required this.arrivalTime,
    required this.pickupDate,
    required this.pickupTime,
    required this.availableSeats,
    required this.rating,
    required this.carName,
    required this.carModel,
    required this.carRegistrationNumber,
    required this.carColor,
  });
}