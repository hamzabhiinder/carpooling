import 'package:carpooling_app/splash_screen.dart';
import 'package:carpooling_app/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:carpooling_app/login_screen.dart';
import 'package:carpooling_app/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IoBMaxRide',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     
      initialRoute: '/splash',
      routes: {
        '/login': (context) => LoginScreen(
              userType: '',
            ),
        '/home': (context) => HomeScreen(),
        '/splash': (context) => SplashScreen(),
        '/user': (context) => UserSelectionScreen(),
      },
    );
  }
}
