import 'package:carpooling_app/screen/auth_screens/Verify_email.dart';
import 'package:carpooling_app/screen/auth_screens/forgot_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:carpooling_app/screen/auth_screens/signup_screen.dart';
import 'package:carpooling_app/screen/home_screen.dart';

import '../../services/auth1/auth_exception1.dart';
import '../../services/auth1/auth_sevices1.dart';
import '../../utilities/dialog/error_dialog.dart';

class LoginScreen extends StatefulWidget {
  final String userType; // Define userType as a named parameter

  LoginScreen({Key? key, required this.userType});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Constructor to receive userType
  late final TextEditingController _email;

  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login',
            textAlign: TextAlign.center), // Set textAlign to center
        centerTitle: true, // Center the title
        backgroundColor: Color(
            0xFF800000), // Set the background color of the app bar to maroon
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _email,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _password,
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
                onPressed: () async {
                  //////////////////////
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
              onPressed: () async {
                final email = _email.text;
                final password = _password.text;
                try {
                  // await FirebaseAuth.instance
                  //     .signInWithEmailAndPassword(
                  //         email: email, password: password);

                  await AuthService.firebase().logIn(
                    email: email,
                    password: password,
                  );

                  final user = AuthService.firebase().currentUser;
                  if (user?.isEmailVerified ?? false) {
                    //user verified
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (_) => HomeScreen()),
                        (route) => false);
                  } else {
                    //if user not verified
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (_) => VerifyEmail()),
                      (route) => false,
                    );
                  }
                } on UserNotFoundAuthException catch (e) {
                  await ShowErrorDialog(
                    context,
                    "User Not Found",
                  );
                } on WrongPasswordAuthException {
                  await ShowErrorDialog(
                    context,
                    "wrong credentials",
                  );
                } on GenericAuthException {
                  await ShowErrorDialog(
                    context,
                    "Authentication error",
                  );
                }
                /////////////////////////////////////////////
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color(0xFF800000), // Set the desired color here
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
