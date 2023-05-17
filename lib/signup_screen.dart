import 'package:flutter/material.dart';
import 'package:carpooling_app/home_screen.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  void _signup(BuildContext context) {
    // Perform signup logic here
    // You can access email, password, and confirm password from _emailController, _passwordController, and _confirmPasswordController respectively
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    // Perform validation or API calls for signup
    // If signup is successful, navigate to home screen
    if (password == confirmPassword) {
      // Password and Confirm Password match
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    } else {
      // Password and Confirm Password do not match
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Password and Confirm Password do not match.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF800000), // Set the app bar color here
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Text('Sign Up')),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                hintText: 'Re-enter your password',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _signup(context),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF800000), // Set the button color here
              ),
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
