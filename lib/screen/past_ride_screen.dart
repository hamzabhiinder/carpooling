import 'package:flutter/material.dart';


class PastRidesScreen extends StatelessWidget {
  const PastRidesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Past Rides'),
        centerTitle: true, // Center the title
        backgroundColor: const Color(0xFF800000),
      ),
      body: ListView.builder(
        itemCount: availableRides.length,
        itemBuilder: (context, index) {
          // Get available ride data for the current index
          final ride = availableRides[index];

          return Card(
            child: ListTile(
              onTap: () {
                // Navigate to ride detail screen
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => RideDetailScreen(ride: ride),
                //   ),
                // );
              },
              leading: CircleAvatar(
                backgroundImage: NetworkImage(ride.profileImageUrl),
              ),
              title: Text(ride.name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.departure_board), // Icon for "Departure"
                      const SizedBox(width: 4), // Add spacing
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ride.routeDeparture, style: const TextStyle(fontWeight: FontWeight.bold)),
                          Text('${ride.departureDate}, ${ride.departureTime}', style: const TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_pin), // Icon for "Arrival"
                      const SizedBox(width: 4), // Add spacing
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ride.routeArrival, style: const TextStyle(fontWeight: FontWeight.bold)),
                          Text('${ride.arrivalDate}, ${ride.arrivalTime}', style: const TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Fare Paid: Rs 200',
                    style: TextStyle(fontSize: 12),
                  ),
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
final List<PastRideData> availableRides = [
  PastRideData(
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
      carModel: '2019', carRegistrationNumber: 'BBP-222', carColor: 'Black', preferences: 'No Smoking', fare: 'Rs 200'
  ),
  PastRideData(
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
      carModel: '2018', carRegistrationNumber: 'AAB-111', carColor: 'Blue', preferences: 'No Smoking' , fare: 'Rs 200'// Example car model
  ),
  PastRideData(
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
    carModel: '2018', carRegistrationNumber: 'AAA-123', carColor: 'White', preferences: 'No Smoking', fare: 'Rs 200', // Example car model
  ),
];

class PastRideData {
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
  final String preferences;
  final String fare;

  PastRideData({
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
    required this.preferences,
    required this.fare,
  });
}