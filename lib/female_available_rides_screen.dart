import 'package:flutter/material.dart';


class FemaleAvailableRidesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Female Available Rides'),
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
                        'Book Ride',
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
    carModel: '2019',
  ),
  AvailableRideData(
    profileImageUrl: 'https://example.com/profile2.jpg',
    name: 'Virda Akhtar',
    routeDeparture: 'PECHS', // Example departure
    departureDate: '24, Apr 23', // Example departure date
    departureTime: '9:45 AM', // Example departure time
    routeArrival: 'IoBM', // Example arrival
    arrivalDate: '24, Apr 23', // Example arrival date
    arrivalTime: '10:45 AM', // Example arrival time
    pickupDate: '2023-04-25', // Example pickup date
    pickupTime: '10:00 AM', // Example pickup time
    availableSeats: 2, // Example available seats
    rating: 3.8,
    carName: 'Honda Civic', // Example car name
    carModel: '2018', // Example car model
  ),
  AvailableRideData(
    profileImageUrl: 'https://example.com/profile2.jpg',
    name: 'Yusra Waheed',
    routeDeparture: 'IoBM', // Example departure
    departureDate: '24, Apr 23', // Example departure date
    departureTime: '9:45 AM', // Example departure time
    routeArrival: 'DHA', // Example arrival
    arrivalDate: '24, Apr 23', // Example arrival date
    arrivalTime: '10:45 AM', // Example arrival time
    pickupDate: '2023-04-25', // Example pickup date
    pickupTime: '10:00 AM', // Example pickup time
    availableSeats: 2, // Example available seats
    rating: 3.8,
    carName: 'Honda Civic', // Example car name
    carModel: '2018', // Example car model
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
  });
}