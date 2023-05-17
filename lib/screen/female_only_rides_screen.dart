import 'package:flutter/material.dart';
import 'female_available_rides_screen.dart';
import 'female_booked_ride_screen.dart';
import 'female_offer_ride_screen.dart';

class FemaleOnlyRidesScreen extends StatelessWidget {
  const FemaleOnlyRidesScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Female Only Rides', textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: const Color(0xFF800000), // Set the background color of the app bar to maroon
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        children: [
          InkWell(
            onTap: () {
              navigateToFemaleAvailableRidesScreen(context, 'Female Available Rides');
            },
            child: const Card(
              color: Color(0xFF800000), // Set the background color of the Card
              child: Center(
                child: Text(
                  'Female Available Rides',
                  style: TextStyle(color: Colors.white, // Set the text color to white
                  fontSize: 15, // Set the font size to 18
                  fontWeight: FontWeight.bold, // Set the font weight to bold
                  ),
                  ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              navigateToFemaleOfferRidesScreen(context, 'Female Offer Rides');
            },
            child: const Card(
              color: Color(0xFF800000), // Set the background color of the Card
              child: Center(
                child: Text(
                  'Female Offer Rides',
                  style: TextStyle(color: Colors.white, // Set the text color to white
                    fontSize: 15, // Set the font size to 18
                    fontWeight: FontWeight.bold, // Set the font weight to bold
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              navigateToFemaleBookedRidesScreen(context, 'Female Booked Rides');
            },
            child: const Card(
              color: Color(0xFF800000), // Set the background color of the Card
              child: Center(
                child: Text(
                  'Female Booked Rides',
                  style: TextStyle(color: Colors.white, // Set the text color to white
                    fontSize: 15, // Set the font size to 18
                    fontWeight: FontWeight.bold, // Set the font weight to bold
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void navigateToFemaleAvailableRidesScreen(BuildContext context, String userType) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FemaleAvailableRidesScreen(),
      ),
    );
  }
}
void navigateToFemaleOfferRidesScreen(BuildContext context, String userType) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => FemaleOfferRideScreen(),
    ),
  );
}
void navigateToFemaleBookedRidesScreen(BuildContext context, String userType) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => FemaleBookedRideScreen(),
    ),
  );
}