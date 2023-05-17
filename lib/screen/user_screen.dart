import 'package:carpooling_app/screen/home_screen.dart';
import 'package:flutter/material.dart';


class UserSelectionScreen extends StatelessWidget {
  const UserSelectionScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Selection', textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: const Color(0xFF800000), // Set the background color of the app bar to maroon
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        children: [
          InkWell(
            onTap: () {
              navigateToLoginScreen(context, 'Rider');
            },
            child: Card(
              child: Center(
                child: Text('Rider'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              navigateToLoginScreen(context, 'Carpooler');
            },
            child: Card(
              child: Center(
                child: Text('Carpooler'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void navigateToLoginScreen(BuildContext context, String userType) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }
}
