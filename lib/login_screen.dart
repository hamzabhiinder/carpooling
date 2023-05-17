import 'package:flutter/material.dart';
import 'package:carpooling_app/forgot_password_screen.dart';
import 'package:carpooling_app/signup_screen.dart';
import 'package:carpooling_app/home_screen.dart';

class LoginScreen extends StatelessWidget {
  final String userType; // Define userType as a named parameter

  LoginScreen({Key? key, required this.userType}); // Constructor to receive userType

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login', textAlign: TextAlign.center), // Set textAlign to center
        centerTitle: true, // Center the title
        backgroundColor: Color(0xFF800000), // Set the background color of the app bar to maroon
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
            ),
            SizedBox(height: 8.0),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotPasswordScreen(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xFF800000),
                ),
                child: Text('Forgot Password?'),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF800000), // Set the desired color here
              ),
              child: Text('Sign In'),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignupScreen(),
                  ),
                );
              },
              style: TextButton.styleFrom(
                foregroundColor: Color(0xFF800000),
              ),
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
