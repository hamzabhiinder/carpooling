
import 'package:carpooling_app/screen/female_only_rides_screen.dart';
import 'package:carpooling_app/screen/offer_ride_screen.dart';
import 'package:carpooling_app/screen/past_ride_screen.dart';
import 'package:carpooling_app/screen/privacy_policy_screen.dart';
import 'package:carpooling_app/screen/profile_screen.dart';
import 'package:flutter/material.dart';

import 'available_rides_screen.dart';
import 'booked_ride_screen.dart';
import 'how_it_works_screen.dart';
import 'notifications_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IoBMaxRide'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/profile_photo.jpg'), // Replace with actual profile photo
                          radius: 50.0,
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'User',
                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'user@example.com',
                          style: TextStyle(fontSize: 14.0),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.home),
                          title: Text('Home'),
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/home');
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Profile'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileScreen(),
                              ),
                            );
                          },
                        ),
                        // ListTile(
                        //   leading: Icon(Icons.account_balance_wallet),
                        //   title: Text('Wallet'),
                        //   onTap: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => WalletScreen(),
                        //       ),
                        //     );
                        //   },
                        // ),
                        ListTile(
                          leading: Icon(Icons.history),
                          title: Text('Past Rides'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PastRidesScreen(),
                              ),
                            );
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.help),
                          title: Text('How it works'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HowItsWorksScreen(),
                              ),
                            );
                          },
                        ),
                        // ListTile(
                        //   leading: Icon(Icons.notifications),
                        //   title: Text('Notifications'),
                        //   onTap: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => NotificationScreen(),
                        //       ),
                        //     );
                        //   },
                        // ),
                        ListTile(
                          leading: Icon(Icons.security),
                          title: Text('Privacy Policy'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PrivacyPolicyScreen(),
                              ),
                            );
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.logout),
                          title: Text('Logout'),
                          onTap: () {
                          },
                        ),
                        SizedBox(height: 16.0),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     // Navigator.push(
                        //     //   context,
                        //     //   MaterialPageRoute(
                        //     //     builder: (context) => DriversHomeScreen(),
                        //     //   ),
                        //     // );
                        //   },
                        //   style: ElevatedButton.styleFrom(
                        //     primary: Color(0xFF800000),
                        //     onPrimary: Colors.white,
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(8.0),
                        //     ),
                        //   ),
                        //   child: Text('Driver Mode'),
                        // ),
                      ],
                    ),
                  )
                );
              },
            );
          },
        ),
        actions: [
          // IconButton(
          //   icon: Icon(Icons.search),
          //   onPressed: () {
          //     // Add your search action here
          //   },
          // ),
        ],
        backgroundColor: Color(0xFF800000), // Set background color to 0xFF800000
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        shrinkWrap: true,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AvailableRidesScreen(),
                ),
              );
            },
            child: Card(
              color: Color(0xFF800000), // Set the color of the grid item
              child: Center(
                child: Text(
                  'Available Rides',
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookedRideScreen(),
                ),
              );
            },
            child: Card(
              color: Color(0xFF800000), // Set the color of the grid item
              child: Center(
                child: Text(
                  'Booked Rides',
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OfferRideScreen(),
                ),
              );
            },
            child: Card(
              color: Color(0xFF800000), // Set the color of the grid item
              child: Center(
                child: Text(
                  'Offer Ride',
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FemaleOnlyRidesScreen(),
                ),
              );
            },
            child: Card(
              color: Color(0xFF800000), // Set the color of the grid item
              child: Center(
                child: Text(
                  'Female Only Rides',
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
}
